#include <ros/ros.h>
#include <GpsDriver.hpp>

using namespace std;
using namespace ns_gps;

int main(int argc, char **argv)
{
  if (argc < 4)
  {
    cout << "gps_driver: Missing argument: --device-name --port-name --baudrate" << endl;
  }

  ros::init(argc, argv, "gps_driver");
  ros::NodeHandle nh;
  
  GpsDriver gpsDrv(nh, argv[1], argv[2], argv[3]);
  
  // Run or Test
  gpsDrv.run();
  //gpsDrv.test();
}
