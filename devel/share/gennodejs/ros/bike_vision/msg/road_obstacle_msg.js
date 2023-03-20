// Auto-generated. Do not edit!

// (in-package bike_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class road_obstacle_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.num_objects = null;
      this.center_x = null;
      this.center_y = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('num_objects')) {
        this.num_objects = initObj.num_objects
      }
      else {
        this.num_objects = 0;
      }
      if (initObj.hasOwnProperty('center_x')) {
        this.center_x = initObj.center_x
      }
      else {
        this.center_x = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('center_y')) {
        this.center_y = initObj.center_y
      }
      else {
        this.center_y = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = new Array(10).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type road_obstacle_msg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [num_objects]
    bufferOffset = _serializer.uint8(obj.num_objects, buffer, bufferOffset);
    // Check that the constant length array field [center_x] has the right length
    if (obj.center_x.length !== 10) {
      throw new Error('Unable to serialize array field center_x - length must be 10')
    }
    // Serialize message field [center_x]
    bufferOffset = _arraySerializer.uint16(obj.center_x, buffer, bufferOffset, 10);
    // Check that the constant length array field [center_y] has the right length
    if (obj.center_y.length !== 10) {
      throw new Error('Unable to serialize array field center_y - length must be 10')
    }
    // Serialize message field [center_y]
    bufferOffset = _arraySerializer.uint16(obj.center_y, buffer, bufferOffset, 10);
    // Check that the constant length array field [distance] has the right length
    if (obj.distance.length !== 10) {
      throw new Error('Unable to serialize array field distance - length must be 10')
    }
    // Serialize message field [distance]
    bufferOffset = _arraySerializer.float32(obj.distance, buffer, bufferOffset, 10);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type road_obstacle_msg
    let len;
    let data = new road_obstacle_msg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_objects]
    data.num_objects = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [center_x]
    data.center_x = _arrayDeserializer.uint16(buffer, bufferOffset, 10)
    // Deserialize message field [center_y]
    data.center_y = _arrayDeserializer.uint16(buffer, bufferOffset, 10)
    // Deserialize message field [distance]
    data.distance = _arrayDeserializer.float32(buffer, bufferOffset, 10)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 81;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bike_vision/road_obstacle_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e903107bd222aa2e9a5ca84b2a8e152d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new road_obstacle_msg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.num_objects !== undefined) {
      resolved.num_objects = msg.num_objects;
    }
    else {
      resolved.num_objects = 0
    }

    if (msg.center_x !== undefined) {
      resolved.center_x = msg.center_x;
    }
    else {
      resolved.center_x = new Array(10).fill(0)
    }

    if (msg.center_y !== undefined) {
      resolved.center_y = msg.center_y;
    }
    else {
      resolved.center_y = new Array(10).fill(0)
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = new Array(10).fill(0)
    }

    return resolved;
    }
};

module.exports = road_obstacle_msg;
