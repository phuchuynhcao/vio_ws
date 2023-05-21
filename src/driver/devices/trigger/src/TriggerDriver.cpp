#include <TriggerDriver.hpp>

using namespace std;

namespace ns_trigger 
{

TriggerDriver::TriggerDriver(ros::NodeHandle nh, 
                            std::string portname, 
                            double T_shutter,
                            bool use_slider):
  nh_(nh),
  portname_(portname),
  T_shutter_(T_shutter),
  T_trigger_cam_int_old_(9999),
  T_trigger_slider_int_old_(9999),
  serial_openned_(false),
  use_slider_(use_slider),
  Td1(0.3),
  Td2(4.4), // 4.2 without magnetometer, 4.4 with magnetometer
  Td3(0) , // MCU process immediately  
  Tcycle(10)
{
}

TriggerDriver::~TriggerDriver()
{
}

void TriggerDriver::run()
{
  sub_shutter_ = nh_.subscribe("/stereo_camera/shutter", 1000, &TriggerDriver::updateShutterCallBack, this);
  openSerial( &serial_openned_ );
  configTriggers();
  //testConfigTriggers();

  ros::spin(); // enter event loop
}

void TriggerDriver::openSerial(bool *ok)
{
  try
  {
    serial_.setPort(portname_);
    serial_.setBaudrate(921600);
    serial::Timeout timeout = serial::Timeout::simpleTimeout(1000);
    serial_.setTimeout(timeout);
    serial_.open();

    if (!serial_.isOpen()) 
    {
      ROS_ERROR_STREAM("Cannot open Trigger Serial port: " << portname_);
      *ok = false;
    }
    else
    {
      ROS_INFO_STREAM("Openned Trigger Serial port: " << portname_);
      *ok = true;
    }
  }
  catch(const std::exception& e)
  {
    std::cerr << e.what() << '\n';
    ROS_ERROR_STREAM("Cannot open Trigger Serial port: " << portname_);
    *ok = false;
  }
}

void TriggerDriver::updateShutterCallBack(const std_msgs::Float64::ConstPtr &msg)
{
  T_shutter_ = msg->data;
  //ROS_INFO_STREAM("T_shutter: " << T_shutter_); 
  configTriggers();
}

void TriggerDriver::configTriggers()
{
  /* Calculate camera trigger shift */
  T_trigger_cam_ = 3*Tcycle + Td1 - T_shutter_/2 - Td2;  // in milisec
  sendTriggerCam();

  /* Calculate slider trigger shift */
  if (!use_slider_) return;
  T_trigger_slider_ = Tcycle - Td2 - Td3; // in milisec
  sendTriggerSlider();
}

void TriggerDriver::sendTriggerCam()
{
  if (!serial_openned_)  return;

  /* Send set camera trigger command */
  T_trigger_cam_int_ = round(T_trigger_cam_*10); // unit: 0.1 msec
  if ( (T_trigger_cam_int_ < 0) | (T_trigger_cam_int_ >= 480) ) return; // only accept: 0 <= T_trigger_cam < 48 ms 
  if (T_trigger_cam_int_ == T_trigger_cam_int_old_) return; // only execute if new value is different
  T_trigger_cam_int_old_ = T_trigger_cam_int_;

  ss_trigcam_.str("");
  ss_trigcam_ << setw(3) << setfill('0') << T_trigger_cam_int_;
  //ROS_INFO_STREAM("ss_trigcam: " << ss_trigcam_.str()); return;

  str_trigcam_ = "$TTRC " + ss_trigcam_.str() + "\r\n";
  if( !serial_.write(str_trigcam_) ) return;
  //ROS_INFO_STREAM("Sent trigger cam: " << str_trigcam_);

  /* Receive response string */
  //string str_recv = serial_.readline(20, "\n");
  //ROS_INFO_STREAM("Received trigger cam: " << str_recv);
}

void TriggerDriver::sendTriggerSlider()
{
  if (!serial_openned_)  return;

  /* Send set trigger slider time command */
  T_trigger_slider_int_ = round(T_trigger_slider_*10); // unit 0.1 msec
  if ((T_trigger_slider_int_ < 0 ) | (T_trigger_slider_int_ >= 80)) return; // only accept: 0 <= T_trigger_slider < 8 ms
  if (T_trigger_slider_int_ == T_trigger_slider_int_old_) return;
  T_trigger_slider_int_old_ = T_trigger_slider_int_;

  ss_trigslider_.str("");
  ss_trigslider_ << setw(2) << setfill('0') << T_trigger_slider_int_;
  str_trigslider_ = "$TTRS " + ss_trigslider_.str() + "\r\n";
  if( !serial_.write(str_trigslider_) ) return;
  //ROS_INFO_STREAM("Sent trigger slider: " << str_trigslider_);
  
  /* Receive response string */
  //string str_recv = serial_.readline(20, "\n");
  //ROS_INFO_STREAM("Received trigger slider: " << str_recv);
}

void TriggerDriver::testConfigTriggers()
{
  T_trigger_cam_ = 0;         // milisecs
  T_trigger_slider_ = 0;      // milisecs
  for (int i=0; i<1; i++)
  {
    T_trigger_cam_ += 1;
    sendTriggerCam();
    ros::Duration(0.5).sleep();

    if (use_slider_) continue;
    T_trigger_slider_ += 0.5;
    sendTriggerSlider();
    ros::Duration(0.5).sleep();
  }
}

};
