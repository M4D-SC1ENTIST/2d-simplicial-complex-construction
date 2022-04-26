// Generated by gencpp from file kr_tracker_msgs/VelocityTrackerResult.msg
// DO NOT EDIT!


#ifndef KR_TRACKER_MSGS_MESSAGE_VELOCITYTRACKERRESULT_H
#define KR_TRACKER_MSGS_MESSAGE_VELOCITYTRACKERRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kr_tracker_msgs
{
template <class ContainerAllocator>
struct VelocityTrackerResult_
{
  typedef VelocityTrackerResult_<ContainerAllocator> Type;

  VelocityTrackerResult_()
    : vx(0.0)
    , vy(0.0)
    , vz(0.0)
    , vyaw(0.0)
    , use_position_gains(false)
    , duration(0.0)
    , length(0.0)  {
    }
  VelocityTrackerResult_(const ContainerAllocator& _alloc)
    : vx(0.0)
    , vy(0.0)
    , vz(0.0)
    , vyaw(0.0)
    , use_position_gains(false)
    , duration(0.0)
    , length(0.0)  {
  (void)_alloc;
    }



   typedef double _vx_type;
  _vx_type vx;

   typedef double _vy_type;
  _vy_type vy;

   typedef double _vz_type;
  _vz_type vz;

   typedef double _vyaw_type;
  _vyaw_type vyaw;

   typedef uint8_t _use_position_gains_type;
  _use_position_gains_type use_position_gains;

   typedef double _duration_type;
  _duration_type duration;

   typedef double _length_type;
  _length_type length;





  typedef boost::shared_ptr< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> const> ConstPtr;

}; // struct VelocityTrackerResult_

typedef ::kr_tracker_msgs::VelocityTrackerResult_<std::allocator<void> > VelocityTrackerResult;

typedef boost::shared_ptr< ::kr_tracker_msgs::VelocityTrackerResult > VelocityTrackerResultPtr;
typedef boost::shared_ptr< ::kr_tracker_msgs::VelocityTrackerResult const> VelocityTrackerResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator2> & rhs)
{
  return lhs.vx == rhs.vx &&
    lhs.vy == rhs.vy &&
    lhs.vz == rhs.vz &&
    lhs.vyaw == rhs.vyaw &&
    lhs.use_position_gains == rhs.use_position_gains &&
    lhs.duration == rhs.duration &&
    lhs.length == rhs.length;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_tracker_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bacc048b855c2d3ab27b483c690b44f0";
  }

  static const char* value(const ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbacc048b855c2d3aULL;
  static const uint64_t static_value2 = 0xb27b483c690b44f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_tracker_msgs/VelocityTrackerResult";
  }

  static const char* value(const ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"# send back goal\n"
"float64 vx\n"
"float64 vy\n"
"float64 vz\n"
"float64 vyaw\n"
"bool use_position_gains\n"
"# time duration of the trajectory\n"
"float64 duration \n"
"# approximate arc length of the trajectory (ie. sum of distances between position commands)\n"
"float64 length \n"
;
  }

  static const char* value(const ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vx);
      stream.next(m.vy);
      stream.next(m.vz);
      stream.next(m.vyaw);
      stream.next(m.use_position_gains);
      stream.next(m.duration);
      stream.next(m.length);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VelocityTrackerResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_tracker_msgs::VelocityTrackerResult_<ContainerAllocator>& v)
  {
    s << indent << "vx: ";
    Printer<double>::stream(s, indent + "  ", v.vx);
    s << indent << "vy: ";
    Printer<double>::stream(s, indent + "  ", v.vy);
    s << indent << "vz: ";
    Printer<double>::stream(s, indent + "  ", v.vz);
    s << indent << "vyaw: ";
    Printer<double>::stream(s, indent + "  ", v.vyaw);
    s << indent << "use_position_gains: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_position_gains);
    s << indent << "duration: ";
    Printer<double>::stream(s, indent + "  ", v.duration);
    s << indent << "length: ";
    Printer<double>::stream(s, indent + "  ", v.length);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_TRACKER_MSGS_MESSAGE_VELOCITYTRACKERRESULT_H
