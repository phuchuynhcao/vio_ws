#ifndef IMUDRIVER_H
#define IMUDRIVER_H

#include <ros/ros.h>
#include <serial/serial.h>
#include <sensor_msgs/Imu.h>
#include <string.h>
#include <vector>

#define M_GRV 9.80665; // standard g -> m/s^2

namespace imu_ns
{

class ImuDriver
{
private:
  ros::NodeHandle nh_;
  ros::Publisher pub_imu_;
  sensor_msgs::Imu msg_imu_;
  ros::Time t_imu_;
  ros::Duration d_shift_imu_;

  serial::Serial serial_;
  std::string portname_;
  std::string str_recv_;

  double eul_[3], gyr_[3], acc_[3], mag_[3];
  uint frame_length_;
  uint loop_count_;
  
public:
  ImuDriver(ros::NodeHandle nh, std::string portname);
  ~ImuDriver();

  void run();

};  // end class ImuDriver

};  // end namespace imu_ns

#endif // IMUDRIVER_H