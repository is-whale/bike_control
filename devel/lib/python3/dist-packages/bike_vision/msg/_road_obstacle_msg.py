# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from bike_vision/road_obstacle_msg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class road_obstacle_msg(genpy.Message):
  _md5sum = "e903107bd222aa2e9a5ca84b2a8e152d"
  _type = "bike_vision/road_obstacle_msg"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
uint8 num_objects
uint16[10] center_x
uint16[10] center_y
float32[10] distance
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['header','num_objects','center_x','center_y','distance']
  _slot_types = ['std_msgs/Header','uint8','uint16[10]','uint16[10]','float32[10]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,num_objects,center_x,center_y,distance

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(road_obstacle_msg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.num_objects is None:
        self.num_objects = 0
      if self.center_x is None:
        self.center_x = [0] * 10
      if self.center_y is None:
        self.center_y = [0] * 10
      if self.distance is None:
        self.distance = [0.] * 10
    else:
      self.header = std_msgs.msg.Header()
      self.num_objects = 0
      self.center_x = [0] * 10
      self.center_y = [0] * 10
      self.distance = [0.] * 10

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.num_objects
      buff.write(_get_struct_B().pack(_x))
      buff.write(_get_struct_10H().pack(*self.center_x))
      buff.write(_get_struct_10H().pack(*self.center_y))
      buff.write(_get_struct_10f().pack(*self.distance))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 1
      (self.num_objects,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 20
      self.center_x = _get_struct_10H().unpack(str[start:end])
      start = end
      end += 20
      self.center_y = _get_struct_10H().unpack(str[start:end])
      start = end
      end += 40
      self.distance = _get_struct_10f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.num_objects
      buff.write(_get_struct_B().pack(_x))
      buff.write(self.center_x.tostring())
      buff.write(self.center_y.tostring())
      buff.write(self.distance.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 1
      (self.num_objects,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 20
      self.center_x = numpy.frombuffer(str[start:end], dtype=numpy.uint16, count=10)
      start = end
      end += 20
      self.center_y = numpy.frombuffer(str[start:end], dtype=numpy.uint16, count=10)
      start = end
      end += 40
      self.distance = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=10)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10H = None
def _get_struct_10H():
    global _struct_10H
    if _struct_10H is None:
        _struct_10H = struct.Struct("<10H")
    return _struct_10H
_struct_10f = None
def _get_struct_10f():
    global _struct_10f
    if _struct_10f is None:
        _struct_10f = struct.Struct("<10f")
    return _struct_10f
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
