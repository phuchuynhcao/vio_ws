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

class SpanHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
      this.port = null;
      this.idle_time = null;
      this.gps_status = null;
      this.week = null;
      this.second = null;
      this.receiver_status = null;
      this.receiver_version = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('port')) {
        this.port = initObj.port
      }
      else {
        this.port = '';
      }
      if (initObj.hasOwnProperty('idle_time')) {
        this.idle_time = initObj.idle_time
      }
      else {
        this.idle_time = 0.0;
      }
      if (initObj.hasOwnProperty('gps_status')) {
        this.gps_status = initObj.gps_status
      }
      else {
        this.gps_status = '';
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('second')) {
        this.second = initObj.second
      }
      else {
        this.second = 0.0;
      }
      if (initObj.hasOwnProperty('receiver_status')) {
        this.receiver_status = initObj.receiver_status
      }
      else {
        this.receiver_status = '';
      }
      if (initObj.hasOwnProperty('receiver_version')) {
        this.receiver_version = initObj.receiver_version
      }
      else {
        this.receiver_version = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpanHeader
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [port]
    bufferOffset = _serializer.string(obj.port, buffer, bufferOffset);
    // Serialize message field [idle_time]
    bufferOffset = _serializer.float32(obj.idle_time, buffer, bufferOffset);
    // Serialize message field [gps_status]
    bufferOffset = _serializer.string(obj.gps_status, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.uint32(obj.week, buffer, bufferOffset);
    // Serialize message field [second]
    bufferOffset = _serializer.float64(obj.second, buffer, bufferOffset);
    // Serialize message field [receiver_status]
    bufferOffset = _serializer.string(obj.receiver_status, buffer, bufferOffset);
    // Serialize message field [receiver_version]
    bufferOffset = _serializer.uint16(obj.receiver_version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpanHeader
    let len;
    let data = new SpanHeader(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [port]
    data.port = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [idle_time]
    data.idle_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gps_status]
    data.gps_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [second]
    data.second = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [receiver_status]
    data.receiver_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [receiver_version]
    data.receiver_version = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += object.port.length;
    length += object.gps_status.length;
    length += object.receiver_status.length;
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'devices/SpanHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e762a70f279b5ba5260c226d2b8b272';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header of information read from the SPAN-CPT system
    
    string message              # The name of the log or command (string)
    string port                 # The name of the port where the log was generated (string)
    
    float32 idle_time           # The minimum percentage of time the processor is idle, between successive logs, with the same message ID [%]
    string gps_status           # The quality of the GPS reference time (string)
    
    uint32 week                 # The GPS reference week, zero point from midnight of January 5, 1980 [week]
    float64 second              # Seconds since last week [seconds]
    
    string receiver_status      # Status of various hardware and software components of the receiver (4-byte hex number)
    uint16 receiver_version     # Reveiver software build number (0-65535)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpanHeader(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.port !== undefined) {
      resolved.port = msg.port;
    }
    else {
      resolved.port = ''
    }

    if (msg.idle_time !== undefined) {
      resolved.idle_time = msg.idle_time;
    }
    else {
      resolved.idle_time = 0.0
    }

    if (msg.gps_status !== undefined) {
      resolved.gps_status = msg.gps_status;
    }
    else {
      resolved.gps_status = ''
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.second !== undefined) {
      resolved.second = msg.second;
    }
    else {
      resolved.second = 0.0
    }

    if (msg.receiver_status !== undefined) {
      resolved.receiver_status = msg.receiver_status;
    }
    else {
      resolved.receiver_status = ''
    }

    if (msg.receiver_version !== undefined) {
      resolved.receiver_version = msg.receiver_version;
    }
    else {
      resolved.receiver_version = 0
    }

    return resolved;
    }
};

module.exports = SpanHeader;
