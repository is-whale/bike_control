// Auto-generated. Do not edit!

// (in-package bike_core.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class remote_control_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ch_x = null;
      this.s1 = null;
      this.s2 = null;
      this.mouse_x = null;
      this.mouse_y = null;
      this.mouse_z = null;
      this.mouse_press_left = null;
      this.mouse_press_right = null;
      this.key_value = null;
      this.virtual_rocker = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ch_x')) {
        this.ch_x = initObj.ch_x
      }
      else {
        this.ch_x = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('s1')) {
        this.s1 = initObj.s1
      }
      else {
        this.s1 = 0;
      }
      if (initObj.hasOwnProperty('s2')) {
        this.s2 = initObj.s2
      }
      else {
        this.s2 = 0;
      }
      if (initObj.hasOwnProperty('mouse_x')) {
        this.mouse_x = initObj.mouse_x
      }
      else {
        this.mouse_x = 0;
      }
      if (initObj.hasOwnProperty('mouse_y')) {
        this.mouse_y = initObj.mouse_y
      }
      else {
        this.mouse_y = 0;
      }
      if (initObj.hasOwnProperty('mouse_z')) {
        this.mouse_z = initObj.mouse_z
      }
      else {
        this.mouse_z = 0;
      }
      if (initObj.hasOwnProperty('mouse_press_left')) {
        this.mouse_press_left = initObj.mouse_press_left
      }
      else {
        this.mouse_press_left = 0;
      }
      if (initObj.hasOwnProperty('mouse_press_right')) {
        this.mouse_press_right = initObj.mouse_press_right
      }
      else {
        this.mouse_press_right = 0;
      }
      if (initObj.hasOwnProperty('key_value')) {
        this.key_value = initObj.key_value
      }
      else {
        this.key_value = 0;
      }
      if (initObj.hasOwnProperty('virtual_rocker')) {
        this.virtual_rocker = initObj.virtual_rocker
      }
      else {
        this.virtual_rocker = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type remote_control_msg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [ch_x] has the right length
    if (obj.ch_x.length !== 5) {
      throw new Error('Unable to serialize array field ch_x - length must be 5')
    }
    // Serialize message field [ch_x]
    bufferOffset = _arraySerializer.int16(obj.ch_x, buffer, bufferOffset, 5);
    // Serialize message field [s1]
    bufferOffset = _serializer.uint8(obj.s1, buffer, bufferOffset);
    // Serialize message field [s2]
    bufferOffset = _serializer.uint8(obj.s2, buffer, bufferOffset);
    // Serialize message field [mouse_x]
    bufferOffset = _serializer.int16(obj.mouse_x, buffer, bufferOffset);
    // Serialize message field [mouse_y]
    bufferOffset = _serializer.int16(obj.mouse_y, buffer, bufferOffset);
    // Serialize message field [mouse_z]
    bufferOffset = _serializer.int16(obj.mouse_z, buffer, bufferOffset);
    // Serialize message field [mouse_press_left]
    bufferOffset = _serializer.uint8(obj.mouse_press_left, buffer, bufferOffset);
    // Serialize message field [mouse_press_right]
    bufferOffset = _serializer.uint8(obj.mouse_press_right, buffer, bufferOffset);
    // Serialize message field [key_value]
    bufferOffset = _serializer.uint16(obj.key_value, buffer, bufferOffset);
    // Check that the constant length array field [virtual_rocker] has the right length
    if (obj.virtual_rocker.length !== 2) {
      throw new Error('Unable to serialize array field virtual_rocker - length must be 2')
    }
    // Serialize message field [virtual_rocker]
    bufferOffset = _arraySerializer.int16(obj.virtual_rocker, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type remote_control_msg
    let len;
    let data = new remote_control_msg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ch_x]
    data.ch_x = _arrayDeserializer.int16(buffer, bufferOffset, 5)
    // Deserialize message field [s1]
    data.s1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [s2]
    data.s2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mouse_x]
    data.mouse_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_y]
    data.mouse_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_z]
    data.mouse_z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_press_left]
    data.mouse_press_left = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mouse_press_right]
    data.mouse_press_right = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [key_value]
    data.key_value = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [virtual_rocker]
    data.virtual_rocker = _arrayDeserializer.int16(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bike_core/remote_control_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b54f566ba84898b7addc0e2d7cd838fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int16[5] ch_x
    uint8 s1
    uint8 s2
    int16 mouse_x
    int16 mouse_y
    int16 mouse_z
    uint8 mouse_press_left
    uint8 mouse_press_right
    uint16 key_value
    int16[2] virtual_rocker
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
    const resolved = new remote_control_msg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ch_x !== undefined) {
      resolved.ch_x = msg.ch_x;
    }
    else {
      resolved.ch_x = new Array(5).fill(0)
    }

    if (msg.s1 !== undefined) {
      resolved.s1 = msg.s1;
    }
    else {
      resolved.s1 = 0
    }

    if (msg.s2 !== undefined) {
      resolved.s2 = msg.s2;
    }
    else {
      resolved.s2 = 0
    }

    if (msg.mouse_x !== undefined) {
      resolved.mouse_x = msg.mouse_x;
    }
    else {
      resolved.mouse_x = 0
    }

    if (msg.mouse_y !== undefined) {
      resolved.mouse_y = msg.mouse_y;
    }
    else {
      resolved.mouse_y = 0
    }

    if (msg.mouse_z !== undefined) {
      resolved.mouse_z = msg.mouse_z;
    }
    else {
      resolved.mouse_z = 0
    }

    if (msg.mouse_press_left !== undefined) {
      resolved.mouse_press_left = msg.mouse_press_left;
    }
    else {
      resolved.mouse_press_left = 0
    }

    if (msg.mouse_press_right !== undefined) {
      resolved.mouse_press_right = msg.mouse_press_right;
    }
    else {
      resolved.mouse_press_right = 0
    }

    if (msg.key_value !== undefined) {
      resolved.key_value = msg.key_value;
    }
    else {
      resolved.key_value = 0
    }

    if (msg.virtual_rocker !== undefined) {
      resolved.virtual_rocker = msg.virtual_rocker;
    }
    else {
      resolved.virtual_rocker = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = remote_control_msg;
