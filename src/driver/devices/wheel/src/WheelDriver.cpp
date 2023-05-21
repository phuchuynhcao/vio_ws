#include <WheelDriver.hpp>

using namespace std;

namespace ns_wheel 
{

WheelDriver::WheelDriver(ros::NodeHandle nh, std::string portname):
  portname_(portname),
  nh_(nh),
  check_ACK_enable_(1)
{
}

WheelDriver::~WheelDriver()
{
}

void WheelDriver::run()
{
  if (!openSerial())  return;
  if (!configureWheelSendData()) return;
  readData(); 
  //testReadDataFromFile();
}

bool WheelDriver::openSerial()
{
  try
  {
    serial_.setPort(portname_);
    serial_.setBaudrate(115200); // 115200
    serial::Timeout timeout = serial::Timeout::simpleTimeout(200);
    serial_.setTimeout(timeout);
    serial_.open();

    if (!serial_.isOpen()) 
    {
      ROS_ERROR_STREAM("Cannot open Trigger Serial port: " << portname_);
      return false;
    }
    else
    {
      ROS_INFO_STREAM("Openned Trigger Serial port: " << portname_);
      return true;
    }
  }
  catch(const std::exception& e)
  {
    std::cerr << e.what() << '\n';
    ROS_ERROR_STREAM("Cannot open Trigger Serial port: " << portname_);
    return false;
  }
}

bool WheelDriver::configureWheelSendData()
{
  /* Stop send data */
  stopLog(Port2);
  while( serial_.readline(64,"\n").length() != 0); // read all of old messages to clear the rx buffer of serial port
  //serial::Timeout timeout = serial::Timeout::simpleTimeout(1000);
  //serial_.setTimeout(timeout);

  /* Choose trigger source of sending data
     0. On timer  (default)
     1. External trigger     */
  //setTriggerMode(Port2, External_Trigger);

  /* If use trigger on timer, set timer cycle [ms] use the following command */
  //setTriggerCycle(Port2, 10);

  /* Reset encoder counters */
  resetEncoderPosition();

  /* Start send data */
  startLog(Port2, Position);      // If log at 100Hz-250Hz, use Position mode for consistency to frame lost
  data_mode_ = Position; 
  
  //startLog(Port2, Velocity);   // If log at 500Hz, use Velocity mode for short frame length
  // data_mode_ = Velocity;

  return 1;
}

void WheelDriver::readData()
{
  /* Advertise topic to be published */
  pub_wheel_ = nh_.advertise<devices::WheelMsg>("wheel",1000);
  wheel_msg_.encoder_position_left = 0;
  wheel_msg_.encoder_position_right = 0;
  ros::Duration d_transmit(0, 2.08e6); //  Position data: 24 Bytes -> Transmit delay = 24*10/115200 = 2.08 ms

  /* Loop to read imu data */
  while(ros::ok())
  {
    str_read_ = serial_.readline(64, "\n");
    t_read_ = ros::Time::now() + d_transmit; 
    //cout << "String: " << str_read_ << " . Length: " << str_read_.length() << endl;
    if ( processDataAscii() )     
    {
      pub_wheel_.publish(wheel_msg_);
    }
  }
}

/* 
 * @brief   Process the received data from SPAN (the log INSPVAX)
 * @input   str_read_ : one line read from the SPAN
 *          t_read_   : time stamp at when the message was read
 */
bool WheelDriver::processDataAscii()
{  
  //cout << "str_read_:" << str_read_ << endl;
  if (str_read_.length() == 0)  {
    ROS_ERROR_STREAM("No data received");
    return 0;
  }

  uint pos_shp = str_read_.find("#");  // pos_shp: position of the sharp (#)
  if (pos_shp != 0)  {
    ROS_ERROR_STREAM("Wheel data not begin with #");
    return 0;
  } 

  uint pos_cr = str_read_.find("\r");  // pos_cr: position of the carriage return (\r)
  if (pos_cr == std::string::npos)  {
    ROS_ERROR_STREAM("Wheel data not end with CR");
    return 0;
  }

  if (data_mode_ == Velocity)
  {
    if (str_read_.length() != 14)  // time delay = 14*10/(115200/1000) = 1.215 ms
    {
      ROS_ERROR_STREAM("Message length is not correct to velocity log");
      return 0;
    } 

    uint pos_hed = str_read_.find("V"); 
    if (pos_hed != 1)
    {
      ROS_ERROR_STREAM("Log header is not correct to velocity log");
      return 0;
    }

    /* Obtain the message header */
    wheel_msg_.header.frame_id = "wheel";
    wheel_msg_.header.stamp = t_read_;

    wheel_msg_.encoder_velocity_left =  stoi(getSubstring(str_read_, 3, 7));
    wheel_msg_.encoder_velocity_right =  stoi(getSubstring(str_read_, 8, 12));
    wheel_msg_.encoder_position_left += wheel_msg_.encoder_velocity_left;
    wheel_msg_.encoder_position_right += wheel_msg_.encoder_velocity_right;

    // wheel_msg_.wheel_velocity_left = (double)encoder_velocity_left  * sample_freq * wheel_circum / encoder_resol;
    // wheel_msg_.wheel_velocity_right = (double)encoder_velocity_right  * sample_freq * wheel_circum / encoder_resol;
    // wheel_msg_.wheel_position_left += wheel_msg_.wheel_velocity_left/sample_freq;;
    // wheel_msg_.wheel_position_right += wheel_msg_.wheel_velocity_right/sample_freq;

  }
  else if (data_mode_ == Position)
  {
    if (str_read_.length() != 24)   // time delay = 24*10/(115200/1000) = 2.08 ms
    {
      ROS_ERROR_STREAM("Message length is not correct to position log");
      return 0;
    } 

    uint pos_hed = str_read_.find("P"); 
    if (pos_hed != 1)
    {
      ROS_ERROR_STREAM("Log header is not correct to position log");
      return 0;
    }

    /* Obtain the message header */
    wheel_msg_.header.frame_id = "wheel";
    wheel_msg_.header.stamp = t_read_;

    wheel_msg_.encoder_position_left = stoi(getSubstring(str_read_, 3, 12));
    wheel_msg_.encoder_position_right = stoi(getSubstring(str_read_, 13, 22));
    wheel_msg_.encoder_velocity_left =  wheel_msg_.encoder_position_left - encoder_data_pre_.position_left;
    wheel_msg_.encoder_velocity_right =  wheel_msg_.encoder_position_right - encoder_data_pre_.position_right;
    encoder_data_pre_.position_left = wheel_msg_.encoder_position_left;
    encoder_data_pre_.position_right = wheel_msg_.encoder_position_right;
  }

  static int count=0;
  count++;
  if (count % 100 == 0)
  {
    ROS_INFO_STREAM( "Wheel published " << count << endl
                    //<< "  Encoder velocity left  : " << wheel_msg_.encoder_velocity_left  << endl
                    //<< "  Encoder velocity right : " << wheel_msg_.encoder_velocity_right << endl
                    << "  Encoder position left  : " << wheel_msg_.encoder_position_left << endl
                    << "  Encoder position right : " << wheel_msg_.encoder_position_right << endl;
                    // << "  Wheel velocity left  : " << wheel_msg_.wheel_velocity_left  << endl
                    // << "  Wheel velocity right : " << wheel_msg_.wheel_velocity_right << endl
                    // << "  Wheel position left  : " << wheel_msg_.wheel_position_left << endl
                    // << "  Wheel position right : " << wheel_msg_.wheel_position_right << endl;
                    );
  }
  return 1;
}

std::string WheelDriver::getSubstring(std::string &str, uint from_index, uint to_index)
{
  return str.substr(from_index, to_index - from_index);
}

void WheelDriver::testReadDataFromFile()
{
    /* This function was not implemented */
}

bool WheelDriver::startLog(deviceport_t port, datamode_t datamode)
{
  if (port == Port1)
    send_serial("LOG" + to_string(port));
  else if (port == Port2)
    send_serial("LOG" + to_string(port) + " " + to_string(datamode));
  
  if (check_ACK_enable_)  {  if (checkACK() != ACK_OK) return false;  }
  return true;
}

bool WheelDriver::stopLog(deviceport_t port)
{
  send_serial("LOF" + to_string(port));
  if (check_ACK_enable_)  {  if (checkACK() != ACK_OK) return false;  }
  return true;
}

bool WheelDriver::setTriggerMode(deviceport_t port, triggermode_t triggermode)
{
  send_serial("LTR" + to_string(port) + " " + to_string(triggermode));
  if (check_ACK_enable_)  {  if (checkACK() !=ACK_OK) return false;  }
  return true;
}

bool WheelDriver::setTriggerCycle(deviceport_t port, uint msec)
{
  send_serial("LCY" + to_string(port) + " " + to_string(msec));
  if (check_ACK_enable_)  {  if (checkACK() != ACK_OK) return false;  }
  return true;
}

bool WheelDriver::resetEncoderPosition()
{
  send_serial("ERST");
  if (check_ACK_enable_)  {  if (checkACK() != ACK_OK) return false;  }
  return true;
}

bool WheelDriver::send_serial(std::string txmessage)
{
  string strSend = "$" + txmessage + "\r\n";
  if (!serial_.write(strSend)) return false;
  else  {
    cout << "Sent:" << strSend;
    return true;
  }
}

bool WheelDriver::receive_serial(std::string &rxmessage)
{
  string strRead = serial_.readline(64, "\n");
  cout << "Received:" << strRead;
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
  rxmessage = strRead.substr(1, msgLength-3);
  //cout << "Rx message:" << *rxmessage << endl;
  return true;
}

ack_t WheelDriver::checkACK()
{
  string strRecv;
  if (!receive_serial(strRecv)) {
    return ACK_NA;
  }
  string strACK = strRecv.substr(0,2);
  if (strACK == "OK") {
    return (ACK_OK);
  }
  else if (strACK == "ER") {
    //cout << "Command error" << endl;
    return (ACK_ER);
  } 
  else {
    //cout << "Command not acknowlegded" << endl;
    return (ACK_NA);
  }
}

void WheelDriver::delay_ms(ulong miliseconds)
{
  usleep(miliseconds*1000);
}

};
