// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ManualControl {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.x = 0.0;
    this.y = 0.0;
    this.z = 0.0;
    this.r = 0.0;
    this.buttons = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ManualControl
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [x]
    bufferInfo = _serializer.float32(obj.x, bufferInfo);
    // Serialize message field [y]
    bufferInfo = _serializer.float32(obj.y, bufferInfo);
    // Serialize message field [z]
    bufferInfo = _serializer.float32(obj.z, bufferInfo);
    // Serialize message field [r]
    bufferInfo = _serializer.float32(obj.r, bufferInfo);
    // Serialize message field [buttons]
    bufferInfo = _serializer.uint16(obj.buttons, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ManualControl
    let tmp;
    let len;
    let data = new ManualControl();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [x]
    tmp = _deserializer.float32(buffer);
    data.x = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [y]
    tmp = _deserializer.float32(buffer);
    data.y = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [z]
    tmp = _deserializer.float32(buffer);
    data.z = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [r]
    tmp = _deserializer.float32(buffer);
    data.r = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [buttons]
    tmp = _deserializer.uint16(buffer);
    data.buttons = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/ManualControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c41e3298484ea98e05ac502ce55af59f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Manual Control state
    std_msgs/Header header
    float32 x
    float32 y
    float32 z
    float32 r
    uint16 buttons
    
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

module.exports = ManualControl;
