// Generated by gencpp from file kr_mav_manager/CompoundLissajousResponse.msg
// DO NOT EDIT!


#ifndef KR_MAV_MANAGER_MESSAGE_COMPOUNDLISSAJOUSRESPONSE_H
#define KR_MAV_MANAGER_MESSAGE_COMPOUNDLISSAJOUSRESPONSE_H


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
struct CompoundLissajousResponse_
{
  typedef CompoundLissajousResponse_<ContainerAllocator> Type;

  CompoundLissajousResponse_()
    : success(false)
    , message()  {
    }
  CompoundLissajousResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CompoundLissajousResponse_

typedef ::kr_mav_manager::CompoundLissajousResponse_<std::allocator<void> > CompoundLissajousResponse;

typedef boost::shared_ptr< ::kr_mav_manager::CompoundLissajousResponse > CompoundLissajousResponsePtr;
typedef boost::shared_ptr< ::kr_mav_manager::CompoundLissajousResponse const> CompoundLissajousResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator1> & lhs, const ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator1> & lhs, const ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kr_mav_manager

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kr_mav_manager/CompoundLissajousResponse";
  }

  static const char* value(const ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string message\n"
"\n"
;
  }

  static const char* value(const ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CompoundLissajousResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kr_mav_manager::CompoundLissajousResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KR_MAV_MANAGER_MESSAGE_COMPOUNDLISSAJOUSRESPONSE_H