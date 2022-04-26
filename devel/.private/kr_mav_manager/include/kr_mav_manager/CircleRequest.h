// Generated by gencpp from file kr_mav_manager/CircleRequest.msg
// DO NOT EDIT!


#ifndef KR_MAV_MANAGER_MESSAGE_CIRCLEREQUEST_H
#define KR_MAV_MANAGER_MESSAGE_CIRCLEREQUEST_H


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
struct CircleRequest_
{
  typedef CircleRequest_<ContainerAllocator> Type;

  CircleRequest_()
    : Ax(0.0)
    , Ay(0.0)
    , T(0.0)
    , duration(0.0)  {
    }
  CircleRequest_(const ContainerAllocator& _alloc)
    : Ax(0.0)
    , Ay(0.0)
    , T(0.0)
    , duration(0.0)  {
  (void)_alloc;
    }



   typedef float _Ax_type;
  _Ax_type Ax;

   typedef float _Ay_type;
  _Ay_type Ay;

   typedef float _T_type;
  _T_type T;

   typedef float _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::kr_mav_manager::CircleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_mav_manager::CircleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CircleRequest_

typedef ::kr_mav_manager::CircleRequest_<std::allocator<void> > CircleRequest;

typedef boost::shared_ptr< ::kr_mav_manager::CircleRequest > CircleRequestPtr;
typedef boost::shared_ptr< ::kr_mav_manager::CircleRequest const> CircleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_mav_manager::CircleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_mav_manager::CircleRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_mav_manager::CircleRequest_<ContainerAllocator1> & lhs, const ::kr_mav_manager::CircleRequest_<ContainerAllocator2> & rhs)
{
  return lhs.Ax == rhs.Ax &&
    lhs.Ay == rhs.Ay &&
    lhs.T == rhs.T &&
    lhs.duration == rhs.duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_mav_manager::CircleRequest_<ContainerAllocator1> & lhs, const ::kr_mav_manager::CircleRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_mav_manager

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_mav_manager::CircleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_mav_manager::CircleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_manager::CircleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_manager::CircleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_manager::CircleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_manager::CircleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_mav_manager::CircleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fde79205684841f4a0f9cd37e5453e0d";
  }

  static const char* value(const ::kr_mav_manager::CircleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfde79205684841f4ULL;
  static const uint64_t static_value2 = 0xa0f9cd37e5453e0dULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_mav_manager::CircleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_mav_manager/CircleRequest";
  }

  static const char* value(const ::kr_mav_manager::CircleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_mav_manager::CircleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 Ax\n"
"float32 Ay\n"
"float32 T\n"
"float32 duration\n"
;
  }

  static const char* value(const ::kr_mav_manager::CircleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_mav_manager::CircleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Ax);
      stream.next(m.Ay);
      stream.next(m.T);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CircleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_mav_manager::CircleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_mav_manager::CircleRequest_<ContainerAllocator>& v)
  {
    s << indent << "Ax: ";
    Printer<float>::stream(s, indent + "  ", v.Ax);
    s << indent << "Ay: ";
    Printer<float>::stream(s, indent + "  ", v.Ay);
    s << indent << "T: ";
    Printer<float>::stream(s, indent + "  ", v.T);
    s << indent << "duration: ";
    Printer<float>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_MAV_MANAGER_MESSAGE_CIRCLEREQUEST_H
