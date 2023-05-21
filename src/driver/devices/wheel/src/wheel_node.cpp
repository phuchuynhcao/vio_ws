#include <ros/ros.h>
#include <WheelDriver.hpp>

using namespace std;
using namespace ns_wheel;

int main(int argc, char **argv)
{
  if (argc < 2)
  {
    cout << "wheel_driver: Missing argument: --portname" << endl;
  }

  ros::init(argc, argv, "wheel_driver");
  ros::NodeHandle nh;
  
  WheelDriver wheelDrv(nh, argv[1]);
  wheelDrv.run();
}
