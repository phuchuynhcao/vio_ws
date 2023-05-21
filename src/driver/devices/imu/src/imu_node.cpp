#include <imu/ImuDriver.hpp>
#include <string>

using namespace std;
using namespace imu_ns;

int main(int argc, char **argv)
{
  if (argc < 2)
  {
    cout << "imu_driver: Missing argument: --portname" << endl;
  }

  ros::init(argc, argv, "imu_driver");
  ros::NodeHandle nh;
  
  ImuDriver imuDrv(nh, argv[1]);
  imuDrv.run();
}
