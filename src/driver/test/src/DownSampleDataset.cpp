#include <stdio.h>
#include <fstream>

#include <boost/foreach.hpp>

#include <ros/ros.h>
#include <rosbag/bag.h>
#include <rosbag/view.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/Imu.h>
#include <devices/SliderMsg.h>
#include <devices/WheelMsg.h>

using namespace std;

int main(int argc, char **argv)
{
  if (argc < 4)
  {
    cout << "Not enough input: --bagfile --camera-divisor [int] --imu-divisor [int]" << endl;
    return 0;
  }

  cout << "0: " << argv[0] << endl 
        << "1: " << argv[1] << endl
        << "2: " << argv[2] << endl
        << "3: " << argv[3] << endl;

  int camera_divisor = stoi(argv[2]);
  int imu_divisor = stoi(argv[3]);

  bool has_wheel = false;
  int wheel_divisor = 1;
  if (argc == 5)
  {
    has_wheel = true;
    cout << "4: " << argv[4] << endl;
    wheel_divisor = stoi(argv[4]);
  }

  std::string bagfile(argv[1]);
  rosbag::Bag bag(bagfile, rosbag::bagmode::Read);

  std::string bagfile_o;
  if (!has_wheel)
  {
    bagfile_o = bagfile.substr(0, bagfile.size()-4) 
                        + "_cam-" + to_string(20/camera_divisor) + "FPS" 
                        + "_imu-" + to_string(500/imu_divisor) + "Hz.bag";
  }
  else
  {
    bagfile_o = bagfile.substr(0, bagfile.size()-4) 
                        + "_cam-" + to_string(20/camera_divisor) + "FPS" 
                        + "_imu-" + to_string(500/imu_divisor) + "Hz"
                        + "_wheel-" + to_string(100/wheel_divisor) + "Hz.bag";
  }

  rosbag::Bag bag_o(bagfile_o, rosbag::bagmode::Write);

  std::string cam0_topic("/cam0/image_raw");
  rosbag::View view_cam0(bag, rosbag::TopicQuery(cam0_topic));

  std::string cam1_topic("/cam1/image_raw");
  rosbag::View view_cam1(bag, rosbag::TopicQuery(cam1_topic));

  std::string imu_topic("/imu0");
  rosbag::View view_imu(bag, rosbag::TopicQuery(imu_topic));

  std::string wheel_topic("/wheel");
  rosbag::View view_wheel(bag, rosbag::TopicQuery(wheel_topic));

  // string slider_topic("/slider");
  // rosbag::View view_slider(bag, rosbag::TopicQuery(slider_topic));
  // uint32_t t_shutter = atof(argv[2])*1e6; // in msec --> nsec

  cout << "Downsampling cam0 from 20 to " << to_string(20/camera_divisor) + " FPS ..." << endl;
  int cam0_frame_cnt = 0;
  rosbag::View::iterator view_cam_iterator0 = view_cam0.begin();
  while (view_cam_iterator0 != view_cam0.end())
  {
    if(cam0_frame_cnt % camera_divisor == 0)
    {
      sensor_msgs::ImagePtr img0 = view_cam_iterator0->instantiate<sensor_msgs::Image>();
      bag_o.write(cam0_topic, img0->header.stamp, img0);
    }
    view_cam_iterator0++;
    cam0_frame_cnt++;
  }

  cout << "Downsampling cam1 from 20 to " << to_string(20/camera_divisor) + " FPS ..." << endl;
  int cam1_frame_cnt = 0;
  rosbag::View::iterator view_cam_iterator1 = view_cam1.begin();
  while (view_cam_iterator1 != view_cam1.end())
  {
    if (cam1_frame_cnt % camera_divisor == 0)
    {
      sensor_msgs::ImagePtr img1 = view_cam_iterator1->instantiate<sensor_msgs::Image>();
      bag_o.write(cam1_topic, img1->header.stamp, img1);
    }
    view_cam_iterator1++;
    cam1_frame_cnt++;
  }

  cout << "Downsampling imu from 500 to " << to_string(500/imu_divisor) + " Hz ..." << endl;
  int imu_frame_cnt = 0;
  rosbag::View::iterator view_imu_iterator = view_imu.begin();
  while (view_imu_iterator != view_imu.end())
  {
    if (imu_frame_cnt % imu_divisor == 0)
    {
      sensor_msgs::ImuPtr imu_msg = view_imu_iterator->instantiate<sensor_msgs::Imu>();
      bag_o.write(imu_topic, imu_msg->header.stamp, imu_msg);
    }
    view_imu_iterator++;
    imu_frame_cnt++;
  }

  /** Downsampling wheel data **/
  if (has_wheel)
  {
    cout << "Downsampling wheel from 100 to " << to_string(100/wheel_divisor) + " Hz ..." << endl;
    int wheel_frame_cnt = 0;
    rosbag::View::iterator view_wheel_iterator = view_wheel.begin();
    while (view_wheel_iterator != view_wheel.end())
    {
      if (wheel_frame_cnt % wheel_divisor == 0)
      {
        devices::WheelMsgPtr wheel_msg = view_wheel_iterator->instantiate<devices::WheelMsg>();
        bag_o.write(wheel_topic, wheel_msg->header.stamp, wheel_msg);
      }
      view_wheel_iterator++;
      wheel_frame_cnt++;
    }
  }

  /** Process Slider data **/
  // rosbag::View::iterator view_slider_iterator = view_slider.begin();
  // while (view_slider_iterator != view_slider.end())
  // {
  //   devices::SliderMsgPtr slider_msg = view_slider_iterator->instantiate<devices::SliderMsg>();
    
  //   bag_o.write(slider_topic, slider_msg->header.stamp, slider_msg);

  //   cout << "Copying slider data...\r";
  //   view_slider_iterator++;
  // }

  cout << "Generated " << bagfile_o << "." << endl;
  cout << "Finished." << endl;

  //bag_out.write();

  return 0;
}
