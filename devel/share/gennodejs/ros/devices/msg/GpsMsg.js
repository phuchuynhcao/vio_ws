// Auto-generated. Do not edit!

// (in-package devices.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GpsStatus = require('./GpsStatus.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GpsMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.latlongheight = null;
      this.latlongheight_error = null;
      this.llh_origin = null;
      this.enu_position = null;
      this.velocity = null;
      this.velocity_error = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('latlongheight')) {
        this.latlongheight = initObj.latlongheight
      }
      else {
        this.latlongheight = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('latlongheight_error')) {
        this.latlongheight_error = initObj.latlongheight_error
      }
      else {
        this.latlongheight_error = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('llh_origin')) {
        this.llh_origin = initObj.llh_origin
      }
      else {
        this.llh_origin = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('enu_position')) {
        this.enu_position = initObj.enu_position
      }
      else {
        this.enu_position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_error')) {
        this.velocity_error = initObj.velocity_error
      }
      else {
        this.velocity_error = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new GpsStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [latlongheight]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.latlongheight, buffer, bufferOffset);
    // Serialize message field [latlongheight_error]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.latlongheight_error, buffer, bufferOffset);
    // Serialize message field [llh_origin]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.llh_origin, buffer, bufferOffset);
    // Serialize message field [enu_position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.enu_position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [velocity_error]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity_error, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = GpsStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsMsg
    let len;
    let data = new GpsMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [latlongheight]
    data.latlongheight = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [latlongheight_error]
    data.latlongheight_error = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [llh_origin]
    data.llh_origin = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [enu_position]
    data.enu_position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_error]
    data.velocity_error = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = GpsStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += GpsStatus.getMessageSize(object.status);
    return length + 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'devices/GpsMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f47c7c77f2a7901121e8d2f16bd8f0f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    geometry_msgs/Vector3 latlongheight
    geometry_msgs/Vector3 latlongheight_error
    geometry_msgs/Vector3 llh_origin
    geometry_msgs/Vector3 enu_position
    geometry_msgs/Vector3 velocity # <course-over-ground> <speed-over-ground> <up speed>
    geometry_msgs/Vector3 velocity_error
    GpsStatus status
    
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
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: devices/GpsStatus
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
    const resolved = new GpsMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.latlongheight !== undefined) {
      resolved.latlongheight = geometry_msgs.msg.Vector3.Resolve(msg.latlongheight)
    }
    else {
      resolved.latlongheight = new geometry_msgs.msg.Vector3()
    }

    if (msg.latlongheight_error !== undefined) {
      resolved.latlongheight_error = geometry_msgs.msg.Vector3.Resolve(msg.latlongheight_error)
    }
    else {
      resolved.latlongheight_error = new geometry_msgs.msg.Vector3()
    }

    if (msg.llh_origin !== undefined) {
      resolved.llh_origin = geometry_msgs.msg.Vector3.Resolve(msg.llh_origin)
    }
    else {
      resolved.llh_origin = new geometry_msgs.msg.Vector3()
    }

    if (msg.enu_position !== undefined) {
      resolved.enu_position = geometry_msgs.msg.Vector3.Resolve(msg.enu_position)
    }
    else {
      resolved.enu_position = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_error !== undefined) {
      resolved.velocity_error = geometry_msgs.msg.Vector3.Resolve(msg.velocity_error)
    }
    else {
      resolved.velocity_error = new geometry_msgs.msg.Vector3()
    }

    if (msg.status !== undefined) {
      resolved.status = GpsStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new GpsStatus()
    }

    return resolved;
    }
};

module.exports = GpsMsg;
