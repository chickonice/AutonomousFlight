// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HilControls {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.roll_ailerons = 0.0;
    this.pitch_elevator = 0.0;
    this.yaw_rudder = 0.0;
    this.throttle = 0.0;
    this.aux1 = 0.0;
    this.aux2 = 0.0;
    this.aux3 = 0.0;
    this.aux4 = 0.0;
    this.mode = 0;
    this.nav_mode = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type HilControls
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [roll_ailerons]
    bufferInfo = _serializer.float32(obj.roll_ailerons, bufferInfo);
    // Serialize message field [pitch_elevator]
    bufferInfo = _serializer.float32(obj.pitch_elevator, bufferInfo);
    // Serialize message field [yaw_rudder]
    bufferInfo = _serializer.float32(obj.yaw_rudder, bufferInfo);
    // Serialize message field [throttle]
    bufferInfo = _serializer.float32(obj.throttle, bufferInfo);
    // Serialize message field [aux1]
    bufferInfo = _serializer.float32(obj.aux1, bufferInfo);
    // Serialize message field [aux2]
    bufferInfo = _serializer.float32(obj.aux2, bufferInfo);
    // Serialize message field [aux3]
    bufferInfo = _serializer.float32(obj.aux3, bufferInfo);
    // Serialize message field [aux4]
    bufferInfo = _serializer.float32(obj.aux4, bufferInfo);
    // Serialize message field [mode]
    bufferInfo = _serializer.uint8(obj.mode, bufferInfo);
    // Serialize message field [nav_mode]
    bufferInfo = _serializer.uint8(obj.nav_mode, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type HilControls
    let tmp;
    let len;
    let data = new HilControls();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [roll_ailerons]
    tmp = _deserializer.float32(buffer);
    data.roll_ailerons = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [pitch_elevator]
    tmp = _deserializer.float32(buffer);
    data.pitch_elevator = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw_rudder]
    tmp = _deserializer.float32(buffer);
    data.yaw_rudder = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [throttle]
    tmp = _deserializer.float32(buffer);
    data.throttle = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [aux1]
    tmp = _deserializer.float32(buffer);
    data.aux1 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [aux2]
    tmp = _deserializer.float32(buffer);
    data.aux2 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [aux3]
    tmp = _deserializer.float32(buffer);
    data.aux3 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [aux4]
    tmp = _deserializer.float32(buffer);
    data.aux4 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [mode]
    tmp = _deserializer.uint8(buffer);
    data.mode = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [nav_mode]
    tmp = _deserializer.uint8(buffer);
    data.nav_mode = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/HilControls';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '698148349c3a2e5720afcae2d934acca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # HilControls.msg
    #
    # ROS representation of MAVLink HIL_CONTROLS
    # See mavlink message documentation here:
    # https://pixhawk.ethz.ch/mavlink/#HIL_CONTROLS
    
    std_msgs/Header header
    float32 roll_ailerons
    float32 pitch_elevator
    float32 yaw_rudder
    float32 throttle
    float32 aux1
    float32 aux2
    float32 aux3
    float32 aux4
    uint8 mode
    uint8 nav_mode
    
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

};

module.exports = HilControls;
