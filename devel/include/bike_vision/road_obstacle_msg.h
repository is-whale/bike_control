// Generated by gencpp from file bike_vision/road_obstacle_msg.msg
// DO NOT EDIT!


#ifndef BIKE_VISION_MESSAGE_ROAD_OBSTACLE_MSG_H
#define BIKE_VISION_MESSAGE_ROAD_OBSTACLE_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace bike_vision
{
template <class ContainerAllocator>
struct road_obstacle_msg_
{
  typedef road_obstacle_msg_<ContainerAllocator> Type;

  road_obstacle_msg_()
    : header()
    , num_objects(0)
    , center_x()
    , center_y()
    , distance()  {
      center_x.assign(0);

      center_y.assign(0);

      distance.assign(0.0);
  }
  road_obstacle_msg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , num_objects(0)
    , center_x()
    , center_y()
    , distance()  {
  (void)_alloc;
      center_x.assign(0);

      center_y.assign(0);

      distance.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _num_objects_type;
  _num_objects_type num_objects;

   typedef boost::array<uint16_t, 10>  _center_x_type;
  _center_x_type center_x;

   typedef boost::array<uint16_t, 10>  _center_y_type;
  _center_y_type center_y;

   typedef boost::array<float, 10>  _distance_type;
  _distance_type distance;





  typedef boost::shared_ptr< ::bike_vision::road_obstacle_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bike_vision::road_obstacle_msg_<ContainerAllocator> const> ConstPtr;

}; // struct road_obstacle_msg_

typedef ::bike_vision::road_obstacle_msg_<std::allocator<void> > road_obstacle_msg;

typedef boost::shared_ptr< ::bike_vision::road_obstacle_msg > road_obstacle_msgPtr;
typedef boost::shared_ptr< ::bike_vision::road_obstacle_msg const> road_obstacle_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bike_vision::road_obstacle_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bike_vision::road_obstacle_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bike_vision::road_obstacle_msg_<ContainerAllocator1> & lhs, const ::bike_vision::road_obstacle_msg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.num_objects == rhs.num_objects &&
    lhs.center_x == rhs.center_x &&
    lhs.center_y == rhs.center_y &&
    lhs.distance == rhs.distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bike_vision::road_obstacle_msg_<ContainerAllocator1> & lhs, const ::bike_vision::road_obstacle_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bike_vision

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bike_vision::road_obstacle_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bike_vision::road_obstacle_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bike_vision::road_obstacle_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bike_vision::road_obstacle_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bike_vision::road_obstacle_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bike_vision::road_obstacle_msg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bike_vision::road_obstacle_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e903107bd222aa2e9a5ca84b2a8e152d";
  }

  static const char* value(const ::bike_vision::road_obstacle_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe903107bd222aa2eULL;
  static const uint64_t static_value2 = 0x9a5ca84b2a8e152dULL;
};

template<class ContainerAllocator>
struct DataType< ::bike_vision::road_obstacle_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bike_vision/road_obstacle_msg";
  }

  static const char* value(const ::bike_vision::road_obstacle_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bike_vision::road_obstacle_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"uint8 num_objects\n"
"uint16[10] center_x\n"
"uint16[10] center_y\n"
"float32[10] distance\n"
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

  static const char* value(const ::bike_vision::road_obstacle_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bike_vision::road_obstacle_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.num_objects);
      stream.next(m.center_x);
      stream.next(m.center_y);
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct road_obstacle_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bike_vision::road_obstacle_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bike_vision::road_obstacle_msg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "num_objects: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.num_objects);
    s << indent << "center_x[]" << std::endl;
    for (size_t i = 0; i < v.center_x.size(); ++i)
    {
      s << indent << "  center_x[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.center_x[i]);
    }
    s << indent << "center_y[]" << std::endl;
    for (size_t i = 0; i < v.center_y.size(); ++i)
    {
      s << indent << "  center_y[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.center_y[i]);
    }
    s << indent << "distance[]" << std::endl;
    for (size_t i = 0; i < v.distance.size(); ++i)
    {
      s << indent << "  distance[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.distance[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BIKE_VISION_MESSAGE_ROAD_OBSTACLE_MSG_H
