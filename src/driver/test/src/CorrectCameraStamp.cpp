#include <stdio.h>
#include <fstream>

#include <boost/foreach.hpp>

#include <ros/ros.h>
#include <rosbag/bag.h>
#include <rosbag/view.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/Imu.h>
#include <devices/SliderMsg.h>

using namespace std;

int main(int argc, char **argv)
{
    if (argc < 2)
    {
      cout << "Not enough input: --bagfile --shutter-time" << endl;
      return 0;
    }

    cout << "0: " << argv[0] << endl 
         << "1: " << argv[1] << endl
         << "2: " << argv[2] << endl;

    std::string bagfile(argv[1]);
    rosbag::Bag bag(bagfile, rosbag::bagmode::Read);

    std::string bagfile_o(bagfile.substr(0, bagfile.size()-4) + "_sc.bag");
    rosbag::Bag bag_o(bagfile_o, rosbag::bagmode::Write);

    std::string cam0_topic("/cam0/image_raw");
    rosbag::View view_cam0(bag, rosbag::TopicQuery(cam0_topic));

    std::string cam1_topic("/cam1/image_raw");
    rosbag::View view_cam1(bag, rosbag::TopicQuery(cam1_topic));

    std::string imu_topic("/imu0");
    rosbag::View view_imu(bag, rosbag::TopicQuery(imu_topic));

    string slider_topic("/slider");
    rosbag::View view_slider(bag, rosbag::TopicQuery(slider_topic));

    uint32_t t_shutter = atof(argv[2])*1e6; // in msec --> nsec

    rosbag::View::iterator view_cam_iterator0 = view_cam0.begin();
    while (view_cam_iterator0 != view_cam0.end())
    {
      sensor_msgs::ImagePtr img0 = view_cam_iterator0->instantiate<sensor_msgs::Image>();
      
      ros::Time t_cam(img0->header.stamp.sec, img0->header.stamp.nsec);
      // const uint32_t t_process = 4.2*1e6; // 4.2 ms
      // ros::Duration t_shift(0, t_process - t_shutter/2); 
      ros::Duration t_shift(0, 0); // for ver 1.1 

      ros::Time t_cam_correct = t_cam + t_shift;

      sensor_msgs::ImagePtr img0_o = img0;
      img0_o->header.stamp.sec = t_cam_correct.sec;
      img0_o->header.stamp.nsec = t_cam_correct.nsec;
      
      bag_o.write(cam0_topic, t_cam_correct, img0_o);

      //cout << t_cam << " " << t_cam_correct << " " << t_shift << endl;
      cout << "Shifting cam0 " << double(t_shift.toNSec())/1e6 << " ms ...\r"; 
      view_cam_iterator0++;
    }
    cout << endl;

    rosbag::View::iterator view_cam_iterator1 = view_cam1.begin();
    while (view_cam_iterator1 != view_cam1.end())
    {
      sensor_msgs::ImagePtr img1 = view_cam_iterator1->instantiate<sensor_msgs::Image>();

      ros::Time t_cam(img1->header.stamp.sec, img1->header.stamp.nsec);
      // const uint32_t t_process =  4.2*1e6; //4.2 ms
      // ros::Duration t_shift(0, t_process - t_shutter/2); 
      ros::Duration t_shift(0, 0); // for ver 1.1 

      ros::Time t_cam_correct = t_cam + t_shift;

      sensor_msgs::ImagePtr img1_o = img1;
      img1_o->header.stamp.sec = t_cam_correct.sec;
      img1_o->header.stamp.nsec = t_cam_correct.nsec;
      
      bag_o.write(cam1_topic, t_cam_correct, img1_o);

      //cout << t_cam << " " << t_cam_correct << " " << t_shift << endl;
      cout << "Shifting cam1 " << double(t_shift.toNSec())/1e6 << " ms ...\r"; 
      view_cam_iterator1++;
    }
    cout << endl;

    rosbag::View::iterator view_imu_iterator = view_imu.begin();
    while (view_imu_iterator != view_imu.end())
    {
      sensor_msgs::ImuPtr imu_msg = view_imu_iterator->instantiate<sensor_msgs::Imu>();
      //ros::Time t_cam 
      //sensor_msgs::ImuPtr imu_msg_o = img1;
      
      bag_o.write(imu_topic, imu_msg->header.stamp, imu_msg);

      cout << "Copying imu data...\r";
      view_imu_iterator++;
    }
    cout << endl;

    /** Process Slider data **/
    rosbag::View::iterator view_slider_iterator = view_slider.begin();
    while (view_slider_iterator != view_slider.end())
    {
      devices::SliderMsgPtr slider_msg = view_slider_iterator->instantiate<devices::SliderMsg>();
      
      bag_o.write(slider_topic, slider_msg->header.stamp, slider_msg);

      cout << "Copying slider data...\r";
      view_slider_iterator++;
    }

    cout << endl;
    cout << "Generated " << bagfile_o << "." << endl;
    cout << "Finished." << endl;

    //bag_out.write();

    return 0;
}
