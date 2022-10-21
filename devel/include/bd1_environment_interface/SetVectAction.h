// Generated by gencpp from file bd1_environment_interface/SetVectAction.msg
// DO NOT EDIT!


#ifndef BD1_ENVIRONMENT_INTERFACE_MESSAGE_SETVECTACTION_H
#define BD1_ENVIRONMENT_INTERFACE_MESSAGE_SETVECTACTION_H

#include <ros/service_traits.h>


#include <bd1_environment_interface/SetVectActionRequest.h>
#include <bd1_environment_interface/SetVectActionResponse.h>


namespace bd1_environment_interface
{

struct SetVectAction
{

typedef SetVectActionRequest Request;
typedef SetVectActionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetVectAction
} // namespace bd1_environment_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bd1_environment_interface::SetVectAction > {
  static const char* value()
  {
    return "cd5ea8395bbd5a6d6460390474bdccf0";
  }

  static const char* value(const ::bd1_environment_interface::SetVectAction&) { return value(); }
};

template<>
struct DataType< ::bd1_environment_interface::SetVectAction > {
  static const char* value()
  {
    return "bd1_environment_interface/SetVectAction";
  }

  static const char* value(const ::bd1_environment_interface::SetVectAction&) { return value(); }
};


// service_traits::MD5Sum< ::bd1_environment_interface::SetVectActionRequest> should match
// service_traits::MD5Sum< ::bd1_environment_interface::SetVectAction >
template<>
struct MD5Sum< ::bd1_environment_interface::SetVectActionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bd1_environment_interface::SetVectAction >::value();
  }
  static const char* value(const ::bd1_environment_interface::SetVectActionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bd1_environment_interface::SetVectActionRequest> should match
// service_traits::DataType< ::bd1_environment_interface::SetVectAction >
template<>
struct DataType< ::bd1_environment_interface::SetVectActionRequest>
{
  static const char* value()
  {
    return DataType< ::bd1_environment_interface::SetVectAction >::value();
  }
  static const char* value(const ::bd1_environment_interface::SetVectActionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bd1_environment_interface::SetVectActionResponse> should match
// service_traits::MD5Sum< ::bd1_environment_interface::SetVectAction >
template<>
struct MD5Sum< ::bd1_environment_interface::SetVectActionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bd1_environment_interface::SetVectAction >::value();
  }
  static const char* value(const ::bd1_environment_interface::SetVectActionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bd1_environment_interface::SetVectActionResponse> should match
// service_traits::DataType< ::bd1_environment_interface::SetVectAction >
template<>
struct DataType< ::bd1_environment_interface::SetVectActionResponse>
{
  static const char* value()
  {
    return DataType< ::bd1_environment_interface::SetVectAction >::value();
  }
  static const char* value(const ::bd1_environment_interface::SetVectActionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BD1_ENVIRONMENT_INTERFACE_MESSAGE_SETVECTACTION_H
