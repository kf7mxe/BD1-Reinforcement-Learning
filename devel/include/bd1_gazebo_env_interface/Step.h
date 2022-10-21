// Generated by gencpp from file bd1_gazebo_env_interface/Step.msg
// DO NOT EDIT!


#ifndef BD1_GAZEBO_ENV_INTERFACE_MESSAGE_STEP_H
#define BD1_GAZEBO_ENV_INTERFACE_MESSAGE_STEP_H

#include <ros/service_traits.h>


#include <bd1_gazebo_env_interface/StepRequest.h>
#include <bd1_gazebo_env_interface/StepResponse.h>


namespace bd1_gazebo_env_interface
{

struct Step
{

typedef StepRequest Request;
typedef StepResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Step
} // namespace bd1_gazebo_env_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bd1_gazebo_env_interface::Step > {
  static const char* value()
  {
    return "648a9a46b996eb566b6958c8792202c4";
  }

  static const char* value(const ::bd1_gazebo_env_interface::Step&) { return value(); }
};

template<>
struct DataType< ::bd1_gazebo_env_interface::Step > {
  static const char* value()
  {
    return "bd1_gazebo_env_interface/Step";
  }

  static const char* value(const ::bd1_gazebo_env_interface::Step&) { return value(); }
};


// service_traits::MD5Sum< ::bd1_gazebo_env_interface::StepRequest> should match
// service_traits::MD5Sum< ::bd1_gazebo_env_interface::Step >
template<>
struct MD5Sum< ::bd1_gazebo_env_interface::StepRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bd1_gazebo_env_interface::Step >::value();
  }
  static const char* value(const ::bd1_gazebo_env_interface::StepRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bd1_gazebo_env_interface::StepRequest> should match
// service_traits::DataType< ::bd1_gazebo_env_interface::Step >
template<>
struct DataType< ::bd1_gazebo_env_interface::StepRequest>
{
  static const char* value()
  {
    return DataType< ::bd1_gazebo_env_interface::Step >::value();
  }
  static const char* value(const ::bd1_gazebo_env_interface::StepRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bd1_gazebo_env_interface::StepResponse> should match
// service_traits::MD5Sum< ::bd1_gazebo_env_interface::Step >
template<>
struct MD5Sum< ::bd1_gazebo_env_interface::StepResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bd1_gazebo_env_interface::Step >::value();
  }
  static const char* value(const ::bd1_gazebo_env_interface::StepResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bd1_gazebo_env_interface::StepResponse> should match
// service_traits::DataType< ::bd1_gazebo_env_interface::Step >
template<>
struct DataType< ::bd1_gazebo_env_interface::StepResponse>
{
  static const char* value()
  {
    return DataType< ::bd1_gazebo_env_interface::Step >::value();
  }
  static const char* value(const ::bd1_gazebo_env_interface::StepResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BD1_GAZEBO_ENV_INTERFACE_MESSAGE_STEP_H
