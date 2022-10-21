// Generated by gencpp from file bd1_environment_interface/GetStateAndRewardRequest.msg
// DO NOT EDIT!


#ifndef BD1_ENVIRONMENT_INTERFACE_MESSAGE_GETSTATEANDREWARDREQUEST_H
#define BD1_ENVIRONMENT_INTERFACE_MESSAGE_GETSTATEANDREWARDREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bd1_environment_interface
{
template <class ContainerAllocator>
struct GetStateAndRewardRequest_
{
  typedef GetStateAndRewardRequest_<ContainerAllocator> Type;

  GetStateAndRewardRequest_()
    {
    }
  GetStateAndRewardRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetStateAndRewardRequest_

typedef ::bd1_environment_interface::GetStateAndRewardRequest_<std::allocator<void> > GetStateAndRewardRequest;

typedef boost::shared_ptr< ::bd1_environment_interface::GetStateAndRewardRequest > GetStateAndRewardRequestPtr;
typedef boost::shared_ptr< ::bd1_environment_interface::GetStateAndRewardRequest const> GetStateAndRewardRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace bd1_environment_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd1_environment_interface/GetStateAndRewardRequest";
  }

  static const char* value(const ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetStateAndRewardRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::bd1_environment_interface::GetStateAndRewardRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // BD1_ENVIRONMENT_INTERFACE_MESSAGE_GETSTATEANDREWARDREQUEST_H