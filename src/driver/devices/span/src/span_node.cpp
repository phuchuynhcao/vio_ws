#include <ros/ros.h>
#include <SpanDriver.hpp>

using namespace std;
using namespace ns_span;

int main(int argc, char **argv)
{
  if (argc < 2)
  {
    cout << "span_driver: Missing argument: --portname" << endl;
  }

  ros::init(argc, argv, "span_driver");
  ros::NodeHandle nh;
  
  SpanDriver spanDrv(nh, argv[1]);
  spanDrv.run();
}
