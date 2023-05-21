#include <stdio.h>
#include <fstream>
#include <sstream>

#include <boost/foreach.hpp>

#include <ros/ros.h>
#include <rosbag/bag.h>
#include <rosbag/view.h>
#include <devices/SpanNav.h>
#include <devices/RtkMsg.h>

using namespace std;

void writeSpanLogFile(rosbag::View &view, string bagFileName)
{
  std::string logFileName = bagFileName.substr(0, bagFileName.size() - 4) + "_span.log";
  cout << logFileName << endl;
  std::fstream logFile(logFileName.c_str(), std::ios_base::out);

  if (!logFile.good())
  {
    std::cout << "Failed to create log file" << std::endl;
    return;
  }

  rosbag::View::iterator view_iterator = view.begin();
  
  cout << "Converting Span data from bag to log file..." << endl;

  while (view_iterator != view.end())
  {
    devices::SpanNavPtr msg_span = view_iterator->instantiate<devices::SpanNav>();

    //cout << msg_span->raw_string << endl;
    logFile << msg_span->raw_string;    
    view_iterator++;
  }
  logFile.close();

  cout << "Finished." << endl;
}

void writeRtkLogFile(rosbag::View &view, string bagFileName)
{
  std::string logFileName = bagFileName.substr(0, bagFileName.size() - 4) + "_rtk.log";
  cout << logFileName << endl;
  std::fstream logFile(logFileName.c_str(), std::ios_base::out);

  if (!logFile.good())
  {
    std::cout << "Failed to create log file" << std::endl;
    return;
  }

  rosbag::View::iterator view_iterator = view.begin();
  
  cout << "Converting Rtk data from bag to log file..." << endl;

  while (view_iterator != view.end())
  {
    devices::RtkMsgPtr msg_rtk = view_iterator->instantiate<devices::RtkMsg>();

    logFile << msg_rtk->raw_string;    
    view_iterator++;
  }
  logFile.close();

  cout << "Finished." << endl;
}

int main(int argc, char **argv)
{
    if (argc < 3)
    {
      cout << "Not enough input: " << endl
      << "   --bag      : the directory to .bag file" << endl
      << "   --logtype  : the type of output .log file" << endl
      << "                0: SPAN, 1: RTK" << endl;
      return 0;
    }

    /* Load bag file */
    std::string bagFileName(argv[1]);
    rosbag::Bag bag(bagFileName, rosbag::bagmode::Read);

    /* Read data bag file, and convert to log file*/
    if (stoi(argv[2]) == 0)
    {
      std::string span_topic("/span");
      rosbag::View view_span(bag, rosbag::TopicQuery(span_topic));
      writeSpanLogFile(view_span, bagFileName);
    }
    else if (stoi(argv[2]) == 1)
    {
      std::string rtk_topic("/rtk");
      rosbag::View view_rtk(bag, rosbag::TopicQuery(rtk_topic));
      writeRtkLogFile(view_rtk, bagFileName);
    }

    return 0;
}