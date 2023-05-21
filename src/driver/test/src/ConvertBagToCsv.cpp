#include <stdio.h>
#include <fstream>
#include <sstream>

#include <boost/foreach.hpp>

#include <ros/ros.h>
#include <rosbag/bag.h>
#include <rosbag/view.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/Imu.h>

using namespace std;
//#define foreach BOOST_FOREACH

void csvFileWriteCam(rosbag::View &view, std::string &csvFileName)
{
  std::fstream csvFile(csvFileName.c_str(), std::ios_base::out);
  if (!csvFile.good())
  {
    std::cout << "failed to create csv file" << std::endl;
    return;
  }

  // Load all messages
  BOOST_FOREACH(rosbag::MessageInstance const m, view)
  {
    sensor_msgs::ImageConstPtr img0 = m.instantiate<sensor_msgs::Image>();
    if (img0 != NULL)
    {
      std::cout << img0->header.stamp.sec << "."
                << std::setw(9) << std::setfill('0') << img0->header.stamp.nsec << std::endl;
      //csvFile << img0->header.stamp.sec << "."
      //        << std::setw(9) << std::setfill('0') << img0->header.stamp.nsec << std::endl;
    }
  }

  csvFile.close();
}

void analyzeCamData(rosbag::View &view)
{
   // Analyze time statistic
   std::vector<double> timevec0;
   BOOST_FOREACH(rosbag::MessageInstance const m, view)
   {
     sensor_msgs::ImageConstPtr img0 = m.instantiate<sensor_msgs::Image>();
     if (img0 != NULL)
     {
       timevec0.push_back(double(img0->header.stamp.sec) + double(img0->header.stamp.nsec)/1e9);
     }
   }
   double Ns = timevec0.size();
   double Ts = (timevec0.back() - timevec0.front())/(Ns - 1);
   double fs = 1/Ts;
   std::cout << "Ns: " << Ns << ", Ts: " << Ts << "[s], fs: " << fs << "[Hz]" << std::endl;
}

void csvFileWriteImu(rosbag::View &view_imu, string bagFileName)
{
  std::string csvFileName = bagFileName.substr(0, bagFileName.size() - 4) + ".csv";
  std::fstream csvFile(csvFileName.c_str(), std::ios_base::out);

  if (!csvFile.good())
  {
    std::cout << "failed to create csv file" << std::endl;
    return;
  }
  // csv header
  csvFile << "seq" << "," << "id" << "," << "time stamp [s]" << ","
          << "ax [m/s^2]" << "," << "ay [m/s^2]" << "," << "az [m/s^2]" << ","
          << "wx [rad/s]" << "," << "wy [rad/s]" << "," << "wz [rad/s]" << ","  
          << "rotx [rad]" << "," << "roty [rad]" << "," << "rotz [rad]" << endl;

  rosbag::View::iterator view_imu_iterator = view_imu.begin();
  
  cout << "Converting IMU data from bag to csv file..." << endl;

  while (view_imu_iterator != view_imu.end())
  {
    sensor_msgs::ImuPtr imu_msg = view_imu_iterator->instantiate<sensor_msgs::Imu>();
    uint t_sec = imu_msg->header.stamp.sec;
    uint t_nsec = imu_msg->header.stamp.nsec;

    csvFile << imu_msg->header.seq << "," 
            << imu_msg->header.frame_id << ","
            << t_sec << "." << setfill('0') << setw(9) << t_nsec << ","       
            << setprecision(15) << imu_msg->linear_acceleration.x << "," 
            << setprecision(15) << imu_msg->linear_acceleration.y << "," 
            << setprecision(15) << imu_msg->linear_acceleration.z << ","
            << setprecision(15) << imu_msg->angular_velocity.x << "," 
            << setprecision(15) << imu_msg->angular_velocity.y << "," 
            << setprecision(15) << imu_msg->angular_velocity.z << ","
            << setprecision(15) << imu_msg->orientation.x << "," 
            << setprecision(15) << imu_msg->orientation.y << "," 
            << setprecision(15) << imu_msg->orientation.z << endl;         

    view_imu_iterator++;
  }
  csvFile.close();

  cout << "Finished." << endl;
}


int main(int argc, char **argv)
{
    if (argc < 2)
    {
      cout << "Not enough input: --bagfile" << endl;
      return 0;
    }

    /* Load bag file */
    std::string bagFileName(argv[1]);
    rosbag::Bag bag(bagFileName, rosbag::bagmode::Read);

    /* Read imu data from bag file, and convert to csv file*/
    std::string imu_topic("/imu0");
    rosbag::View view_imu(bag, rosbag::TopicQuery(imu_topic));

    csvFileWriteImu(view_imu, bagFileName);

    /* Read Cam Data */
    // std::string cam0_topic("/stereo_camera/left/image_rect");
    // rosbag::View view_cam0(bag, rosbag::TopicQuery(cam0_topic));
    // std::string csvFileName0("/home/nguyen/test_ws/out/time_left.csv");

    // std::string cam1_topic("/stereo_camera/right/image_rect");
    // rosbag::View view_cam1(bag, rosbag::TopicQuery(cam1_topic));
    // std::string csvFileName1("/home/nguyen/test_ws/out/time_right.csv");

    // csvFileWriteCam(view_cam0, csvFileName0);
    // csvFileWriteCam(view_cam1, csvFileName1);

    // analyzeDataCam(view_cam0);
    // analyzeDataCam(view_cam1);

    return 0;
}
