// Generated by gencpp from file new_project/AddTwoInts.msg
// DO NOT EDIT!


#ifndef NEW_PROJECT_MESSAGE_ADDTWOINTS_H
#define NEW_PROJECT_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <new_project/AddTwoIntsRequest.h>
#include <new_project/AddTwoIntsResponse.h>


namespace new_project
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace new_project


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::new_project::AddTwoInts > {
  static const char* value()
  {
    return "f724a20c65da0ec169d6f28326602036";
  }

  static const char* value(const ::new_project::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::new_project::AddTwoInts > {
  static const char* value()
  {
    return "new_project/AddTwoInts";
  }

  static const char* value(const ::new_project::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::new_project::AddTwoIntsRequest> should match 
// service_traits::MD5Sum< ::new_project::AddTwoInts > 
template<>
struct MD5Sum< ::new_project::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::new_project::AddTwoInts >::value();
  }
  static const char* value(const ::new_project::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::new_project::AddTwoIntsRequest> should match 
// service_traits::DataType< ::new_project::AddTwoInts > 
template<>
struct DataType< ::new_project::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::new_project::AddTwoInts >::value();
  }
  static const char* value(const ::new_project::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::new_project::AddTwoIntsResponse> should match 
// service_traits::MD5Sum< ::new_project::AddTwoInts > 
template<>
struct MD5Sum< ::new_project::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::new_project::AddTwoInts >::value();
  }
  static const char* value(const ::new_project::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::new_project::AddTwoIntsResponse> should match 
// service_traits::DataType< ::new_project::AddTwoInts > 
template<>
struct DataType< ::new_project::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::new_project::AddTwoInts >::value();
  }
  static const char* value(const ::new_project::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NEW_PROJECT_MESSAGE_ADDTWOINTS_H
