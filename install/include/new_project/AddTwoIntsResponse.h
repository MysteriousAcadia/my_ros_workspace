// Generated by gencpp from file new_project/AddTwoIntsResponse.msg
// DO NOT EDIT!


#ifndef NEW_PROJECT_MESSAGE_ADDTWOINTSRESPONSE_H
#define NEW_PROJECT_MESSAGE_ADDTWOINTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace new_project
{
template <class ContainerAllocator>
struct AddTwoIntsResponse_
{
  typedef AddTwoIntsResponse_<ContainerAllocator> Type;

  AddTwoIntsResponse_()
    : result1(0.0)
    , result2(false)  {
    }
  AddTwoIntsResponse_(const ContainerAllocator& _alloc)
    : result1(0.0)
    , result2(false)  {
  (void)_alloc;
    }



   typedef double _result1_type;
  _result1_type result1;

   typedef uint8_t _result2_type;
  _result2_type result2;





  typedef boost::shared_ptr< ::new_project::AddTwoIntsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::new_project::AddTwoIntsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AddTwoIntsResponse_

typedef ::new_project::AddTwoIntsResponse_<std::allocator<void> > AddTwoIntsResponse;

typedef boost::shared_ptr< ::new_project::AddTwoIntsResponse > AddTwoIntsResponsePtr;
typedef boost::shared_ptr< ::new_project::AddTwoIntsResponse const> AddTwoIntsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::new_project::AddTwoIntsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::new_project::AddTwoIntsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace new_project

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'new_project': ['/home/notanshuman/catkin_ws/src/new_project/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::new_project::AddTwoIntsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::new_project::AddTwoIntsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::new_project::AddTwoIntsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::new_project::AddTwoIntsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::new_project::AddTwoIntsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::new_project::AddTwoIntsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::new_project::AddTwoIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "191a1b58c5acbfb5d0b1ea4598447024";
  }

  static const char* value(const ::new_project::AddTwoIntsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x191a1b58c5acbfb5ULL;
  static const uint64_t static_value2 = 0xd0b1ea4598447024ULL;
};

template<class ContainerAllocator>
struct DataType< ::new_project::AddTwoIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "new_project/AddTwoIntsResponse";
  }

  static const char* value(const ::new_project::AddTwoIntsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::new_project::AddTwoIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 result1\n\
bool result2\n\
\n\
";
  }

  static const char* value(const ::new_project::AddTwoIntsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::new_project::AddTwoIntsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result1);
      stream.next(m.result2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddTwoIntsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::new_project::AddTwoIntsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::new_project::AddTwoIntsResponse_<ContainerAllocator>& v)
  {
    s << indent << "result1: ";
    Printer<double>::stream(s, indent + "  ", v.result1);
    s << indent << "result2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NEW_PROJECT_MESSAGE_ADDTWOINTSRESPONSE_H
