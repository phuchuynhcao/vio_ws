#include <GpsDriver.hpp>
#include <fstream>
#include <rosbag/bag.h>
#include <boost/algorithm/string.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>
#include <rosbag/bag.h>
#include <rosbag/view.h>

using namespace std;
using namespace geodetic_converter;

namespace ns_gps
{

GpsDriver::GpsDriver(ros::NodeHandle nh, std::string devname, std::string portname, std::string baudrate):
  devname_(devname),
  portname_(portname),
  baudrate_(stoi(baudrate)),
  nh_(nh),
  llh_origin_({10.77, 106.658, 0}),
  pub_request_(0)
{
  geodetic_conv_.initialiseReference(llh_origin_.at(0), llh_origin_.at(1), llh_origin_.at(2));
}

GpsDriver::~GpsDriver()
{
  if (logfile_nmea_)
    logfile_nmea_.close();  
  if (logfile_enu_)
    logfile_enu_.close();
}

void GpsDriver::run()
{
  cout << "Started GPS driver." << endl;
  if (!openSerial())  return;
  readDataOnline(); 
}

void GpsDriver::test()
{
  cout << "Testing GPS driver..." << endl;
  //readDataFromNmeaFile();
  readDataFromBagFile();
  cout << "Test finished." << endl;
}

bool GpsDriver::openSerial()
{
  try
  {
    serial_.setPort(portname_);
    serial_.setBaudrate(baudrate_);
    serial::Timeout timeout = serial::Timeout::simpleTimeout(1000);
    serial_.setTimeout(timeout);
    serial_.open();

    if (!serial_.isOpen()) 
    {
      ROS_ERROR_STREAM("Cannot open Trigger Serial port: " << portname_);
      return false;
    }
    else
    {
      ROS_INFO_STREAM("Openned Trigger Serial port: " << portname_);
      return true;
    }
  }
  catch(const std::exception& e)
  {
    std::cerr << e.what() << '\n';
    ROS_ERROR_STREAM("Cannot open Trigger Serial port: " << portname_);
    return false;
  }
}

void GpsDriver::readDataOnline()
{
  /* Create log files */
  string str_filedir = "/home/nguyen/dataset/";
  //createNmeaFile(str_filedir);      // create log file of NMEW messages
  //createEnuFile(str_filedir);       // create log file of ENU and LLA position

  /* Advertise topic to be published */
  pub_ = nh_.advertise<devices::GpsMsg>("gps_"+ devname_,1000);
  
  /* Loop to read data */
  int count=0;
  while(ros::ok())
  {
    str_read_ = serial_.readline(100,"\n");
    //cout << str_read_ << endl;
    
    if (str_read_.size() > 0)
    {
      t_read_ = ros::Time::now();
      processOneLine(str_read_);
      //saveToNmeaFile(str_read_);
    }

    if (pub_request_) 
    {
      pub_request_ = 0;
      pub_.publish(gps_msg_);
      //saveToEnuFile();

      count++;
      if (count % 5 == 0)
        ROS_INFO_STREAM(devname_ << " published " << count);
      }
  }
}

void GpsDriver::readDataFromNmeaFile()
{
  string str_filedir = "/home/nguyen/dataset/";
  createEnuFile(str_filedir);       // log NMEW message
  //createNmeaFile(str_filedir);    // log LLA and ENU position

  string str_filename = "RTK9_2020-05-09-16-39-19_rtk.log";
  ifstream file(str_filedir + str_filename);
  if (!file)
  {
    ROS_ERROR_STREAM("Cannot open input file");
  }

  // std::string bagfile_o("/home/nguyen/dataset/RTK1_geo-conv.bag");
  // rosbag::Bag bag_o(bagfile_o, rosbag::bagmode::Write);

  string str_line;
  while( std::getline(file, str_line) )
  {
    t_read_ = ros::Time::now();
    if (str_line.size() > 0)
    {
      processOneLine(str_line);
      //saveToNmeaFile(str_line);
    }

    if (pub_request_)
    {
      pub_request_ = 0;
      saveToEnuFile();
      //bag_o.write("/gps", ros::Time(gps_msg_.status.time), gps_msg_);
    }
  }
}

void GpsDriver::readDataFromBagFile()
{
  string filedir_out = "/home/nguyen/dataset/2020-06-01/viogps2/";
  createEnuFile(filedir_out );       // log NMEW message
  
  string file_in = "/home/nguyen/dataset/2020-06-01/viogps2/viogps2_cut_2020-06-01.bag";
  rosbag::Bag bag(file_in, rosbag::bagmode::Read);
  rosbag::View view(bag, rosbag::TopicQuery("/rtk"));

  rosbag::View::iterator view_iter = view.begin();
  while (view_iter != view.end())
  {
    devices::GpsMsgPtr msg = view_iter->instantiate<devices::GpsMsg>();
    gps_msg_ = *msg;
    saveToEnuFile();
    view_iter++;
  }
}

void GpsDriver::processOneLine(std::string &str_line)
{
  /* Split line data */
  std::vector<std::string> strs_split;
  boost::split(strs_split, str_line, boost::algorithm::is_any_of(","));
  // for (int i=0; i<strs_split.size(); i++)
  //   cout << strs_split.at(i) << endl;

  try
  {
    string str_log = strs_split.at(0).substr(3,3);

    /*** Ublox M8N GPS Receiver ***/
    if (devname_ == "M8N")
    { 
      if (str_log == "GNS")
      {
        // Reset line counter and assign timestamp
        line_count_++;
        // line_count_ = 1;  
        // gps_msg_.header.frame_id = devname_;
        // gps_msg_.header.stamp = t_read_; // take timestamp of VTG as the timestamp of the frame

        // Get data
        if ( (strs_split.at(6).find("A") != string::npos) | (strs_split.at(6).find("D") != string::npos) )
          gps_msg_.status.quality = 1;
        else
          gps_msg_.status.quality = 0;

        gps_msg_.status.numsat = stoi(strs_split.at(7));
        gps_msg_.status.hdop = stod(strs_split.at(8));
        
        if (strs_split.at(2).empty()) // no gps data
        {
          gps_msg_.status.time = 0;
          gps_msg_.latlongheight.x = 0; gps_msg_.latlongheight.y = 0; gps_msg_.latlongheight.z = 0;
          gps_msg_.llh_origin.x = 0; gps_msg_.llh_origin.y = 0; gps_msg_.llh_origin.z = 0;
          gps_msg_.enu_position.x = 0; gps_msg_.enu_position.y = 0; gps_msg_.enu_position.z = 0;
        }
        else
        {
          gps_msg_.status.time = stod(strs_split.at(1).substr(0,2))*3600 + stod(strs_split.at(1).substr(2,2))*60 + stod(strs_split.at(1).substr(4));

          if (strs_split.at(3) == "N")
            gps_msg_.latlongheight.x = stod(strs_split.at(2).substr(0,2)) + stod(strs_split.at(2).substr(2))/60;
          else if (strs_split.at(3) == "S")
            gps_msg_.latlongheight.x = -(stod(strs_split.at(2).substr(0,2)) + stod(strs_split.at(2).substr(2))/60);

          if (strs_split.at(5) == "E")
            gps_msg_.latlongheight.y = stod(strs_split.at(4).substr(0,3)) + stod(strs_split.at(4).substr(3))/60;
          else if (strs_split.at(5) == "W")
            gps_msg_.latlongheight.y = -(stod(strs_split.at(4).substr(0,3)) + stod(strs_split.at(4).substr(3))/60);

          gps_msg_.latlongheight.z = stod(strs_split.at(9));

          // Calculate ENU position from lat-long-height
          gps_msg_.llh_origin.x = llh_origin_.at(0);  gps_msg_.llh_origin.y = llh_origin_.at(1); gps_msg_.llh_origin.z = llh_origin_.at(2);
          geodetic_conv_.geodetic2Enu(gps_msg_.latlongheight.x, gps_msg_.latlongheight.y, gps_msg_.latlongheight.z,
            &gps_msg_.enu_position.x, &gps_msg_.enu_position.y, &gps_msg_.enu_position.z); 
        }
      }

      else if (str_log == "GST")
      {
        line_count_++;
        gps_msg_.latlongheight_error.x = stod(strs_split.at(6));
        gps_msg_.latlongheight_error.y = stod(strs_split.at(7));
        gps_msg_.latlongheight_error.z = stod(strs_split.at(8));
      }
      
      else if (str_log == "VTG") // VTG is the first line in frame
      {
        line_count_ = 1;  // reset line counter at VTG message with gps device
        gps_msg_.header.frame_id = devname_;
        gps_msg_.header.stamp = t_read_ - ros::Duration(0, 3.472e6); // take timestamp of VTG as the timestamp of the frame   
                                                                       // VTG data: 40 bytes, baudrate 115200 -> transmit delay 3.472 ms

        // Calculate East North velocity
        if (strs_split.at(1) == "") 
        {
          gps_msg_.velocity.x = -1; // no course over ground specified
        }
        else
        {
          gps_msg_.velocity.x = stod(strs_split.at(1));       // course-over-ground [deg]
        }

        if (strs_split.at(7) == "") 
        {
          gps_msg_.velocity.y = -1; // no speed over ground specified
        }
        else
        {
          gps_msg_.velocity.y = stod(strs_split.at(7))/3.6;   // speed-over-ground [m/s]
        }
      }

      if (line_count_ == 2)
      {
        pub_request_ = 1;
        line_count_ = 0;
      }
    }

    /*** South S82 GPS Receiver ***/
    else if (devname_ == "S82")
    {
      if (str_log == "GGA")
      {
        // Reset line counter and assign timestamp
        line_count_ = 1;  
        gps_msg_.header.frame_id = devname_;
        gps_msg_.header.stamp = t_read_; // take timestamp of VTG as the timestamp of the frame

        // Get data
        gps_msg_.status.quality = stoi(strs_split.at(6));
        gps_msg_.status.numsat = stoi(strs_split.at(7));
        gps_msg_.status.hdop = stod(strs_split.at(8));

        if (gps_msg_.status.quality == 0) // no gps data
        {
          gps_msg_.status.time = 0;
          gps_msg_.latlongheight.x = 0; gps_msg_.latlongheight.y = 0; gps_msg_.latlongheight.z = 0;
          gps_msg_.llh_origin.x = 0; gps_msg_.llh_origin.y = 0; gps_msg_.llh_origin.z = 0;
          gps_msg_.enu_position.x = 0; gps_msg_.enu_position.y = 0; gps_msg_.enu_position.z = 0;
        }
        else
        {
          gps_msg_.status.time = stod(strs_split.at(1).substr(0,2))*3600 + stod(strs_split.at(1).substr(2,2))*60 + stod(strs_split.at(1).substr(4));

          if (strs_split.at(3) == "N")
            gps_msg_.latlongheight.x = stod(strs_split.at(2).substr(0,2)) + stod(strs_split.at(2).substr(2))/60;
          else if (strs_split.at(3) == "S")
            gps_msg_.latlongheight.x = -(stod(strs_split.at(2).substr(0,2)) + stod(strs_split.at(2).substr(2))/60);
          if (strs_split.at(5) == "E")
            gps_msg_.latlongheight.y = stod(strs_split.at(4).substr(0,3)) + stod(strs_split.at(4).substr(3))/60;
          else if (strs_split.at(5) == "W")
            gps_msg_.latlongheight.y = -(stod(strs_split.at(4).substr(0,3)) + stod(strs_split.at(4).substr(3))/60);
          gps_msg_.latlongheight.z = stod(strs_split.at(9));

          // Calculate ENU position from lat-long-height
          gps_msg_.llh_origin.x = llh_origin_.at(0);  gps_msg_.llh_origin.y = llh_origin_.at(1); gps_msg_.llh_origin.z = llh_origin_.at(2);
          geodetic_conv_.geodetic2Enu(gps_msg_.latlongheight.x, gps_msg_.latlongheight.y, gps_msg_.latlongheight.z,
            &gps_msg_.enu_position.x, &gps_msg_.enu_position.y, &gps_msg_.enu_position.z); 
        }
      }

      else if (str_log == "GST")
      {
        line_count_++;
        gps_msg_.latlongheight_error.x = stod(strs_split.at(6));
        gps_msg_.latlongheight_error.y = stod(strs_split.at(7));
        gps_msg_.latlongheight_error.z = stod(strs_split.at(8));
      }

      if (line_count_ == 2)
      {
        pub_request_ = 1;
        line_count_ = 0;
      }
    }
  }
  catch(const std::exception& e)
  {
    static int i = 0;
    cout << "exception: " << i++ << endl;
    cout << "read line: " << str_line;
    std::cerr << e.what() << '\n';
  }
}

void GpsDriver::createNmeaFile(const std::string &str_dir)
{
  std::string str_FileName = str_dir + devname_ + "_nmea_" + rosTimeToTimeString(ros::Time::now()) + ".log";
  logfile_nmea_.open( str_FileName.c_str(), std::ios_base::out );
  if (!logfile_nmea_.good())
  {
    std::cerr << "Failed to create NMEA log file" << std::endl;
    return;
  }
  cout << "Created NMEA log file: " << str_FileName << endl;
}

void GpsDriver::createEnuFile(const std::string &str_dir)
{
  std::string str_FileName = str_dir + devname_ + "_enu_" + rosTimeToTimeString(ros::Time::now()) + ".csv";
  logfile_enu_.open( str_FileName.c_str(), std::ios_base::out );
  if (!logfile_enu_.good())
  {
    std::cerr << "Failed to create ENU log file" << std::endl;
    return;
  }
  logfile_enu_ << "comtime [sec], gpstime[sec], east[m], north[m], up[m], lat[deg], long[deg], height[m], sig_lat[m], sig_long[m], sig_height[m], vel_cog[deg], vel_speed[m/s]" << endl;
  logfile_enu_ << "0,-1,0,0,0," << std::setprecision(18) << llh_origin_.at(0) << "," << llh_origin_.at(1) << "," << llh_origin_.at(2) << ",0,0,0,0,0" << endl;  // origin point of lat-long-height
  cout << "Created ENU log file: " << str_FileName << endl;
}

void GpsDriver::saveToNmeaFile(std::string &str_line)
{
  logfile_nmea_ << str_line;
}

void GpsDriver::saveToEnuFile()
{
  logfile_enu_ << gps_msg_.header.stamp.sec
    << "." << std::setfill('0') << std::setw(9) << gps_msg_.header.stamp.nsec 
    << "," << std::setprecision(18) << gps_msg_.status.time 
    << "," << gps_msg_.enu_position.x << "," << gps_msg_.enu_position.y  << "," << gps_msg_.enu_position.z
    << "," << gps_msg_.latlongheight.x << "," << gps_msg_.latlongheight.y << "," << gps_msg_.latlongheight.z
    << "," << std::setprecision(2) << gps_msg_.latlongheight_error.x << "," << gps_msg_.latlongheight_error.y << "," << gps_msg_.latlongheight_error.z 
    << "," << std::setprecision(18) << gps_msg_.velocity.x << "," << gps_msg_.velocity.y
    << endl; 

}

std::string GpsDriver::rosTimeToTimeString(ros::Time t)
{
  boost::posix_time::ptime ptime = t.toBoost();
  boost::posix_time::hours gmtplus(7);
  ptime += gmtplus;
  std::string str_iso_time = boost::posix_time::to_iso_string(ptime);
  std::string str_get = str_iso_time.substr(0,8) + "_" + str_iso_time.substr(9,6) ;
  return str_get;
}

};
