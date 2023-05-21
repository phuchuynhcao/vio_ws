#include <imu/ImuDriver.hpp>

using namespace std;

namespace imu_ns
{

ImuDriver::ImuDriver(ros::NodeHandle nh, string portname):
  nh_(nh),
  portname_(portname)
{
  cout << "in imu driver" << endl;
}

ImuDriver::~ImuDriver()
{
}

void ImuDriver::run()
{
  /* Configure the serial port */
  serial_.setPort(portname_);
  serial_.setBaudrate(921600);
  serial::Timeout timeout1(serial::Timeout::simpleTimeout(1000));
  serial_.setTimeout(timeout1);
  serial_.open();
  
  if(!serial_.isOpen())  {
    cout << "Can not open serial port: " << portname_ << endl;
    return; 
  }
  else
  {
    cout << "Openned Serial port" << endl;
  }

  /* Define imu frame length */
  frame_length_ = 92; // 74 without magnetormeter, 92 with magnetormeter

  /* Define imu time shift */
  double Td2 = 4.4; // 4.2 ms without magnetometer // 4.4 ms with magnetometer
  d_shift_imu_ = ros::Duration(0, int(-Td2*1e6)); // roll back 4.2 msec, ver 2
  //d_shift_imu_ = ros::Duration(0,0); // for ver.1

  /* Advertise topic to be published */
  pub_imu_ = nh_.advertise<sensor_msgs::Imu>("imu0",1000);

  /* Loop to read imu data */
  while(ros::ok())
  {
    str_recv_ = serial_.readline(100, "\r");
    t_imu_ = ros::Time::now() + d_shift_imu_;

    // cout << "Iter " << count;
    // cout << ", String Read: " << str_recv << endl;

    if (str_recv_.length() != frame_length_) 
    {
      ROS_WARN_STREAM("IMU frame error: " << loop_count_ << " Time: " << t_imu_.sec << "." << t_imu_.nsec);
    }
    else
    {
      eul_[0] = stod(str_recv_.substr(1,7));
      eul_[1] = stod(str_recv_.substr(9,7));
      eul_[2] = stod(str_recv_.substr(17,7));

      gyr_[0] = stod(str_recv_.substr(25,7));
      gyr_[1] = stod(str_recv_.substr(33,7));
      gyr_[2] = stod(str_recv_.substr(41,7));

      acc_[0] = stod(str_recv_.substr(49,6));
      acc_[1] = stod(str_recv_.substr(56,6));
      acc_[2] = stod(str_recv_.substr(63,6));

      mag_[0] = stod(str_recv_.substr(70,5));
      mag_[1] = stod(str_recv_.substr(76,5));
      mag_[2] = stod(str_recv_.substr(82,5));

      // Change axis direction to like datasheet
      msg_imu_.orientation.x = (eul_[0]/1000)*M_PI/180; // mdeg -> deg -> rad
      msg_imu_.orientation.y = -(eul_[1]/1000)*M_PI/180; // mdeg -> deg
      msg_imu_.orientation.z = -(eul_[2]/1000)*M_PI/180; // mdeg -> deg

      msg_imu_.angular_velocity.x = (gyr_[0]/1000)*(M_PI/180); // mdeg/s -> deg/s -> rad/s
      msg_imu_.angular_velocity.y = -(gyr_[1]/1000)*(M_PI/180); // mdeg/s -> deg/s -> rad/s
      msg_imu_.angular_velocity.z = -(gyr_[2]/1000)*(M_PI/180); // mdeg/s -> deg/s -> rad/s

      msg_imu_.linear_acceleration.x = -(acc_[0]/10000)*M_GRV; // 0.1mg -> g -> m/s^2
      msg_imu_.linear_acceleration.y = (acc_[1]/10000)*M_GRV;
      msg_imu_.linear_acceleration.z = (acc_[2]/10000)*M_GRV;

      msg_imu_.orientation_covariance[0] = mag_[0]/10;   // 0.1 mgauss -> mgauss
      msg_imu_.orientation_covariance[1] = mag_[1]/10;   // use the orientation_covariane field since there is no field for magnetometer
      msg_imu_.orientation_covariance[2] = mag_[2]/10;  

      // If only change Z axis acceleration
      /*
      msg_imu.orientation.x = (eul.at(0)/1000)*M_PI/180; // mdeg -> deg -> rad
      msg_imu.orientation.y = (eul.at(1)/1000)*M_PI/180; // mdeg -> deg
      msg_imu.orientation.z = (eul.at(2)/1000)*M_PI/180; // mdeg -> deg
      msg_imu.angular_velocity.x = (gyr.at(0)/1000)*(M_PI/180); // mdeg/s -> deg/s -> rad/s
      msg_imu.angular_velocity.y = (gyr.at(1)/1000)*(M_PI/180); // mdeg/s -> deg/s -> rad/s
      msg_imu.angular_velocity.z = (gyr.at(2)/1000)*(M_PI/180); // mdeg/s -> deg/s -> rad/s
      msg_imu.linear_acceleration.x = (acc.at(0)/10000)*M_GRV; // 0.1mg -> g -> m/s^2
      msg_imu.linear_acceleration.y = (acc.at(1)/10000)*M_GRV;
      msg_imu.linear_acceleration.z = -(acc.at(2)/10000)*M_GRV;
      */
      
      msg_imu_.header.stamp.sec = t_imu_.sec;
      msg_imu_.header.stamp.nsec = t_imu_.nsec;
      msg_imu_.header.frame_id = str_recv_.substr(88,2);

      pub_imu_.publish(msg_imu_);

      //cout << "Data splited: " << eul.at(0) << " " << eul.at(1) << " " << eul.at(2);
      //cout << " " << gyr.at(0) << " " << gyr.at(1) << " " << gyr.at(2);
      //cout << " " << acc.at(0) << " " << acc.at(1) << " " << acc.at(2) << endl;

      loop_count_++;
      if (loop_count_ % 500 == 0) 
      {
        ROS_INFO_STREAM("IMU published " << loop_count_);
        //std::cout << "IMU: " << mag_[0] << " " << mag_[1] << " " << mag_[2] << std::endl;
      }
    }
  }
}

};  // end namespace imu_ns