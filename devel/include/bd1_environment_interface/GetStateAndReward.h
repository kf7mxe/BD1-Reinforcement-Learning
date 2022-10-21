// Generated by gencpp from file bd1_environment_interface/GetStateAndReward.msg
// DO NOT EDIT!


#ifndef BD1_ENVIRONMENT_INTERFACE_MESSAGE_GETSTATEANDREWARD_H
#define BD1_ENVIRONMENT_INTERFACE_MESSAGE_GETSTATEANDREWARD_H

#include <ros/service_traits.h>


#include <bd1_environment_interface/GetStateAndRewardRequest.h>
#include <bd1_environment_interface/GetStateAndRewardResponse.h>


namespace bd1_environment_interface
{

struct GetStateAndReward
{

typedef GetStateAndRewardRequest Request;
typedef GetStateAndRewardResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetStateAndReward
} // namespace bd1_environment_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bd1_environment_interface::GetStateAndReward > {
  static const char* value()
  {
    return "b4311283603913f545c123b92fee5b5c";
  }

  static const char* value(const ::bd1_environment_interface::GetStateAndReward&) { return value(); }
};

template<>
struct DataType< ::bd1_environment_interface::GetStateAndReward > {
  static const char* value()
  {
    return "bd1_environment_interface/GetStateAndReward";
  }

  static const char* value(const ::bd1_environment_interface::GetStateAndReward&) { return value(); }
};


// service_traits::MD5Sum< ::bd1_environment_interface::GetStateAndRewardRequest> should match
// service_traits::MD5Sum< ::bd1_environment_interface::GetStateAndReward >
template<>
struct MD5Sum< ::bd1_environment_interface::GetStateAndRewardRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bd1_environment_interface::GetStateAndReward >::value();
  }
  static const char* value(const ::bd1_environment_interface::GetStateAndRewardRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bd1_environment_interface::GetStateAndRewardRequest> should match
// service_traits::DataType< ::bd1_environment_interface::GetStateAndReward >
template<>
struct DataType< ::bd1_environment_interface::GetStateAndRewardRequest>
{
  static const char* value()
  {
    return DataType< ::bd1_environment_interface::GetStateAndReward >::value();
  }
  static const char* value(const ::bd1_environment_interface::GetStateAndRewardRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bd1_environment_interface::GetStateAndRewardResponse> should match
// service_traits::MD5Sum< ::bd1_environment_interface::GetStateAndReward >
template<>
struct MD5Sum< ::bd1_environment_interface::GetStateAndRewardResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bd1_environment_interface::GetStateAndReward >::value();
  }
  static const char* value(const ::bd1_environment_interface::GetStateAndRewardResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bd1_environment_interface::GetStateAndRewardResponse> should match
// service_traits::DataType< ::bd1_environment_interface::GetStateAndReward >
template<>
struct DataType< ::bd1_environment_interface::GetStateAndRewardResponse>
{
  static const char* value()
  {
    return DataType< ::bd1_environment_interface::GetStateAndReward >::value();
  }
  static const char* value(const ::bd1_environment_interface::GetStateAndRewardResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BD1_ENVIRONMENT_INTERFACE_MESSAGE_GETSTATEANDREWARD_H