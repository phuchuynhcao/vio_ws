#include <iostream>
#include <fstream>
#include <string>
#include <cstdio>
#include <unistd.h>

#include <ros/ros.h>
#include <rosbag/bag.h>

#include <devices/SliderMsg.h>
#include <devices/SliderSetting.h>
#include <serial/serial.h>
#include <slider/SliderDriver.hpp>
#include <std_msgs/Float64MultiArray.h>

using namespace std;

namespace slider_ns
{
  
SliderDriver::SliderDriver(ros::NodeHandle in_nh, string portname):
  m_nh(in_nh),
  m_portname(portname),
  m_triggermode(triggermode_t::command),
  m_deviceport(deviceport_t::Port1)
{
  cout << "in slider driver" << endl;
}

SliderDriver::~SliderDriver()
{
}

void SliderDriver::run()
{
  cout << "m_portname: " << m_portname << endl;
  /* Configure serial port */  
  m_serial.setPort(m_portname);
  m_serial.setBaudrate(921600);
  //m_serial.setParity(serial::parity_t::parity_none);
  //m_serial.setStopbits(serial::stopbits_t::stopbits_one);
  //m_serial.setBytesize(serial::bytesize_t::eightbits);
  serial::Timeout timeout1(serial::Timeout::simpleTimeout(1000));
  m_serial.setTimeout(timeout1);
  m_serial.open();

  if(!m_serial.isOpen())
  {
    cout << "Can not open serial port." << endl;
    return;
  }
  else
  {
    cout << "Openned Serial port" << endl;
  }

  /* Change baudrate */
  // setBaudRate(deviceport_t::Port1, 115200);
  // m_serial.close();
  // ros::Duration(0.1).sleep(); // sleep for 0.1 sec

  // m_serial.setBaudrate(115200);
  // m_serial.open();
  // ros::Duration(0.1).sleep(); // sleep for 0.1 sec

  /* Stop motion of slider (if any) */
  stopMotion();
  delay_ms(5);

  /* Stop device from auto send current position (if any) */
  setTrigger(deviceport_t::Port1, triggermode_t::command, 0);
  delay_ms(5);

  /* Reset encoder position of slider */
  resetEncoder();
  delay_ms(5);

  /* Init new motion */
  setWave(waveform_t::sine, 0.4, 600, 0);
  delay_ms(5);

  /* Set PID param */
  m_slidersetting.P_gain = 0.6;
  m_slidersetting.I_gain = 0.02;
  m_slidersetting.D_gain = 0.01;
  setPIDParam(m_slidersetting.P_gain, m_slidersetting.I_gain, m_slidersetting.D_gain);
  delay_ms(5);

  /* Custom wave points */
  // clearCustomWavePoints();
  // usleep(100000);
  // addCustomWavePoint(5, 0);
  // usleep(100000);
  // addCustomWavePoint(10.5,100);
  // usleep(100000);
  // addCustomWavePoint(15.21,300);
  // usleep(100000);
  // addCustomWavePoint(20.32,200);
  // usleep(100000);
  // addCustomWavePoint(31.52,400);
  // usleep(100000);

  /* Init publisher, subcriber, loop rate */
  double curPos, setPos;
  int count=0;
  ros::Publisher rospub = m_nh.advertise<devices::SliderMsg>("slider",1000);
  ros::Subscriber rossub = m_nh.subscribe("slider_setting", 1000, &SliderDriver::slider_setting_callback, this);
  //ros::Rate loop_rate(100); // loop rate frequency [Hz]

  /* Wait for other nodes to ready before start motion */
  //delay_ms(100);

  /* Set trigger mode to external trigger (must do this at very end of the init) */
  setTrigger(deviceport_t::Port1, triggermode_t::external_interrupt, 0);
  delay_ms(5);
  // delay_ms(5000);

  /* Start Motion */
  // startMotion(motioncontrol_t::PID, 0);

  /* Get position loop */
  int loop_count=0;
  while(ros::ok())
  {
    getPosition(&curPos, &setPos);
    if ((loop_count % 100) == 0)
    {
    	cout << "Slider: " << loop_count << " " << curPos << ", " << setPos << endl; 
    }

    m_slider_msg.current_position = curPos/1000; // unit: m
    m_slider_msg.set_position = setPos/1000;  // unit: m
    m_slider_msg.header.stamp = ros::Time::now();

    /* Start Motion after 20 second standing still */
    if (loop_count == 2100)
    {
    	//startMotion(motioncontrol_t::PID, 0);
    }

    rospub.publish(m_slider_msg);
    
    loop_count++;
    //ros::spinOnce();
    //loop_rate.sleep();
  }
  
  m_serial.close();
}

void SliderDriver::slider_setting_callback(const devices::SliderSetting::ConstPtr &newsetting)
{
  if ( (newsetting->P_gain != m_slidersetting.P_gain) | 
       (newsetting->I_gain != m_slidersetting.I_gain) |
        (newsetting->D_gain != m_slidersetting.D_gain) )
  {
      if (setPIDParam(newsetting->P_gain, newsetting->I_gain, newsetting->D_gain))
      {
        m_slidersetting.P_gain = newsetting->P_gain;
        m_slidersetting.I_gain = newsetting->I_gain;
        m_slidersetting.D_gain = newsetting->D_gain;
      }
      delay_ms(5);
  }
}

bool SliderDriver::setWave(waveform_t waveform, double frequency, double amplitude, double bias)
{
  send_serial("WAVE " + to_string(waveform));
  if (checkACK() != CMD_OK) return false;

  send_serial("FREQ " + to_string( int(frequency*100) )); // unit 0.01 Hz
  if (checkACK() != CMD_OK) return false;

  send_serial("AMPL " + to_string( int(amplitude*100) )); // unit 0.01 mm
  if (checkACK() != CMD_OK) return false;

  send_serial("BIAS " + to_string( int(bias*100) ));  // unit 0.01 mm
  if (checkACK() != CMD_OK) return false;

  return true;
}

bool SliderDriver::setTrigger(deviceport_t devport, triggermode_t trigmode, double trigfrequency)
{
  if (trigmode == triggermode_t::auto_frequency)
  {
    send_serial("TFR" + to_string(devport) + " "
                + to_string( int(trigfrequency*10))); // unit 0.1 Hz
    if (checkACK() != CMD_OK) return false;
  }

  send_serial("TRIG " + to_string(devport) + to_string(trigmode) );  
  if (checkACK() != CMD_OK) return false;
  m_triggermode = trigmode;

  return true;
}

bool SliderDriver::setBaudRate(deviceport_t devport, int baudrate)
{
  send_serial("BDR" + to_string(devport) + " "
              + to_string(baudrate));
  if (checkACK() != CMD_OK) return false;

  return true;
}

bool SliderDriver::setPIDParam(double Kp, double Ki, double Kd)
{
  if ( Kp >= 0 )
  {
    send_serial("SETP " + to_string( int(Kp*1000) )); // unit 0.001
    if (checkACK() != CMD_OK) return false;
  }

  if ( Ki >= 0 )
  {
    send_serial("SETI " + to_string( int(Ki*1000) )); // unit 0.001
    if (checkACK() != CMD_OK) return false;
  }

  if ( Kd >= 0)
  {
    send_serial("SETD " + to_string( int(Kd*1000) )); // unit 0.001
    if (checkACK() != CMD_OK) return false;
  }

  return true;
}

bool SliderDriver::setSTRParam(double Ksi, double Omega)
{
  send_serial("SKSI " + to_string( int(Ksi*1000) ));  // unit 0.001
  if (checkACK() != CMD_OK) return false;

  send_serial("SOMG " + to_string( int(Omega*10) ));  // unit 0.1
  if (checkACK() != CMD_OK) return false;

  return true;
}

bool SliderDriver::addCustomWavePoint(double timestamp, double position)
{
  send_serial("TADD " + to_string( int(timestamp*100) ));
  if (checkACK() != CMD_OK) return false;

  send_serial("PADD " + to_string( int(position*100) )); // unit 0.01 mm
  if (checkACK() != CMD_OK) return false;

  return true;
}

bool SliderDriver::getPosition(double *currentposition, double *setposition)
{
  if (m_triggermode == triggermode_t::command)
  {
    //send_serial("GETP " + to_string( m_deviceport ));
    send_serial("GETP 1");
  }

  string strRxMsg;
  if (!receive_serial(&strRxMsg))  return false;
  //cout << "strRxMsg:" << strRxMsg << endl;

  if (strRxMsg.substr(0,4) != "PCUR") return false;
  int j = strRxMsg.find(","); // index of comma
  if (j < 5) return false;

  try 
  {
    *currentposition = stod(strRxMsg.substr(5, j-5)) /100.0;
    *setposition = stod(strRxMsg.substr(j+1, strRxMsg.length()-j-1))/100.0;
    //cout << "pos:" << currentPos_ << " " << setPos_ << endl;
  }
  
  catch(const std::exception& e)
  {
    std::cerr << e.what() << '\n';
  }

  return true;
}

bool SliderDriver::startMotion(motioncontrol_t motionctrl, double timefinish)
{
  if (timefinish != 0)
  {
    send_serial("TFIN " + to_string( int(timefinish*100) )); // unit 0.01sec
    if (checkACK() != CMD_OK) return false;
  }

  if (motionctrl == motioncontrol_t::PID)
  {
    send_serial("RUNP");
    if (checkACK() != CMD_OK) return false;
  }
  else if (motionctrl == motioncontrol_t::STR)
  {
    send_serial("RUNS");
    if (checkACK() != CMD_OK) return false;
  }

  return true;
}

bool SliderDriver::stopMotion()
{
  send_serial("STOP");
  if (checkACK() != CMD_OK) return false;

  return true;
}

bool SliderDriver::homeMotion()
{
  send_serial("HOME");
  if (checkACK() != CMD_OK) return false;

  return true;
}

bool SliderDriver::resetEncoder()
{
  send_serial("RENC");
  if (checkACK() != CMD_OK) return false;

  return true;
}

bool SliderDriver::clearCustomWavePoints()
{
  send_serial("PCLR");
  if (checkACK() != CMD_OK) return false;

  return true;
}

bool SliderDriver::send_serial(std::string txmessage)
{
  string strSend = "$" + txmessage + "\r\n";
  if (!m_serial.write(strSend)) return false;
  else
  {
    //cout << "Sent:" << strSend;
    return true;
  }
}

bool SliderDriver::receive_serial(std::string *rxmessage)
{
  string strRead = m_serial.readline(30, "\n");
  //cout << "Received:" << strRead;

  if (strRead.substr(0,1) != "#")
  {
    cout << "Incorrect header of received message" << endl;
    return false;
  }

  int msgLength = strRead.length();
  if (msgLength < 4)
  {
    cout << "Not enough data in the received messeage" << endl;
    return false;
  }

  *rxmessage = strRead.substr(1, msgLength-3);
  //cout << "Rx message:" << *rxmessage << endl;

  return true;
}

cmdstate_t SliderDriver::checkACK()
{
  string strRecv;
  if (!receive_serial(&strRecv))
  {
    return CMD_NA;
  }

  string strACK = strRecv.substr(0,2);

  if (strACK == "OK")
  {
    return (CMD_OK);
  }
  else if (strACK == "ER")
  {
    //cout << "Command error" << endl;
    return (CMD_ERROR);
  } 
  else if (strACK == "IV")
  { 
    //cout << "Command invalid" << endl;
    return (CMD_INVALID);
  }
  else if (strACK == "NS")
  {
    //cout << "Command no support" << endl;
    return (CMD_NOSUPPORT);
  }
  else
  {
    //cout << "Command not acknowlegded" << endl;
    return (CMD_NA);
  }
}

void SliderDriver::convert_textfile_to_bagfile()
{
  try
  {
    cout << "Writing slider data to bagfile..." << endl;

    ifstream inFile;
    string strLine;
    string strFileDir = "/home/nguyen/datafiles/";
    string strFileName = "capture3_sine_0.4Hz_60cm_get_200Hz.txt";

    inFile.open( (strFileDir+strFileName).c_str() );
    if (!inFile) 
    {
      cout << "Unable to open file";
      exit(1); // terminate with error
    }

    devices::SliderMsg slider_msg;
    int j1, j2, j3;
    int count=0;

    ros::Time time = ros::Time::now();
    ros::Duration dur(0,5e6);

    rosbag::Bag bag;
    bag.open(strFileDir + "capture3.bag", rosbag::bagmode::Write);

    while (getline(inFile, strLine)) 
    {
      //cout << strFile << endl;
      j1 = strLine.find(" ");
      j2 = strLine.find(",");
      j3 = strLine.length();

      // cout << count++ << " ";
      // cout << "string:" << strLine << endl;
      // cout << "j: " << j1 << " " << j2 << " " << j3 << " "; 

      if ( (j1<0) | (j2<0) | (j3<0) | (j1>j2) | (j2>j3)) continue;

      slider_msg.current_position = atof( strLine.substr(j1+1, j2-j1-1).c_str() )/1e5;
      slider_msg.set_position = atof( strLine.substr(j2+1, j3-j2-1).c_str() )/1e5;
      slider_msg.header.stamp = time;

      // cout << slider_msg << endl;

      bag.write("slider", slider_msg.header.stamp, slider_msg);
      time += dur;
    }

    inFile.close();
    bag.close();
  }

  catch(const std::exception& e)
  {
    std::cerr << e.what() << '\n';
  }
  
  cout << "Finished." << endl;
}

void SliderDriver::delay_ms(ulong miliseconds)
{
  usleep(miliseconds*1000);
}

}; // end namespace Slider_driver
