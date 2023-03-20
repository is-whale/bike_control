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

class odrive_can_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bytes = null;
      this.data_len = null;
      this.can_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bytes')) {
        this.bytes = initObj.bytes
      }
      else {
        this.bytes = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('data_len')) {
        this.data_len = initObj.data_len
      }
      else {
        this.data_len = 0;
      }
      if (initObj.hasOwnProperty('can_id')) {
        this.can_id = initObj.can_id
      }
      else {
        this.can_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type odrive_can_msg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [bytes] has the right length
    if (obj.bytes.length !== 8) {
      throw new Error('Unable to serialize array field bytes - length must be 8')
    }
    // Serialize message field [bytes]
    bufferOffset = _arraySerializer.uint8(obj.bytes, buffer, bufferOffset, 8);
    // Serialize message field [data_len]
    bufferOffset = _serializer.uint8(obj.data_len, buffer, bufferOffset);
    // Serialize message field [can_id]
    bufferOffset = _serializer.uint32(obj.can_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type odrive_can_msg
    let len;
    let data = new odrive_can_msg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bytes]
    data.bytes = _arrayDeserializer.uint8(buffer, bufferOffset, 8)
    // Deserialize message field [data_len]
    data.data_len = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [can_id]
    data.can_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bike_core/odrive_can_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88e94c1249be4512f5bc03b9ca2f7e24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint8[8] bytes
    uint8 data_len
    uint32 can_id
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
    const resolved = new odrive_can_msg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bytes !== undefined) {
      resolved.bytes = msg.bytes;
    }
    else {
      resolved.bytes = new Array(8).fill(0)
    }

    if (msg.data_len !== undefined) {
      resolved.data_len = msg.data_len;
    }
    else {
      resolved.data_len = 0
    }

    if (msg.can_id !== undefined) {
      resolved.can_id = msg.can_id;
    }
    else {
      resolved.can_id = 0
    }

    return resolved;
    }
};

module.exports = odrive_can_msg;
