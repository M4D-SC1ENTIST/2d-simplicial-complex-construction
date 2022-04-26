// Generated by gencpp from file kr_tracker_msgs/LissajousTrackerGoal.msg
// DO NOT EDIT!


#ifndef KR_TRACKER_MSGS_MESSAGE_LISSAJOUSTRACKERGOAL_H
#define KR_TRACKER_MSGS_MESSAGE_LISSAJOUSTRACKERGOAL_H


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
struct LissajousTrackerGoal_
{
  typedef LissajousTrackerGoal_<ContainerAllocator> Type;

  LissajousTrackerGoal_()
    : x_amp(0.0)
    , y_amp(0.0)
    , z_amp(0.0)
    , yaw_amp(0.0)
    , x_num_periods(0.0)
    , y_num_periods(0.0)
    , z_num_periods(0.0)
    , yaw_num_periods(0.0)
    , period(0.0)
    , num_cycles(0.0)
    , ramp_time(0.0)  {
    }
  LissajousTrackerGoal_(const ContainerAllocator& _alloc)
    : x_amp(0.0)
    , y_amp(0.0)
    , z_amp(0.0)
    , yaw_amp(0.0)
    , x_num_periods(0.0)
    , y_num_periods(0.0)
    , z_num_periods(0.0)
    , yaw_num_periods(0.0)
    , period(0.0)
    , num_cycles(0.0)
    , ramp_time(0.0)  {
  (void)_alloc;
    }



   typedef double _x_amp_type;
  _x_amp_type x_amp;

   typedef double _y_amp_type;
  _y_amp_type y_amp;

   typedef double _z_amp_type;
  _z_amp_type z_amp;

   typedef double _yaw_amp_type;
  _yaw_amp_type yaw_amp;

   typedef double _x_num_periods_type;
  _x_num_periods_type x_num_periods;

   typedef double _y_num_periods_type;
  _y_num_periods_type y_num_periods;

   typedef double _z_num_periods_type;
  _z_num_periods_type z_num_periods;

   typedef double _yaw_num_periods_type;
  _yaw_num_periods_type yaw_num_periods;

   typedef double _period_type;
  _period_type period;

   typedef double _num_cycles_type;
  _num_cycles_type num_cycles;

   typedef double _ramp_time_type;
  _ramp_time_type ramp_time;





  typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> const> ConstPtr;

}; // struct LissajousTrackerGoal_

typedef ::kr_tracker_msgs::LissajousTrackerGoal_<std::allocator<void> > LissajousTrackerGoal;

typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousTrackerGoal > LissajousTrackerGoalPtr;
typedef boost::shared_ptr< ::kr_tracker_msgs::LissajousTrackerGoal const> LissajousTrackerGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator2> & rhs)
{
  return lhs.x_amp == rhs.x_amp &&
    lhs.y_amp == rhs.y_amp &&
    lhs.z_amp == rhs.z_amp &&
    lhs.yaw_amp == rhs.yaw_amp &&
    lhs.x_num_periods == rhs.x_num_periods &&
    lhs.y_num_periods == rhs.y_num_periods &&
    lhs.z_num_periods == rhs.z_num_periods &&
    lhs.yaw_num_periods == rhs.yaw_num_periods &&
    lhs.period == rhs.period &&
    lhs.num_cycles == rhs.num_cycles &&
    lhs.ramp_time == rhs.ramp_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator1> & lhs, const ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_tracker_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "930974c2d188c41daaa75abb01f40727";
  }

  static const char* value(const ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x930974c2d188c41dULL;
  static const uint64_t static_value2 = 0xaaa75abb01f40727ULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_tracker_msgs/LissajousTrackerGoal";
  }

  static const char* value(const ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"float64 x_amp\n"
"float64 y_amp\n"
"float64 z_amp\n"
"float64 yaw_amp\n"
"float64 x_num_periods\n"
"float64 y_num_periods\n"
"float64 z_num_periods\n"
"float64 yaw_num_periods\n"
"float64 period\n"
"float64 num_cycles\n"
"float64 ramp_time\n"
;
  }

  static const char* value(const ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x_amp);
      stream.next(m.y_amp);
      stream.next(m.z_amp);
      stream.next(m.yaw_amp);
      stream.next(m.x_num_periods);
      stream.next(m.y_num_periods);
      stream.next(m.z_num_periods);
      stream.next(m.yaw_num_periods);
      stream.next(m.period);
      stream.next(m.num_cycles);
      stream.next(m.ramp_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LissajousTrackerGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_tracker_msgs::LissajousTrackerGoal_<ContainerAllocator>& v)
  {
    s << indent << "x_amp: ";
    Printer<double>::stream(s, indent + "  ", v.x_amp);
    s << indent << "y_amp: ";
    Printer<double>::stream(s, indent + "  ", v.y_amp);
    s << indent << "z_amp: ";
    Printer<double>::stream(s, indent + "  ", v.z_amp);
    s << indent << "yaw_amp: ";
    Printer<double>::stream(s, indent + "  ", v.yaw_amp);
    s << indent << "x_num_periods: ";
    Printer<double>::stream(s, indent + "  ", v.x_num_periods);
    s << indent << "y_num_periods: ";
    Printer<double>::stream(s, indent + "  ", v.y_num_periods);
    s << indent << "z_num_periods: ";
    Printer<double>::stream(s, indent + "  ", v.z_num_periods);
    s << indent << "yaw_num_periods: ";
    Printer<double>::stream(s, indent + "  ", v.yaw_num_periods);
    s << indent << "period: ";
    Printer<double>::stream(s, indent + "  ", v.period);
    s << indent << "num_cycles: ";
    Printer<double>::stream(s, indent + "  ", v.num_cycles);
    s << indent << "ramp_time: ";
    Printer<double>::stream(s, indent + "  ", v.ramp_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_TRACKER_MSGS_MESSAGE_LISSAJOUSTRACKERGOAL_H
