// Generated by gencpp from file test01/SetSomethinkResponse.msg
// DO NOT EDIT!


#ifndef TEST01_MESSAGE_SETSOMETHINKRESPONSE_H
#define TEST01_MESSAGE_SETSOMETHINKRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace test01
{
template <class ContainerAllocator>
struct SetSomethinkResponse_
{
  typedef SetSomethinkResponse_<ContainerAllocator> Type;

  SetSomethinkResponse_()
    : Sum(0)  {
    }
  SetSomethinkResponse_(const ContainerAllocator& _alloc)
    : Sum(0)  {
    }



   typedef int64_t _Sum_type;
  _Sum_type Sum;




  typedef boost::shared_ptr< ::test01::SetSomethinkResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test01::SetSomethinkResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetSomethinkResponse_

typedef ::test01::SetSomethinkResponse_<std::allocator<void> > SetSomethinkResponse;

typedef boost::shared_ptr< ::test01::SetSomethinkResponse > SetSomethinkResponsePtr;
typedef boost::shared_ptr< ::test01::SetSomethinkResponse const> SetSomethinkResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test01::SetSomethinkResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test01::SetSomethinkResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace test01

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'test01': ['/home/krajcovic/workspace/sources/ros/catkin_ws/src/test01/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::test01::SetSomethinkResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test01::SetSomethinkResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test01::SetSomethinkResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test01::SetSomethinkResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test01::SetSomethinkResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test01::SetSomethinkResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test01::SetSomethinkResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "055d509888d173367b1b9f94491341fd";
  }

  static const char* value(const ::test01::SetSomethinkResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x055d509888d17336ULL;
  static const uint64_t static_value2 = 0x7b1b9f94491341fdULL;
};

template<class ContainerAllocator>
struct DataType< ::test01::SetSomethinkResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test01/SetSomethinkResponse";
  }

  static const char* value(const ::test01::SetSomethinkResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test01::SetSomethinkResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 Sum\n\
";
  }

  static const char* value(const ::test01::SetSomethinkResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test01::SetSomethinkResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SetSomethinkResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test01::SetSomethinkResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test01::SetSomethinkResponse_<ContainerAllocator>& v)
  {
    s << indent << "Sum: ";
    Printer<int64_t>::stream(s, indent + "  ", v.Sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST01_MESSAGE_SETSOMETHINKRESPONSE_H
