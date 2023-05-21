#include <SpanDriver.hpp>
#include <fstream>
#include <rosbag/bag.h>

using namespace std;

namespace ns_span 
{

SpanDriver::SpanDriver(ros::NodeHandle nh, std::string portname):
  portname_(portname),
  nh_(nh)
{
}

SpanDriver::~SpanDriver()
{
}

void SpanDriver::run()
{
  if (!openSerial())  return;
  readData(); 
  //testReadDataFromFile();
}

bool SpanDriver::openSerial()
{
  try
  {
    serial_.setPort(portname_);
    serial_.setBaudrate(115200);
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

void SpanDriver::readData()
{
  /* Advertise topic to be published */
  pub_span_ = nh_.advertise<devices::SpanNav>("span",1000);
  
  /* Loop to read imu data */
  while(ros::ok())
  {
    str_read_ = serial_.readline(500, "\n");
    t_read_ = ros::Time::now(); 
    
    if ( !processDataAscii() ) 
    {
      ROS_ERROR_STREAM("Syntax error of span data");
    }
    else
    {
      pub_span_.publish(span_msg_);
    }
  }
}

/* 
 * @brief   Process the received data from SPAN (the log INSPVAX)
 * @input   str_read_ : one line read from the SPAN
 *          t_read_   : time stamp at when the message was read
 */
bool SpanDriver::processDataAscii()
{  
  uint pos_shp = str_read_.find("#");  // pos_shp: position of the sharp (#)
  if (pos_shp != 0) return 0;

  uint pos_sco = str_read_.find(";");  // pos_sco: position of the semicolon (;)
  if (pos_sco == std::string::npos) return 0;

  // uint pos_ast = str_read_.find("*");   // pos_ast : position of the asterisk (*)
  // if (pos_ast == std::string::npos) return 0;

  /* Find position of commas to split the span header */
  // uint pos_hd_cma [9];   // pos_hd_cma: position array of comma in span header field
  // uint pos_hd_cma_pre = pos_shp;  // where to start search
  // for (int i=0; i<9; i++)
  // {
  //   pos_hd_cma[i] = str_read_.find(",", pos_hd_cma_pre + 1);
  //   if (pos_hd_cma[i]  == std::string::npos) return 0;
  //   pos_hd_cma_pre = pos_hd_cma[i];
  // }

  /* Find position of commas to split the span data */
  uint pos_da_cma [22];   // pos_da_cma: position array of comma in span data field
  uint pos_da_cma_pre = pos_sco;  // where to start search
  for (int i=0; i<22; i++)
  {
    pos_da_cma[i] = str_read_.find(",", pos_da_cma_pre + 1);
    if (pos_da_cma[i]  == std::string::npos) return 0;
    pos_da_cma_pre = pos_da_cma[i];
  }
  
  /* Obtain the message header */
  // span_msg_.header.frame_id = "span";
  // span_msg_.header.stamp = t_read_;

  /* Obtain the span header */
  // span_msg_.span_header.message = getSubstring(str_read_, pos_shp+1, pos_hd_cma[0]);
  // span_msg_.span_header.port = getSubstring(str_read_, pos_hd_cma[0]+1, pos_hd_cma[1]);
  // span_msg_.span_header.idle_time = stof( getSubstring(str_read_, pos_hd_cma[2]+1, pos_hd_cma[3]) );
  // span_msg_.span_header.gps_status = getSubstring(str_read_, pos_hd_cma[3]+1, pos_hd_cma[4]);
  // span_msg_.span_header.week = (uint32_t) stol( getSubstring(str_read_, pos_hd_cma[4]+1, pos_hd_cma[5]) );
  // span_msg_.span_header.second = stod( getSubstring(str_read_, pos_hd_cma[5]+1, pos_hd_cma[6]) );
  // span_msg_.span_header.receiver_status = getSubstring(str_read_, pos_hd_cma[6]+1, pos_hd_cma[7]);
  // span_msg_.span_header.receiver_version = (uint16_t) stoi( getSubstring(str_read_, pos_hd_cma[8]+1, pos_sco) );

  /* Obtain the span data */
  // span_msg_.ins_status = getSubstring(str_read_, pos_sco+1, pos_da_cma[0]);
  // span_msg_.pos_type = getSubstring(str_read_, pos_da_cma[0]+1, pos_da_cma[1]); 
  // span_msg_.latitude = stod( getSubstring(str_read_, pos_da_cma[1]+1, pos_da_cma[2]) );
  // span_msg_.longtitude = stod( getSubstring(str_read_, pos_da_cma[2]+1, pos_da_cma[3]) );
  // span_msg_.height = stod( getSubstring(str_read_, pos_da_cma[3]+1, pos_da_cma[4]) );
  // span_msg_.undulation = stof( getSubstring(str_read_, pos_da_cma[4]+1, pos_da_cma[5]) );
  // span_msg_.vel_north = stod( getSubstring(str_read_, pos_da_cma[5]+1, pos_da_cma[6]) );
  // span_msg_.vel_east = stod( getSubstring(str_read_, pos_da_cma[6]+1, pos_da_cma[7]) );
  // span_msg_.vel_up = stod( getSubstring(str_read_, pos_da_cma[7]+1, pos_da_cma[8]) );
  // span_msg_.roll = stod( getSubstring(str_read_, pos_da_cma[8]+1, pos_da_cma[9]) );
  // span_msg_.pitch = stod( getSubstring(str_read_, pos_da_cma[9]+1, pos_da_cma[10]) );
  // span_msg_.azimuth = stod( getSubstring(str_read_, pos_da_cma[10]+1, pos_da_cma[11]) );
  // span_msg_.sigma_lat = stof( getSubstring(str_read_, pos_da_cma[11]+1, pos_da_cma[12]) );
  // span_msg_.sigma_long = stof( getSubstring(str_read_, pos_da_cma[12]+1, pos_da_cma[13]) );
  // span_msg_.sigma_height = stof( getSubstring(str_read_, pos_da_cma[13]+1, pos_da_cma[14]) );
  // span_msg_.sigma_vel_north = stof( getSubstring(str_read_, pos_da_cma[14]+1, pos_da_cma[15]) );
  // span_msg_.sigma_vel_east = stof( getSubstring(str_read_, pos_da_cma[15]+1, pos_da_cma[16]) );
  // span_msg_.sigma_vel_up = stof( getSubstring(str_read_, pos_da_cma[16]+1, pos_da_cma[17]) );
  // span_msg_.sigma_roll = stof( getSubstring(str_read_, pos_da_cma[17]+1, pos_da_cma[18]) );
  // span_msg_.sigma_pitch = stof( getSubstring(str_read_, pos_da_cma[18]+1, pos_da_cma[19]) );
  // span_msg_.sigma_azimuth = stof( getSubstring(str_read_, pos_da_cma[19]+1, pos_da_cma[20]) );
  // span_msg_.ext_sol_stat = getSubstring(str_read_, pos_da_cma[20]+1, pos_da_cma[21]);
  // span_msg_.time_since_update = stoi( getSubstring(str_read_, pos_da_cma[21]+1, pos_ast) );

  double sigma_lat = stof( getSubstring(str_read_, pos_da_cma[11]+1, pos_da_cma[12]) );
  double sigma_long = stof( getSubstring(str_read_, pos_da_cma[12]+1, pos_da_cma[13]) );
  double sigma_height = stof( getSubstring(str_read_, pos_da_cma[13]+1, pos_da_cma[14]) );

  /* Save the raw string to convert to text file later */
  span_msg_.raw_string = str_read_;
  span_msg_.header.stamp = t_read_ - ros::Duration(0, 25.087e6); // INSPVAXA message: 289 bytes, baudrate 115200 -> transmit delay 25.087 ms
  span_msg_.header.frame_id = "span";

  static int count=0;
  count++;
  if (count % 10 == 0)
  {
    ROS_INFO_STREAM( "SPAN data: " << count << endl
                    << "Sigma lat     : " << sigma_lat << endl
                    << "Sigma long    : " << sigma_long << endl
                    << "Sigma height  : " << sigma_height << endl
                    // << "---" << endl
                    // << "Sigma roll    : " << sigma_roll << endl
                    // << "Sigma pitch   : " << sigma_pitch << endl
                    // << "Sigma azimuth : " << .sigma_azimuth << endl
                    );
  }

  return 1;
}

std::string SpanDriver::getSubstring(std::string &str, uint from_index, uint to_index)
{
  return str.substr(from_index, to_index - from_index);
}

void SpanDriver::testReadDataFromFile()
{
  ifstream file("/home/nguyen/dataset/groundtruth/Square-A2_round-3-to-5_2020-03-24-15-05-42_span.log");
  if (!file)
  {
    ROS_ERROR_STREAM("Cannot open input file");
  }

  // string str_line;

  // std::string bagfile_o("/home/nguyen/dataset/groundtruth/Square-A2_round-3-to-5_2020-03-24-15-05-42_span_log_2.bag");
  // rosbag::Bag bag_o(bagfile_o, rosbag::bagmode::Write);
  // cout << "Writing span bag file...\r";

  // while( std::getline(file, str_line) )
  // {
  //   uint pos_sco = str_line.find(";");
  //   if (pos_sco == std::string::npos) return;
  //   uint pos_cma = str_line.find(",");
  //   if (pos_cma == std::string::npos) return;
    
  //   t_read_.sec = (uint32_t) stoul( str_line.substr(0, pos_cma) );
  //   t_read_.nsec = (uint32_t) stoul( str_line.substr(pos_cma+1, pos_sco) );
  //   str_read_ = getSubstring(str_line, pos_sco+1, str_line.length()); 

  //   if ( !processDataAscii() ) 
  //   {
  //     ROS_INFO_STREAM("Syntax error of span data");
  //   }

  //   bag_o.write("/span", span_msg_.header.stamp, span_msg_);
  // }
  // cout << endl;
}

};
