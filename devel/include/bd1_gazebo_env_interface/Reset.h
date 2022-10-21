// Generated by gencpp from file bd1_gazebo_env_interface/Reset.msg
// DO NOT EDIT!


#ifndef BD1_GAZEBO_ENV_INTERFACE_MESSAGE_RESET_H
#define BD1_GAZEBO_ENV_INTERFACE_MESSAGE_RESET_H

#include <ros/service_traits.h>


#include <bd1_gazebo_env_interface/ResetRequest.h>
#include <bd1_gazebo_env_interface/ResetResponse.h>


namespace bd1_gazebo_env_interface
{

struct Reset
{

typedef ResetRequest Request;
typedef ResetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Reset
} // namespace bd1_gazebo_env_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bd1_gazebo_env_interface::Reset > {
  static const char* value()
  {
    return "c30e6364d50c603d25671fea66595c53";
  }

  static const char* value(const ::bd1_gazebo_env_interface::Reset&) { return value(); }
};

template<>
struct DataType< ::bd1_gazebo_env_interface::Reset > {
  static const char* value()
  {
    return "bd1_gazebo_env_interface/Reset";
  }

  static const char* value(const ::bd1_gazebo_env_interface::Reset&) { return value(); }
};


// service_traits::MD5Sum< ::bd1_gazebo_env_interface::ResetRequest> should match
// service_traits::MD5Sum< ::bd1_gazebo_env_interface::Reset >
template<>
struct MD5Sum< ::bd1_gazebo_env_interface::ResetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bd1_gazebo_env_interface::Reset >::value();
  }
  static const char* value(const ::bd1_gazebo_env_interface::ResetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bd1_gazebo_env_interface::ResetRequest> should match
// service_traits::DataType< ::bd1_gazebo_env_interface::Reset >
template<>
struct DataType< ::bd1_gazebo_env_interface::ResetRequest>
{
  static const char* value()
  {
    return DataType< ::bd1_gazebo_env_interface::Reset >::value();
  }
  static const char* value(const ::bd1_gazebo_env_interface::ResetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bd1_gazebo_env_interface::ResetResponse> should match
// service_traits::MD5Sum< ::bd1_gazebo_env_interface::Reset >
template<>
struct MD5Sum< ::bd1_gazebo_env_interface::ResetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bd1_gazebo_env_interface::Reset >::value();
  }
  static const char* value(const ::bd1_gazebo_env_interface::ResetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bd1_gazebo_env_interface::ResetResponse> should match
// service_traits::DataType< ::bd1_gazebo_env_interface::Reset >
template<>
struct DataType< ::bd1_gazebo_env_interface::ResetResponse>
{
  static const char* value()
  {
    return DataType< ::bd1_gazebo_env_interface::Reset >::value();
  }
  static const char* value(const ::bd1_gazebo_env_interface::ResetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BD1_GAZEBO_ENV_INTERFACE_MESSAGE_RESET_H