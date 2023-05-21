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

class GpsStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.date = null;
      this.time = null;
      this.numsat = null;
      this.quality = null;
      this.hdop = null;
    }
    else {
      if (initObj.hasOwnProperty('date')) {
        this.date = initObj.date
      }
      else {
        this.date = '';
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('numsat')) {
        this.numsat = initObj.numsat
      }
      else {
        this.numsat = 0;
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsStatus
    // Serialize message field [date]
    bufferOffset = _serializer.string(obj.date, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [numsat]
    bufferOffset = _serializer.int16(obj.numsat, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.int16(obj.quality, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = _serializer.float64(obj.hdop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsStatus
    let len;
    let data = new GpsStatus(null);
    // Deserialize message field [date]
    data.date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [numsat]
    data.numsat = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.date.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'devices/GpsStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa776ee501a0e18fe7a26e4b146b0685';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string date
    float64 time
    int16 numsat
    int16 quality
    float64 hdop
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GpsStatus(null);
    if (msg.date !== undefined) {
      resolved.date = msg.date;
    }
    else {
      resolved.date = ''
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.numsat !== undefined) {
      resolved.numsat = msg.numsat;
    }
    else {
      resolved.numsat = 0
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = msg.hdop;
    }
    else {
      resolved.hdop = 0.0
    }

    return resolved;
    }
};

module.exports = GpsStatus;
