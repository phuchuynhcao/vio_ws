#ifndef WHEELDRIVER_H
#define WHEELDRIVER_H

#include <ros/ros.h>
#include <serial/serial.h>
#include <devices/WheelMsg.h>

namespace ns_wheel
{

typedef enum {
  ACK_OK = 0,
  ACK_ER = 1,
  ACK_NA = -1
} ack_t;

typedef enum {
  Velocity = 0,
  Position = 1
} datamode_t;

typedef enum {
  On_Timer = 0,
  External_Trigger = 1
} triggermode_t;

typedef enum
{
  Port1 = 1,
  Port2 = 2
} deviceport_t;

struct EncoderData_t
{
  int velocity_left=0;
  int velocity_right=0;
  int position_left=0;
  int position_right=0;
};

const double encoder_resol = 3200.0;  // [pulse/round]
const double wheel_circum = 1.433;  // [m/round]
const double sample_freq = 100.0;     // [Hz]

class WheelDriver
{
public:
  WheelDriver(ros::NodeHandle nh, std::string portname);
  ~WheelDriver();
  void run();

private:
  ros::NodeHandle nh_;
  serial::Serial serial_;
  ros::Publisher pub_wheel_;

  std::string portname_;
  std::string str_read_;
  ros::Time t_read_;
  devices::WheelMsg wheel_msg_;
  std::string str_log_;
  bool check_ACK_enable_;
  datamode_t data_mode_;
  EncoderData_t encoder_data_pre_;

  bool openSerial();
  bool configureWheelSendData();
  void readData();
  bool processDataAscii();
  std::string getSubstring(std::string &str, uint from_index, uint to_index);
  void testReadDataFromFile();

  bool startLog(deviceport_t port, datamode_t datamode);
  bool stopLog(deviceport_t port);
  bool setTriggerMode(deviceport_t port, triggermode_t triggermode);
  bool setTriggerCycle(deviceport_t port, uint msec);
  bool resetEncoderPosition();

  bool send_serial(std::string txmessage);
  bool receive_serial(std::string &rxmessage);
  ack_t checkACK();

  void delay_ms(ulong miliseconds);

}; // end of class

}; // end of namespace 

#endif