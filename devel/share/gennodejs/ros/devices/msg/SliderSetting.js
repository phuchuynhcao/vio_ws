// Auto-generated. Do not edit!

// (in-package devices.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SliderSetting {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.P_gain = null;
      this.I_gain = null;
      this.D_gain = null;
    }
    else {
      if (initObj.hasOwnProperty('P_gain')) {
        this.P_gain = initObj.P_gain
      }
      else {
        this.P_gain = 0.0;
      }
      if (initObj.hasOwnProperty('I_gain')) {
        this.I_gain = initObj.I_gain
      }
      else {
        this.I_gain = 0.0;
      }
      if (initObj.hasOwnProperty('D_gain')) {
        this.D_gain = initObj.D_gain
      }
      else {
        this.D_gain = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SliderSetting
    // Serialize message field [P_gain]
    bufferOffset = _serializer.float64(obj.P_gain, buffer, bufferOffset);
    // Serialize message field [I_gain]
    bufferOffset = _serializer.float64(obj.I_gain, buffer, bufferOffset);
    // Serialize message field [D_gain]
    bufferOffset = _serializer.float64(obj.D_gain, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SliderSetting
    let len;
    let data = new SliderSetting(null);
    // Deserialize message field [P_gain]
    data.P_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [I_gain]
    data.I_gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [D_gain]
    data.D_gain = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'devices/SliderSetting';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96232ca94773cb90951bb888425fcbed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ### Message type for live configurate the slider
    
    # PID Controller parameters
    float64 P_gain
    float64 I_gain
    float64 D_gain
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SliderSetting(null);
    if (msg.P_gain !== undefined) {
      resolved.P_gain = msg.P_gain;
    }
    else {
      resolved.P_gain = 0.0
    }

    if (msg.I_gain !== undefined) {
      resolved.I_gain = msg.I_gain;
    }
    else {
      resolved.I_gain = 0.0
    }

    if (msg.D_gain !== undefined) {
      resolved.D_gain = msg.D_gain;
    }
    else {
      resolved.D_gain = 0.0
    }

    return resolved;
    }
};

module.exports = SliderSetting;
