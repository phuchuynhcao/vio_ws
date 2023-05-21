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

class SliderMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current_position = null;
      this.set_position = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('current_position')) {
        this.current_position = initObj.current_position
      }
      else {
        this.current_position = 0.0;
      }
      if (initObj.hasOwnProperty('set_position')) {
        this.set_position = initObj.set_position
      }
      else {
        this.set_position = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SliderMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current_position]
    bufferOffset = _serializer.float64(obj.current_position, buffer, bufferOffset);
    // Serialize message field [set_position]
    bufferOffset = _serializer.float64(obj.set_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SliderMsg
    let len;
    let data = new SliderMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_position]
    data.current_position = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [set_position]
    data.set_position = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'devices/SliderMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80a3b7d98d77f99e273a14e0b8cc28f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ### Message type for the slider bar in my VIO project
    
    # Header contains time stamp, sequence ID and frame ID
    Header header
    # Data includes:
    float64 current_position    # current position of the slider endpoint
    float64 set_position        # set position into the slider controller
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
    const resolved = new SliderMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.current_position !== undefined) {
      resolved.current_position = msg.current_position;
    }
    else {
      resolved.current_position = 0.0
    }

    if (msg.set_position !== undefined) {
      resolved.set_position = msg.set_position;
    }
    else {
      resolved.set_position = 0.0
    }

    return resolved;
    }
};

module.exports = SliderMsg;
