#ifndef TRIGGERDRIVER_H
#define TRIGGERDRIVER_H

#include <ros/ros.h>
#include <serial/serial.h>
#include <std_msgs/Float64.h>
#include <sstream>

namespace ns_trigger
{

class TriggerDriver
{

public:
  TriggerDriver(ros::NodeHandle nh, std::string portname, double T_shutter, bool use_slider);
  ~TriggerDriver();
  void run();

private:
  ros::NodeHandle nh_;
  std::string portname_;
  double T_shutter_;
  serial::Serial serial_;
  ros::Subscriber sub_shutter_;

  bool use_slider_;
  bool serial_openned_;
  double T_trigger_cam_;
  double T_trigger_slider_;
  int T_trigger_cam_int_;
  int T_trigger_cam_int_old_;
  int T_trigger_slider_int_;
  int T_trigger_slider_int_old_;

  void openSerial(bool *ok);
  void updateShutterCallBack(const std_msgs::Float64::ConstPtr &msg);
  void configTriggers();
  void sendTriggerCam();
  void sendTriggerSlider();

  const double Td1;     // time delay from when IMU emit the trigger signal, until it begin to send sensor data
  const double Td2;     // time delay of capture real world data between camera and imu
  const double Td3;      // 1/2 sample time of slider
  const double Tcycle;   // time cycle of imu (100Hz)
  
  std::stringstream ss_trigcam_;
  std::string str_trigcam_;
  std::stringstream ss_trigslider_;
  std::string str_trigslider_;

  void testConfigTriggers();

}; // end of class TriggerDriver

}; // end of namespace ns_trigger

#endif