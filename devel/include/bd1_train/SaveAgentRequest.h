// Generated by gencpp from file bd1_train/SaveAgentRequest.msg
// DO NOT EDIT!


#ifndef BD1_TRAIN_MESSAGE_SAVEAGENTREQUEST_H
#define BD1_TRAIN_MESSAGE_SAVEAGENTREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bd1_train
{
template <class ContainerAllocator>
struct SaveAgentRequest_
{
  typedef SaveAgentRequest_<ContainerAllocator> Type;

  SaveAgentRequest_()
    : name()  {
    }
  SaveAgentRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::bd1_train::SaveAgentRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bd1_train::SaveAgentRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SaveAgentRequest_

typedef ::bd1_train::SaveAgentRequest_<std::allocator<void> > SaveAgentRequest;

typedef boost::shared_ptr< ::bd1_train::SaveAgentRequest > SaveAgentRequestPtr;
typedef boost::shared_ptr< ::bd1_train::SaveAgentRequest const> SaveAgentRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bd1_train::SaveAgentRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bd1_train::SaveAgentRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bd1_train::SaveAgentRequest_<ContainerAllocator1> & lhs, const ::bd1_train::SaveAgentRequest_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bd1_train::SaveAgentRequest_<ContainerAllocator1> & lhs, const ::bd1_train::SaveAgentRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bd1_train

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bd1_train::SaveAgentRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bd1_train::SaveAgentRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bd1_train::SaveAgentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bd1_train::SaveAgentRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bd1_train::SaveAgentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bd1_train::SaveAgentRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bd1_train::SaveAgentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::bd1_train::SaveAgentRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1f3d28f1b044c87ULL;
  static const uint64_t static_value2 = 0x1e6eff2e9fc3c667ULL;
};

template<class ContainerAllocator>
struct DataType< ::bd1_train::SaveAgentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd1_train/SaveAgentRequest";
  }

  static const char* value(const ::bd1_train::SaveAgentRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bd1_train::SaveAgentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
;
  }

  static const char* value(const ::bd1_train::SaveAgentRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bd1_train::SaveAgentRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveAgentRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bd1_train::SaveAgentRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bd1_train::SaveAgentRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BD1_TRAIN_MESSAGE_SAVEAGENTREQUEST_H
