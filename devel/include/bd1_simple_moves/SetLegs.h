// Generated by gencpp from file bd1_simple_moves/SetLegs.msg
// DO NOT EDIT!


#ifndef BD1_SIMPLE_MOVES_MESSAGE_SETLEGS_H
#define BD1_SIMPLE_MOVES_MESSAGE_SETLEGS_H

#include <ros/service_traits.h>


#include <bd1_simple_moves/SetLegsRequest.h>
#include <bd1_simple_moves/SetLegsResponse.h>


namespace bd1_simple_moves
{

struct SetLegs
{

typedef SetLegsRequest Request;
typedef SetLegsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetLegs
} // namespace bd1_simple_moves


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bd1_simple_moves::SetLegs > {
  static const char* value()
  {
    return "8d9a80bd490b256de1b51b4977337d66";
  }

  static const char* value(const ::bd1_simple_moves::SetLegs&) { return value(); }
};

template<>
struct DataType< ::bd1_simple_moves::SetLegs > {
  static const char* value()
  {
    return "bd1_simple_moves/SetLegs";
  }

  static const char* value(const ::bd1_simple_moves::SetLegs&) { return value(); }
};


// service_traits::MD5Sum< ::bd1_simple_moves::SetLegsRequest> should match
// service_traits::MD5Sum< ::bd1_simple_moves::SetLegs >
template<>
struct MD5Sum< ::bd1_simple_moves::SetLegsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bd1_simple_moves::SetLegs >::value();
  }
  static const char* value(const ::bd1_simple_moves::SetLegsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bd1_simple_moves::SetLegsRequest> should match
// service_traits::DataType< ::bd1_simple_moves::SetLegs >
template<>
struct DataType< ::bd1_simple_moves::SetLegsRequest>
{
  static const char* value()
  {
    return DataType< ::bd1_simple_moves::SetLegs >::value();
  }
  static const char* value(const ::bd1_simple_moves::SetLegsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bd1_simple_moves::SetLegsResponse> should match
// service_traits::MD5Sum< ::bd1_simple_moves::SetLegs >
template<>
struct MD5Sum< ::bd1_simple_moves::SetLegsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bd1_simple_moves::SetLegs >::value();
  }
  static const char* value(const ::bd1_simple_moves::SetLegsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bd1_simple_moves::SetLegsResponse> should match
// service_traits::DataType< ::bd1_simple_moves::SetLegs >
template<>
struct DataType< ::bd1_simple_moves::SetLegsResponse>
{
  static const char* value()
  {
    return DataType< ::bd1_simple_moves::SetLegs >::value();
  }
  static const char* value(const ::bd1_simple_moves::SetLegsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BD1_SIMPLE_MOVES_MESSAGE_SETLEGS_H
