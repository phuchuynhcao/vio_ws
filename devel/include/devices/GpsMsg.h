// Generated by gencpp from file devices/GpsMsg.msg
// DO NOT EDIT!


#ifndef DEVICES_MESSAGE_GPSMSG_H
#define DEVICES_MESSAGE_GPSMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <devices/GpsStatus.h>

namespace devices
{
template <class ContainerAllocator>
struct GpsMsg_
{
  typedef GpsMsg_<ContainerAllocator> Type;

  GpsMsg_()
    : header()
    , latlongheight()
    , latlongheight_error()
    , llh_origin()
    , enu_position()
    , velocity()
    , velocity_error()
    , status()  {
    }
  GpsMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , latlongheight(_alloc)
    , latlongheight_error(_alloc)
    , llh_origin(_alloc)
    , enu_position(_alloc)
    , velocity(_alloc)
    , velocity_error(_alloc)
    , status(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _latlongheight_type;
  _latlongheight_type latlongheight;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _latlongheight_error_type;
  _latlongheight_error_type latlongheight_error;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _llh_origin_type;
  _llh_origin_type llh_origin;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _enu_position_type;
  _enu_position_type enu_position;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _velocity_error_type;
  _velocity_error_type velocity_error;

   typedef  ::devices::GpsStatus_<ContainerAllocator>  _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::devices::GpsMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::devices::GpsMsg_<ContainerAllocator> const> ConstPtr;

}; // struct GpsMsg_

typedef ::devices::GpsMsg_<std::allocator<void> > GpsMsg;

typedef boost::shared_ptr< ::devices::GpsMsg > GpsMsgPtr;
typedef boost::shared_ptr< ::devices::GpsMsg const> GpsMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::devices::GpsMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::devices::GpsMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace devices

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'devices': ['/home/nguyen/vio_ws/src/driver/devices/slider/msg', '/home/nguyen/vio_ws/src/driver/devices/span/msg', '/home/nguyen/vio_ws/src/driver/devices/wheel/msg', '/home/nguyen/vio_ws/src/driver/devices/gps/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::devices::GpsMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::devices::GpsMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::devices::GpsMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::devices::GpsMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::devices::GpsMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::devices::GpsMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::devices::GpsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f47c7c77f2a7901121e8d2f16bd8f0f5";
  }

  static const char* value(const ::devices::GpsMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf47c7c77f2a79011ULL;
  static const uint64_t static_value2 = 0x21e8d2f16bd8f0f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::devices::GpsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "devices/GpsMsg";
  }

  static const char* value(const ::devices::GpsMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::devices::GpsMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
geometry_msgs/Vector3 latlongheight\n\
geometry_msgs/Vector3 latlongheight_error\n\
geometry_msgs/Vector3 llh_origin\n\
geometry_msgs/Vector3 enu_position\n\
geometry_msgs/Vector3 velocity # <course-over-ground> <speed-over-ground> <up speed>\n\
geometry_msgs/Vector3 velocity_error\n\
GpsStatus status\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: devices/GpsStatus\n\
string date\n\
float64 time\n\
int16 numsat\n\
int16 quality\n\
float64 hdop\n\
";
  }

  static const char* value(const ::devices::GpsMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::devices::GpsMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.latlongheight);
      stream.next(m.latlongheight_error);
      stream.next(m.llh_origin);
      stream.next(m.enu_position);
      stream.next(m.velocity);
      stream.next(m.velocity_error);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GpsMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::devices::GpsMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::devices::GpsMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "latlongheight: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.latlongheight);
    s << indent << "latlongheight_error: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.latlongheight_error);
    s << indent << "llh_origin: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.llh_origin);
    s << indent << "enu_position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.enu_position);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "velocity_error: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity_error);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::devices::GpsStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DEVICES_MESSAGE_GPSMSG_H