#ifndef GPSDRIVER_H
#define GPSDRIVER_H

#include <ros/ros.h>
#include <serial/serial.h>
#include <devices/GpsMsg.h>
#include <devices/GpsStatus.h>
#include <fstream>
#include <geodetic_conv.hpp>

namespace ns_gps
{

class GpsDriver
{

public:
  GpsDriver(ros::NodeHandle nh, std::string devname, std::string portname, std::string baudrate);
  ~GpsDriver();
  void run();
  void test();

private:
  ros::NodeHandle nh_;
  serial::Serial serial_;
  ros::Publisher pub_;

  std::string devname_;
  std::string portname_;
  int baudrate_;
  std::string str_read_;
  std::string str_frame_;
  ros::Time t_read_;
  devices::GpsMsg gps_msg_;
  std::fstream logfile_nmea_;
  std::fstream logfile_enu_;
  const std::vector<double> llh_origin_;

  geodetic_converter::GeodeticConverter geodetic_conv_;

  bool openSerial();
  void readDataOnline();
  void readDataFromNmeaFile();
  void readDataFromBagFile();
  void processOneLine(std::string &str_line);

  void createNmeaFile(const std::string &str_dir);
  void createEnuFile(const std::string &str_dir);
  void saveToNmeaFile(std::string &str_line);
  void saveToEnuFile();

  std::string rosTimeToTimeString(ros::Time t);

  bool pub_request_;
  int line_count_;

}; // end of class TriggerDriver

}; // end of namespace ns_trigger

#endif