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

class RtkMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.raw_string = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('raw_string')) {
        this.raw_string = initObj.raw_string
      }
      else {
        this.raw_string = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RtkMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [raw_string]
    bufferOffset = _serializer.string(obj.raw_string, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RtkMsg
    let len;
    let data = new RtkMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [raw_string]
    data.raw_string = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.raw_string.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'devices/RtkMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd09cacb8395420a614d91e15f9502b9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message of navigation information read from the SPAN-CPT system (log INSPVAX)
    
    # Hedaer of this ros message
    # header.seq        : consecutive increasing ID
    # header.stamp      : timestamp of the message
    #   .sec            : seconds
    #   .nsec           : nanoseconds
    # header.frame_id   : name of this data
    Header header
    
    # Raw string recorded from RTK rover
    string raw_string
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
    const resolved = new RtkMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.raw_string !== undefined) {
      resolved.raw_string = msg.raw_string;
    }
    else {
      resolved.raw_string = ''
    }

    return resolved;
    }
};

module.exports = RtkMsg;
