// Auto-generated. Do not edit!

// (in-package devices.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WheelMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.encoder_velocity_left = null;
      this.encoder_velocity_right = null;
      this.encoder_position_left = null;
      this.encoder_position_right = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('encoder_velocity_left')) {
        this.encoder_velocity_left = initObj.encoder_velocity_left
      }
      else {
        this.encoder_velocity_left = 0;
      }
      if (initObj.hasOwnProperty('encoder_velocity_right')) {
        this.encoder_velocity_right = initObj.encoder_velocity_right
      }
      else {
        this.encoder_velocity_right = 0;
      }
      if (initObj.hasOwnProperty('encoder_position_left')) {
        this.encoder_position_left = initObj.encoder_position_left
      }
      else {
        this.encoder_position_left = 0;
      }
      if (initObj.hasOwnProperty('encoder_position_right')) {
        this.encoder_position_right = initObj.encoder_position_right
      }
      else {
        this.encoder_position_right = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [encoder_velocity_left]
    bufferOffset = _serializer.int32(obj.encoder_velocity_left, buffer, bufferOffset);
    // Serialize message field [encoder_velocity_right]
    bufferOffset = _serializer.int32(obj.encoder_velocity_right, buffer, bufferOffset);
    // Serialize message field [encoder_position_left]
    bufferOffset = _serializer.int32(obj.encoder_position_left, buffer, bufferOffset);
    // Serialize message field [encoder_position_right]
    bufferOffset = _serializer.int32(obj.encoder_position_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelMsg
    let len;
    let data = new WheelMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [encoder_velocity_left]
    data.encoder_velocity_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [encoder_velocity_right]
    data.encoder_velocity_right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [encoder_position_left]
    data.encoder_position_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [encoder_position_right]
    data.encoder_position_right = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'devices/WheelMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1acbf06768b2f4bd68a3ae020bb8446';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message of information read from the Wheelchair
    
    # Hedaer of this ros message
    # header.seq        : consecutive increasing ID
    # header.stamp      : timestamp of the message
    #   .sec            : seconds
    #   .nsec           : nanoseconds
    # header.frame_id   : name of this data
    Header header
    
    int32 encoder_velocity_left     # [pulse/T]
    int32 encoder_velocity_right    # [pulse/T]
    int32 encoder_position_left     # [pulse]
    int32 encoder_position_right    # [pulse]
    # float64 wheel_velocity_left     # [m/s]  = encoder_velocity_left  * (f * circum / resol)
    # float64 wheel_velocity_right    # [m/s]  = encoder_velocity_right * (f * circum / resol)
    # float64 wheel_position_left     # [m]    = encoder_position_left  * (circum / resol)
    # float64 wheel_position_right    # [m]    = encoder_position_right * (circum / resol)
    
    # Encoder resolution: 3200 pulse/round
    # Wheel circumference: 1.433 meter
    # Sampling frequency (f = 1/T): 100Hz
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.encoder_velocity_left !== undefined) {
      resolved.encoder_velocity_left = msg.encoder_velocity_left;
    }
    else {
      resolved.encoder_velocity_left = 0
    }

    if (msg.encoder_velocity_right !== undefined) {
      resolved.encoder_velocity_right = msg.encoder_velocity_right;
    }
    else {
      resolved.encoder_velocity_right = 0
    }

    if (msg.encoder_position_left !== undefined) {
      resolved.encoder_position_left = msg.encoder_position_left;
    }
    else {
      resolved.encoder_position_left = 0
    }

    if (msg.encoder_position_right !== undefined) {
      resolved.encoder_position_right = msg.encoder_position_right;
    }
    else {
      resolved.encoder_position_right = 0
    }

    return resolved;
    }
};

module.exports = WheelMsg;
