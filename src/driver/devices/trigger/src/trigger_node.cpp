#include <unistd.h>
#include <ros/ros.h>
#include <TriggerDriver.hpp>

using namespace std;
using namespace ns_trigger;

int main(int argc, char **argv)
{
  /* Import arguments */
  if(argc < 4) {
    cout << "Not enough arguments: --portname --shutter-time-miliseconds --use-slider" << endl;
    return -1;
  }
  string portname = argv[1];
  double T_shutter = atof(argv[2]); // in miliseconds
  if ((T_shutter < 0) | (T_shutter > 40))
  {
    cout << "--shutter-time is only valid from 0 to 40" << endl;
    return -1;
  }
  bool use_slider = (atoi(argv[3]) != 0);
  ROS_INFO_STREAM("use_slider: " << use_slider); 

  /* Run trigger driver */
  ros::init(argc, argv, "trigger_driver");
  ros::NodeHandle nh;
  TriggerDriver trigger_drv(nh, portname, T_shutter, use_slider);
  trigger_drv.run();

  return 0;
}
