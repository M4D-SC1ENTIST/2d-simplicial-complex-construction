// Auto-generated. Do not edit!

// (in-package kr_mav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MotorRPM {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.motor_count = null;
      this.rpm = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('motor_count')) {
        this.motor_count = initObj.motor_count
      }
      else {
        this.motor_count = 0;
      }
      if (initObj.hasOwnProperty('rpm')) {
        this.rpm = initObj.rpm
      }
      else {
        this.rpm = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorRPM
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [motor_count]
    bufferOffset = _serializer.uint8(obj.motor_count, buffer, bufferOffset);
    // Check that the constant length array field [rpm] has the right length
    if (obj.rpm.length !== 8) {
      throw new Error('Unable to serialize array field rpm - length must be 8')
    }
    // Serialize message field [rpm]
    bufferOffset = _arraySerializer.int16(obj.rpm, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorRPM
    let len;
    let data = new MotorRPM(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_count]
    data.motor_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rpm]
    data.rpm = _arrayDeserializer.int16(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kr_mav_msgs/MotorRPM';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa0b8f1e09aa084c2f05fdb94e7b972e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 motor_count
    int16[8] rpm
    
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
    const resolved = new MotorRPM(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.motor_count !== undefined) {
      resolved.motor_count = msg.motor_count;
    }
    else {
      resolved.motor_count = 0
    }

    if (msg.rpm !== undefined) {
      resolved.rpm = msg.rpm;
    }
    else {
      resolved.rpm = new Array(8).fill(0)
    }

    return resolved;
    }
};

module.exports = MotorRPM;
