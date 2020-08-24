// Generated by gencpp from file laser_reader/my_msg.msg
// DO NOT EDIT!


#ifndef LASER_READER_MESSAGE_MY_MSG_H
#define LASER_READER_MESSAGE_MY_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>

namespace laser_reader
{
template <class ContainerAllocator>
struct my_msg_
{
  typedef my_msg_<ContainerAllocator> Type;

  my_msg_()
    : data()  {
    }
  my_msg_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Vector3_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Vector3_<ContainerAllocator> >::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::laser_reader::my_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::laser_reader::my_msg_<ContainerAllocator> const> ConstPtr;

}; // struct my_msg_

typedef ::laser_reader::my_msg_<std::allocator<void> > my_msg;

typedef boost::shared_ptr< ::laser_reader::my_msg > my_msgPtr;
typedef boost::shared_ptr< ::laser_reader::my_msg const> my_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::laser_reader::my_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::laser_reader::my_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace laser_reader

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'laser_reader': ['/home/ssequeira/scott/scott_ws/src/laser_reader/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::laser_reader::my_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::laser_reader::my_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laser_reader::my_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::laser_reader::my_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laser_reader::my_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::laser_reader::my_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::laser_reader::my_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "390cbff96d168abc35f84f5ed0728288";
  }

  static const char* value(const ::laser_reader::my_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x390cbff96d168abcULL;
  static const uint64_t static_value2 = 0x35f84f5ed0728288ULL;
};

template<class ContainerAllocator>
struct DataType< ::laser_reader::my_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "laser_reader/my_msg";
  }

  static const char* value(const ::laser_reader::my_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::laser_reader::my_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Vector3[] data\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::laser_reader::my_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::laser_reader::my_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct my_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::laser_reader::my_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::laser_reader::my_msg_<ContainerAllocator>& v)
  {
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "    ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LASER_READER_MESSAGE_MY_MSG_H
