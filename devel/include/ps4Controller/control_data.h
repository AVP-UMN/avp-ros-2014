/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/avp/avp-repo/avp-ros/src/ps4Controller/msg/control_data.msg
 *
 */


#ifndef PS4CONTROLLER_MESSAGE_CONTROL_DATA_H
#define PS4CONTROLLER_MESSAGE_CONTROL_DATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ps4Controller
{
template <class ContainerAllocator>
struct control_data_
{
  typedef control_data_<ContainerAllocator> Type;

  control_data_()
    : type()
    , value(0.0)  {
    }
  control_data_(const ContainerAllocator& _alloc)
    : type(_alloc)
    , value(0.0)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef float _value_type;
  _value_type value;




  typedef boost::shared_ptr< ::ps4Controller::control_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ps4Controller::control_data_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct control_data_

typedef ::ps4Controller::control_data_<std::allocator<void> > control_data;

typedef boost::shared_ptr< ::ps4Controller::control_data > control_dataPtr;
typedef boost::shared_ptr< ::ps4Controller::control_data const> control_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ps4Controller::control_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ps4Controller::control_data_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ps4Controller

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg'], 'ps4Controller': ['/home/avp/avp-repo/avp-ros/src/ps4Controller/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ps4Controller::control_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ps4Controller::control_data_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ps4Controller::control_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ps4Controller::control_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ps4Controller::control_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ps4Controller::control_data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ps4Controller::control_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8165a05b6e90580d5249802a83c873ea";
  }

  static const char* value(const ::ps4Controller::control_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8165a05b6e90580dULL;
  static const uint64_t static_value2 = 0x5249802a83c873eaULL;
};

template<class ContainerAllocator>
struct DataType< ::ps4Controller::control_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ps4Controller/control_data";
  }

  static const char* value(const ::ps4Controller::control_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ps4Controller::control_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string type\n\
float32 value\n\
";
  }

  static const char* value(const ::ps4Controller::control_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ps4Controller::control_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct control_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ps4Controller::control_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ps4Controller::control_data_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "value: ";
    Printer<float>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PS4CONTROLLER_MESSAGE_CONTROL_DATA_H
