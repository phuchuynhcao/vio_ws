#ifndef SPANDRIVER_H
#define SPANDRIVER_H

#include <ros/ros.h>
#include <serial/serial.h>
// #include <std_msgs/String.h>
#include <devices/SpanNav.h>
#include <devices/SpanHeader.h>

namespace ns_span
{

class SpanDriver
{

public:
  SpanDriver(ros::NodeHandle nh, std::string portname);
  ~SpanDriver();
  void run();

private:
  ros::NodeHandle nh_;
  serial::Serial serial_;
  ros::Publisher pub_span_;
  // std_msgs::String msg_span_;

  std::string portname_;
  std::string str_read_;
  ros::Time t_read_;
  devices::SpanNav span_msg_;

  bool openSerial();
  void readData();
  bool processDataAscii();
  std::string getSubstring(std::string &str, uint from_index, uint to_index);
  void testReadDataFromFile();

}; // end of class TriggerDriver

}; // end of namespace ns_trigger

#endif