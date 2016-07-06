// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RCIn {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.rssi = 0;
    this.channels = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type RCIn
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [rssi]
    bufferInfo = _serializer.uint8(obj.rssi, bufferInfo);
    // Serialize the length for message field [channels]
    bufferInfo = _serializer.uint32(obj.channels.length, bufferInfo);
    // Serialize message field [channels]
    obj.channels.forEach((val) => {
      bufferInfo = _serializer.uint16(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type RCIn
    let tmp;
    let len;
    let data = new RCIn();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [rssi]
    tmp = _deserializer.uint8(buffer);
    data.rssi = tmp.data;
    buffer = tmp.buffer;
    // Deserialize array length for message field [channels]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [channels]
    data.channels = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.uint16(buffer);
      data.channels[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/RCIn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c3eafdb5efbcda3c334e1788bbcfe39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RAW RC input state
    
    std_msgs/Header header
    uint8 rssi
    uint16[] channels
    
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

module.exports = RCIn;
