// Generated by gencpp from file bike_core/odrive_can_msg.msg
// DO NOT EDIT!


#ifndef BIKE_CORE_MESSAGE_ODRIVE_CAN_MSG_H
#define BIKE_CORE_MESSAGE_ODRIVE_CAN_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace bike_core
{
template <class ContainerAllocator>
struct odrive_can_msg_
{
  typedef odrive_can_msg_<ContainerAllocator> Type;

  odrive_can_msg_()
    : header()
    , bytes()
    , data_len(0)
    , can_id(0)  {
      bytes.assign(0);
  }
  odrive_can_msg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , bytes()
    , data_len(0)
    , can_id(0)  {
  (void)_alloc;
      bytes.assign(0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array<uint8_t, 8>  _bytes_type;
  _bytes_type bytes;

   typedef uint8_t _data_len_type;
  _data_len_type data_len;

   typedef uint32_t _can_id_type;
  _can_id_type can_id;





  typedef boost::shared_ptr< ::bike_core::odrive_can_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bike_core::odrive_can_msg_<ContainerAllocator> const> ConstPtr;

}; // struct odrive_can_msg_

typedef ::bike_core::odrive_can_msg_<std::allocator<void> > odrive_can_msg;

typedef boost::shared_ptr< ::bike_core::odrive_can_msg > odrive_can_msgPtr;
typedef boost::shared_ptr< ::bike_core::odrive_can_msg const> odrive_can_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bike_core::odrive_can_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bike_core::odrive_can_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bike_core::odrive_can_msg_<ContainerAllocator1> & lhs, const ::bike_core::odrive_can_msg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.bytes == rhs.bytes &&
    lhs.data_len == rhs.data_len &&
    lhs.can_id == rhs.can_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bike_core::odrive_can_msg_<ContainerAllocator1> & lhs, const ::bike_core::odrive_can_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bike_core

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bike_core::odrive_can_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bike_core::odrive_can_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bike_core::odrive_can_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bike_core::odrive_can_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bike_core::odrive_can_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bike_core::odrive_can_msg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bike_core::odrive_can_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "88e94c1249be4512f5bc03b9ca2f7e24";
  }

  static const char* value(const ::bike_core::odrive_can_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x88e94c1249be4512ULL;
  static const uint64_t static_value2 = 0xf5bc03b9ca2f7e24ULL;
};

template<class ContainerAllocator>
struct DataType< ::bike_core::odrive_can_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bike_core/odrive_can_msg";
  }

  static const char* value(const ::bike_core::odrive_can_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bike_core::odrive_can_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"uint8[8] bytes\n"
"uint8 data_len\n"
"uint32 can_id\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::bike_core::odrive_can_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bike_core::odrive_can_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.bytes);
      stream.next(m.data_len);
      stream.next(m.can_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct odrive_can_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bike_core::odrive_can_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bike_core::odrive_can_msg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "bytes[]" << std::endl;
    for (size_t i = 0; i < v.bytes.size(); ++i)
    {
      s << indent << "  bytes[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.bytes[i]);
    }
    s << indent << "data_len: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.data_len);
    s << indent << "can_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.can_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BIKE_CORE_MESSAGE_ODRIVE_CAN_MSG_H