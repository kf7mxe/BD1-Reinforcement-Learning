// Generated by gencpp from file bd1_gazebo_env_interface/StepResponse.msg
// DO NOT EDIT!


#ifndef BD1_GAZEBO_ENV_INTERFACE_MESSAGE_STEPRESPONSE_H
#define BD1_GAZEBO_ENV_INTERFACE_MESSAGE_STEPRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bd1_gazebo_env_interface
{
template <class ContainerAllocator>
struct StepResponse_
{
  typedef StepResponse_<ContainerAllocator> Type;

  StepResponse_()
    : state()
    , reward(0.0)
    , done(false)  {
    }
  StepResponse_(const ContainerAllocator& _alloc)
    : state(_alloc)
    , reward(0.0)
    , done(false)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _state_type;
  _state_type state;

   typedef double _reward_type;
  _reward_type reward;

   typedef uint8_t _done_type;
  _done_type done;





  typedef boost::shared_ptr< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StepResponse_

typedef ::bd1_gazebo_env_interface::StepResponse_<std::allocator<void> > StepResponse;

typedef boost::shared_ptr< ::bd1_gazebo_env_interface::StepResponse > StepResponsePtr;
typedef boost::shared_ptr< ::bd1_gazebo_env_interface::StepResponse const> StepResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator1> & lhs, const ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state &&
    lhs.reward == rhs.reward &&
    lhs.done == rhs.done;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator1> & lhs, const ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bd1_gazebo_env_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f17d66b0d8b3857d73b69cce45ea3648";
  }

  static const char* value(const ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf17d66b0d8b3857dULL;
  static const uint64_t static_value2 = 0x73b69cce45ea3648ULL;
};

template<class ContainerAllocator>
struct DataType< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd1_gazebo_env_interface/StepResponse";
  }

  static const char* value(const ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] state\n"
"float64 reward\n"
"bool done\n"
"\n"
;
  }

  static const char* value(const ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.reward);
      stream.next(m.done);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StepResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bd1_gazebo_env_interface::StepResponse_<ContainerAllocator>& v)
  {
    s << indent << "state[]" << std::endl;
    for (size_t i = 0; i < v.state.size(); ++i)
    {
      s << indent << "  state[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.state[i]);
    }
    s << indent << "reward: ";
    Printer<double>::stream(s, indent + "  ", v.reward);
    s << indent << "done: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.done);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BD1_GAZEBO_ENV_INTERFACE_MESSAGE_STEPRESPONSE_H