// Generated by gencpp from file kr_mav_manager/CompoundLissajousRequest.msg
// DO NOT EDIT!


#ifndef KR_MAV_MANAGER_MESSAGE_COMPOUNDLISSAJOUSREQUEST_H
#define KR_MAV_MANAGER_MESSAGE_COMPOUNDLISSAJOUSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kr_mav_manager
{
template <class ContainerAllocator>
struct CompoundLissajousRequest_
{
  typedef CompoundLissajousRequest_<ContainerAllocator> Type;

  CompoundLissajousRequest_()
    : x_amp()
    , y_amp()
    , z_amp()
    , yaw_amp()
    , x_num_periods()
    , y_num_periods()
    , z_num_periods()
    , yaw_num_periods()
    , period()
    , num_cycles()
    , ramp_time()  {
      x_amp.assign(0.0);

      y_amp.assign(0.0);

      z_amp.assign(0.0);

      yaw_amp.assign(0.0);

      x_num_periods.assign(0.0);

      y_num_periods.assign(0.0);

      z_num_periods.assign(0.0);

      yaw_num_periods.assign(0.0);

      period.assign(0.0);

      num_cycles.assign(0.0);

      ramp_time.assign(0.0);
  }
  CompoundLissajousRequest_(const ContainerAllocator& _alloc)
    : x_amp()
    , y_amp()
    , z_amp()
    , yaw_amp()
    , x_num_periods()
    , y_num_periods()
    , z_num_periods()
    , yaw_num_periods()
    , period()
    , num_cycles()
    , ramp_time()  {
  (void)_alloc;
      x_amp.assign(0.0);

      y_amp.assign(0.0);

      z_amp.assign(0.0);

      yaw_amp.assign(0.0);

      x_num_periods.assign(0.0);

      y_num_periods.assign(0.0);

      z_num_periods.assign(0.0);

      yaw_num_periods.assign(0.0);

      period.assign(0.0);

      num_cycles.assign(0.0);

      ramp_time.assign(0.0);
  }



   typedef boost::array<float, 2>  _x_amp_type;
  _x_amp_type x_amp;

   typedef boost::array<float, 2>  _y_amp_type;
  _y_amp_type y_amp;

   typedef boost::array<float, 2>  _z_amp_type;
  _z_amp_type z_amp;

   typedef boost::array<float, 2>  _yaw_amp_type;
  _yaw_amp_type yaw_amp;

   typedef boost::array<float, 2>  _x_num_periods_type;
  _x_num_periods_type x_num_periods;

   typedef boost::array<float, 2>  _y_num_periods_type;
  _y_num_periods_type y_num_periods;

   typedef boost::array<float, 2>  _z_num_periods_type;
  _z_num_periods_type z_num_periods;

   typedef boost::array<float, 2>  _yaw_num_periods_type;
  _yaw_num_periods_type yaw_num_periods;

   typedef boost::array<float, 2>  _period_type;
  _period_type period;

   typedef boost::array<float, 2>  _num_cycles_type;
  _num_cycles_type num_cycles;

   typedef boost::array<float, 2>  _ramp_time_type;
  _ramp_time_type ramp_time;





  typedef boost::shared_ptr< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CompoundLissajousRequest_

typedef ::kr_mav_manager::CompoundLissajousRequest_<std::allocator<void> > CompoundLissajousRequest;

typedef boost::shared_ptr< ::kr_mav_manager::CompoundLissajousRequest > CompoundLissajousRequestPtr;
typedef boost::shared_ptr< ::kr_mav_manager::CompoundLissajousRequest const> CompoundLissajousRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator1> & lhs, const ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator2> & rhs)
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
bool operator!=(const ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator1> & lhs, const ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_mav_manager

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8fec6f23aca895a5b1636d8d38d20fe5";
  }

  static const char* value(const ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8fec6f23aca895a5ULL;
  static const uint64_t static_value2 = 0xb1636d8d38d20fe5ULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_mav_manager/CompoundLissajousRequest";
  }

  static const char* value(const ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[2] x_amp\n"
"float32[2] y_amp\n"
"float32[2] z_amp\n"
"float32[2] yaw_amp\n"
"float32[2] x_num_periods\n"
"float32[2] y_num_periods\n"
"float32[2] z_num_periods\n"
"float32[2] yaw_num_periods\n"
"float32[2] period\n"
"float32[2] num_cycles\n"
"float32[2] ramp_time\n"
;
  }

  static const char* value(const ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> >
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
  }; // struct CompoundLissajousRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_mav_manager::CompoundLissajousRequest_<ContainerAllocator>& v)
  {
    s << indent << "x_amp[]" << std::endl;
    for (size_t i = 0; i < v.x_amp.size(); ++i)
    {
      s << indent << "  x_amp[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.x_amp[i]);
    }
    s << indent << "y_amp[]" << std::endl;
    for (size_t i = 0; i < v.y_amp.size(); ++i)
    {
      s << indent << "  y_amp[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.y_amp[i]);
    }
    s << indent << "z_amp[]" << std::endl;
    for (size_t i = 0; i < v.z_amp.size(); ++i)
    {
      s << indent << "  z_amp[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.z_amp[i]);
    }
    s << indent << "yaw_amp[]" << std::endl;
    for (size_t i = 0; i < v.yaw_amp.size(); ++i)
    {
      s << indent << "  yaw_amp[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.yaw_amp[i]);
    }
    s << indent << "x_num_periods[]" << std::endl;
    for (size_t i = 0; i < v.x_num_periods.size(); ++i)
    {
      s << indent << "  x_num_periods[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.x_num_periods[i]);
    }
    s << indent << "y_num_periods[]" << std::endl;
    for (size_t i = 0; i < v.y_num_periods.size(); ++i)
    {
      s << indent << "  y_num_periods[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.y_num_periods[i]);
    }
    s << indent << "z_num_periods[]" << std::endl;
    for (size_t i = 0; i < v.z_num_periods.size(); ++i)
    {
      s << indent << "  z_num_periods[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.z_num_periods[i]);
    }
    s << indent << "yaw_num_periods[]" << std::endl;
    for (size_t i = 0; i < v.yaw_num_periods.size(); ++i)
    {
      s << indent << "  yaw_num_periods[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.yaw_num_periods[i]);
    }
    s << indent << "period[]" << std::endl;
    for (size_t i = 0; i < v.period.size(); ++i)
    {
      s << indent << "  period[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.period[i]);
    }
    s << indent << "num_cycles[]" << std::endl;
    for (size_t i = 0; i < v.num_cycles.size(); ++i)
    {
      s << indent << "  num_cycles[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.num_cycles[i]);
    }
    s << indent << "ramp_time[]" << std::endl;
    for (size_t i = 0; i < v.ramp_time.size(); ++i)
    {
      s << indent << "  ramp_time[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.ramp_time[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_MAV_MANAGER_MESSAGE_COMPOUNDLISSAJOUSREQUEST_H
