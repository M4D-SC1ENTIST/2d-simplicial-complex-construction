// Generated by gencpp from file kr_tracker_msgs/VelocityTrackerFeedback.msg
// DO NOT EDIT!


#ifndef KR_TRACKER_MSGS_MESSAGE_VELOCITYTRACKERFEEDBACK_H
#define KR_TRACKER_MSGS_MESSAGE_VELOCITYTRACKERFEEDBACK_H


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
struct VelocityTrackerFeedback_
{
  typedef VelocityTrackerFeedback_<ContainerAllocator> Type;

  VelocityTrackerFeedback_()
    : duration(0.0)  {
    }
  VelocityTrackerFeedback_(const ContainerAllocator& _alloc)
    : duration(0.0)  {
  (void)_alloc;
    }



   typedef double _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct VelocityTrackerFeedback_

typedef ::kr_tracker_msgs::VelocityTrackerFeedback_<std::allocator<void> > VelocityTrackerFeedback;

typedef boost::shared_ptr< ::kr_tracker_msgs::VelocityTrackerFeedback > VelocityTrackerFeedbackPtr;
typedef boost::shared_ptr< ::kr_tracker_msgs::VelocityTrackerFeedback const> VelocityTrackerFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.duration == rhs.duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_tracker_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "efce4fd63555f8abdd034fb55c87e5aa";
  }

  static const char* value(const ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xefce4fd63555f8abULL;
  static const uint64_t static_value2 = 0xdd034fb55c87e5aaULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_tracker_msgs/VelocityTrackerFeedback";
  }

  static const char* value(const ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"# time in tracker\n"
"float64 duration\n"
"\n"
;
  }

  static const char* value(const ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VelocityTrackerFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_tracker_msgs::VelocityTrackerFeedback_<ContainerAllocator>& v)
  {
    s << indent << "duration: ";
    Printer<double>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_TRACKER_MSGS_MESSAGE_VELOCITYTRACKERFEEDBACK_H
