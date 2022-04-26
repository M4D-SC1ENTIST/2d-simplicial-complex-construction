// Generated by gencpp from file kr_mav_msgs/TRPYCommand.msg
// DO NOT EDIT!


#ifndef KR_MAV_MSGS_MESSAGE_TRPYCOMMAND_H
#define KR_MAV_MSGS_MESSAGE_TRPYCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <kr_mav_msgs/AuxCommand.h>

namespace kr_mav_msgs
{
template <class ContainerAllocator>
struct TRPYCommand_
{
  typedef TRPYCommand_<ContainerAllocator> Type;

  TRPYCommand_()
    : header()
    , thrust(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , angular_velocity()
    , kR()
    , kOm()
    , aux()  {
      kR.assign(0.0);

      kOm.assign(0.0);
  }
  TRPYCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , thrust(0.0)
    , roll(0.0)
    , pitch(0.0)
    , yaw(0.0)
    , angular_velocity(_alloc)
    , kR()
    , kOm()
    , aux(_alloc)  {
  (void)_alloc;
      kR.assign(0.0);

      kOm.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _thrust_type;
  _thrust_type thrust;

   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _angular_velocity_type;
  _angular_velocity_type angular_velocity;

   typedef boost::array<double, 3>  _kR_type;
  _kR_type kR;

   typedef boost::array<double, 3>  _kOm_type;
  _kOm_type kOm;

   typedef  ::kr_mav_msgs::AuxCommand_<ContainerAllocator>  _aux_type;
  _aux_type aux;





  typedef boost::shared_ptr< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> const> ConstPtr;

}; // struct TRPYCommand_

typedef ::kr_mav_msgs::TRPYCommand_<std::allocator<void> > TRPYCommand;

typedef boost::shared_ptr< ::kr_mav_msgs::TRPYCommand > TRPYCommandPtr;
typedef boost::shared_ptr< ::kr_mav_msgs::TRPYCommand const> TRPYCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_mav_msgs::TRPYCommand_<ContainerAllocator1> & lhs, const ::kr_mav_msgs::TRPYCommand_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.thrust == rhs.thrust &&
    lhs.roll == rhs.roll &&
    lhs.pitch == rhs.pitch &&
    lhs.yaw == rhs.yaw &&
    lhs.angular_velocity == rhs.angular_velocity &&
    lhs.kR == rhs.kR &&
    lhs.kOm == rhs.kOm &&
    lhs.aux == rhs.aux;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_mav_msgs::TRPYCommand_<ContainerAllocator1> & lhs, const ::kr_mav_msgs::TRPYCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_mav_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f80239b313b23c6da7a6269aae03beb6";
  }

  static const char* value(const ::kr_mav_msgs::TRPYCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf80239b313b23c6dULL;
  static const uint64_t static_value2 = 0xa7a6269aae03beb6ULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_mav_msgs/TRPYCommand";
  }

  static const char* value(const ::kr_mav_msgs::TRPYCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float64 thrust\n"
"float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
"geometry_msgs/Vector3 angular_velocity\n"
"float64[3] kR\n"
"float64[3] kOm\n"
"kr_mav_msgs/AuxCommand aux\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: kr_mav_msgs/AuxCommand\n"
"float64 current_yaw\n"
"float64 kf_correction\n"
"float64[2] angle_corrections # Trims for roll, pitch\n"
"bool enable_motors\n"
"bool use_external_yaw\n"
;
  }

  static const char* value(const ::kr_mav_msgs::TRPYCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.thrust);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
      stream.next(m.angular_velocity);
      stream.next(m.kR);
      stream.next(m.kOm);
      stream.next(m.aux);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TRPYCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_mav_msgs::TRPYCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_mav_msgs::TRPYCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "thrust: ";
    Printer<double>::stream(s, indent + "  ", v.thrust);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "angular_velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.angular_velocity);
    s << indent << "kR[]" << std::endl;
    for (size_t i = 0; i < v.kR.size(); ++i)
    {
      s << indent << "  kR[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.kR[i]);
    }
    s << indent << "kOm[]" << std::endl;
    for (size_t i = 0; i < v.kOm.size(); ++i)
    {
      s << indent << "  kOm[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.kOm[i]);
    }
    s << indent << "aux: ";
    s << std::endl;
    Printer< ::kr_mav_msgs::AuxCommand_<ContainerAllocator> >::stream(s, indent + "  ", v.aux);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_MAV_MSGS_MESSAGE_TRPYCOMMAND_H