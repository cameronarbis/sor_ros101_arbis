// Generated by gencpp from file ros_tutorial/Weight.msg
// DO NOT EDIT!


#ifndef ROS_TUTORIAL_MESSAGE_WEIGHT_H
#define ROS_TUTORIAL_MESSAGE_WEIGHT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_tutorial
{
template <class ContainerAllocator>
struct Weight_
{
  typedef Weight_<ContainerAllocator> Type;

  Weight_()
    : weight(0.0)  {
    }
  Weight_(const ContainerAllocator& _alloc)
    : weight(0.0)  {
  (void)_alloc;
    }



   typedef double _weight_type;
  _weight_type weight;





  typedef boost::shared_ptr< ::ros_tutorial::Weight_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_tutorial::Weight_<ContainerAllocator> const> ConstPtr;

}; // struct Weight_

typedef ::ros_tutorial::Weight_<std::allocator<void> > Weight;

typedef boost::shared_ptr< ::ros_tutorial::Weight > WeightPtr;
typedef boost::shared_ptr< ::ros_tutorial::Weight const> WeightConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_tutorial::Weight_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_tutorial::Weight_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_tutorial::Weight_<ContainerAllocator1> & lhs, const ::ros_tutorial::Weight_<ContainerAllocator2> & rhs)
{
  return lhs.weight == rhs.weight;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_tutorial::Weight_<ContainerAllocator1> & lhs, const ::ros_tutorial::Weight_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_tutorial

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_tutorial::Weight_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_tutorial::Weight_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_tutorial::Weight_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_tutorial::Weight_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_tutorial::Weight_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_tutorial::Weight_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_tutorial::Weight_<ContainerAllocator> >
{
  static const char* value()
  {
    return "41998f6691705e7d3db1ca4195275ab0";
  }

  static const char* value(const ::ros_tutorial::Weight_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x41998f6691705e7dULL;
  static const uint64_t static_value2 = 0x3db1ca4195275ab0ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_tutorial::Weight_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_tutorial/Weight";
  }

  static const char* value(const ::ros_tutorial::Weight_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_tutorial::Weight_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 weight\n"
;
  }

  static const char* value(const ::ros_tutorial::Weight_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_tutorial::Weight_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.weight);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Weight_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_tutorial::Weight_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_tutorial::Weight_<ContainerAllocator>& v)
  {
    s << indent << "weight: ";
    Printer<double>::stream(s, indent + "  ", v.weight);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_TUTORIAL_MESSAGE_WEIGHT_H
