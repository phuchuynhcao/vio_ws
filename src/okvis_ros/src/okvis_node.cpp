/*********************************************************************************
 *  OKVIS - Open Keyframe-based Visual-Inertial SLAM
 *  Copyright (c) 2015, Autonomous Systems Lab / ETH Zurich
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are met:
 * 
 *   * Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above copyright notice,
 *     this list of conditions and the following disclaimer in the documentation
 *     and/or other materials provided with the distribution.
 *   * Neither the name of Autonomous Systems Lab / ETH Zurich nor the names of
 *     its contributors may be used to endorse or promote products derived from
 *     this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 *  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 *  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 *  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 *  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 *  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 *  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 *  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 *  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 *  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 *  Created on: Mar 23, 2012
 *      Author: Stefan Leutenegger (s.leutenegger@imperial.ac.uk)
 *    Modified: Andreas Forster (an.forster@gmail.com)
 *********************************************************************************/

/**
 * @file okvis_node.cpp
 * @brief This file includes the ROS node implementation.
 * @author Stefan Leutenegger
 * @author Andreas Forster
 */

#include <functional>
#include <iostream>
#include <fstream>
#include <stdlib.h>

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wnon-virtual-dtor"
#include <ros/ros.h>
#pragma GCC diagnostic pop
#include <image_transport/image_transport.h>
#include "sensor_msgs/Imu.h"

#include <glog/logging.h>

#include <okvis/Subscriber.hpp>
#include <okvis/Publisher.hpp>
#include <okvis/RosParametersReader.hpp>
#include <okvis/ThreadedKFVio.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

std::string rosTimeToTimeString(ros::Time t)
{
  boost::posix_time::ptime ptime = t.toBoost();
  boost::posix_time::hours gmtplus(7);
  ptime += gmtplus;
  std::string str_iso_time = boost::posix_time::to_iso_string(ptime);
  std::string str_get = str_iso_time.substr(0,8) + "_" + str_iso_time.substr(9,6);
  return str_get;
}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "okvis_node");

  // // set up the node
  ros::NodeHandle nh("okvis_node");

  // initialise logging
  google::InitGoogleLogging(argv[0]);
  FLAGS_stderrthreshold = 0; // INFO: 0, WARNING: 1, ERROR: 2, FATAL: 3
  FLAGS_colorlogtostderr = 1;

  // publisher
  okvis::Publisher publisher(nh);

  // read configuration file
  std::string configFilename;
  if(!nh.getParam("config_filename",configFilename)) {
     LOG(ERROR) << "Please specify filename of configuration!";
     return 1;
  }
  okvis::RosParametersReader vio_parameters_reader(configFilename);
  okvis::VioParameters parameters;
  vio_parameters_reader.getParameters(parameters);

  okvis::ThreadedKFVio okvis_estimator(parameters);

  // setCallback function: pass the pointer of callback function of the Publisher into the ThreadKFVio (specificly the VioInterface)
  // setCallback function only execute the last callback that was set into it. we must choose between publishing ros messgages or writing to csv file, the cannot be done at the same time
  //okvis_estimator.setFullStateCallback(std::bind(&okvis::Publisher::publishFullStateAsCallback,&publisher,std::placeholders::_1,std::placeholders::_2,std::placeholders::_3,std::placeholders::_4));
  //okvis_estimator.setLandmarksCallback(std::bind(&okvis::Publisher::publishLandmarksAsCallback,&publisher,std::placeholders::_1,std::placeholders::_2,std::placeholders::_3));
  //okvis_estimator.setStateCallback(std::bind(&okvis::Publisher::publishStateAsCallback,&publisher,std::placeholders::_1,std::placeholders::_2));
  //okvis_estimator.setFullStateCallback(std::bind(&okvis::Publisher::csvSaveFullStateAsCallback, &publisher, std::placeholders::_1,std::placeholders::_2,std::placeholders::_3,std::placeholders::_4));
  //okvis_estimator.setLandmarksCallback(std::bind(&okvis::Publisher::csvSaveLandmarksAsCallback,&publisher,std::placeholders::_1,std::placeholders::_2,std::placeholders::_3));
  okvis_estimator.setFullStateCallback2(std::bind(&okvis::Publisher::csvSaveFullStateAsCallback2,
                      &publisher,std::placeholders::_1,std::placeholders::_2,std::placeholders::_3,std::placeholders::_4,std::placeholders::_5));

  publisher.setParameters(parameters); // pass the specified publishing stuff

  // subscriber: subcribes input data topics
  okvis::Subscriber subscriber(nh, &okvis_estimator, vio_parameters_reader);

  // publisher: save output estimation to csv file
  std::string strTime = rosTimeToTimeString(ros::Time::now());

  if(! publisher.setCsvFile("/home/nguyen/okvis_result/okvis_estimation_online_LT_" + strTime + ".csv") )  {
    LOG(ERROR) << "Create csv file failed";
  }

  // if (! publisher.setLandmarksCsvFile("/home/nguyen/okvis_result/okvis_landmarks_" + strTime + ".csv") ) {
  //   LOG(ERROR) << "Create landmark file failed";
  // }

  // if (! publisher.setLogTimeFile("/home/nguyen/okvis_result/okvis_timers_" + strTime + ".log") ) {
  //   LOG(ERROR) << "Create time log file failed";
  // }

  ros::spin();
  
  // while (ros::ok()) {
  //   ros::spinOnce();
	//  okvis_estimator.display();
  // }

  return 0;
}
