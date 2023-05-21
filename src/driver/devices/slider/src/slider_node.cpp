// slider.cpp

#include <stdio.h>
#include <fstream>
#include <ros/ros.h>
#include <slider/SliderDriver.hpp>

using namespace std;
using namespace slider_ns;

int main(int argc, char **argv)
{
  if (argc < 2)
  {
    cout << "Slider dirver: not enough input. Usage: --portname" << endl;
    return 0;
  }

  ros::init(argc, argv, "slider_driver");
  ros::NodeHandle nh;

  SliderDriver sliderDrv(nh, argv[1]);
  sliderDrv.run();

  return 0;
}