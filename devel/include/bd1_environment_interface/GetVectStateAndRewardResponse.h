// Generated by gencpp from file bd1_environment_interface/GetVectStateAndRewardResponse.msg
// DO NOT EDIT!


#ifndef BD1_ENVIRONMENT_INTERFACE_MESSAGE_GETVECTSTATEANDREWARDRESPONSE_H
#define BD1_ENVIRONMENT_INTERFACE_MESSAGE_GETVECTSTATEANDREWARDRESPONSE_H


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
struct GetVectStateAndRewardResponse_
{
  typedef GetVectStateAndRewardResponse_<ContainerAllocator> Type;

  GetVectStateAndRewardResponse_()
    : state()
    , reward(0.0)
    , episode_end(false)  {
      state.assign(0.0);
  }
  GetVectStateAndRewardResponse_(const ContainerAllocator& _alloc)
    : state()
    , reward(0.0)
    , episode_end(false)  {
  (void)_alloc;
      state.assign(0.0);
  }



   typedef boost::array<double, 14>  _state_type;
  _state_type state;

   typedef double _reward_type;
  _reward_type reward;

   typedef uint8_t _episode_end_type;
  _episode_end_type episode_end;





  typedef boost::shared_ptr< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetVectStateAndRewardResponse_

typedef ::bd1_environment_interface::GetVectStateAndRewardResponse_<std::allocator<void> > GetVectStateAndRewardResponse;

typedef boost::shared_ptr< ::bd1_environment_interface::GetVectStateAndRewardResponse > GetVectStateAndRewardResponsePtr;
typedef boost::shared_ptr< ::bd1_environment_interface::GetVectStateAndRewardResponse const> GetVectStateAndRewardResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator1> & lhs, const ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state &&
    lhs.reward == rhs.reward &&
    lhs.episode_end == rhs.episode_end;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator1> & lhs, const ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bd1_environment_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d2372a06335f71544d81aba4da8f6263";
  }

  static const char* value(const ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd2372a06335f7154ULL;
  static const uint64_t static_value2 = 0x4d81aba4da8f6263ULL;
};

template<class ContainerAllocator>
struct DataType< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd1_environment_interface/GetVectStateAndRewardResponse";
  }

  static const char* value(const ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# state is: \n"
"# bd1_x bd1_y bd1_z bd1_R bd1_P bd1_Y \n"
"# neckP headP up_rP, mid_rP, feet_rP, up_lP, mid_lP, feet_lP\n"
"float64[14] state\n"
"float64 reward\n"
"bool episode_end\n"
"\n"
;
  }

  static const char* value(const ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.reward);
      stream.next(m.episode_end);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetVectStateAndRewardResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bd1_environment_interface::GetVectStateAndRewardResponse_<ContainerAllocator>& v)
  {
    s << indent << "state[]" << std::endl;
    for (size_t i = 0; i < v.state.size(); ++i)
    {
      s << indent << "  state[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.state[i]);
    }
    s << indent << "reward: ";
    Printer<double>::stream(s, indent + "  ", v.reward);
    s << indent << "episode_end: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.episode_end);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BD1_ENVIRONMENT_INTERFACE_MESSAGE_GETVECTSTATEANDREWARDRESPONSE_H
