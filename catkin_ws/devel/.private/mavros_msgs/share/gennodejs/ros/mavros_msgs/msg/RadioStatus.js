// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RadioStatus {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.rssi = 0;
    this.remrssi = 0;
    this.txbuf = 0;
    this.noise = 0;
    this.remnoise = 0;
    this.rxerrors = 0;
    this.fixed = 0;
    this.rssi_dbm = 0.0;
    this.remrssi_dbm = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type RadioStatus
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [rssi]
    bufferInfo = _serializer.uint8(obj.rssi, bufferInfo);
    // Serialize message field [remrssi]
    bufferInfo = _serializer.uint8(obj.remrssi, bufferInfo);
    // Serialize message field [txbuf]
    bufferInfo = _serializer.uint8(obj.txbuf, bufferInfo);
    // Serialize message field [noise]
    bufferInfo = _serializer.uint8(obj.noise, bufferInfo);
    // Serialize message field [remnoise]
    bufferInfo = _serializer.uint8(obj.remnoise, bufferInfo);
    // Serialize message field [rxerrors]
    bufferInfo = _serializer.uint16(obj.rxerrors, bufferInfo);
    // Serialize message field [fixed]
    bufferInfo = _serializer.uint16(obj.fixed, bufferInfo);
    // Serialize message field [rssi_dbm]
    bufferInfo = _serializer.float32(obj.rssi_dbm, bufferInfo);
    // Serialize message field [remrssi_dbm]
    bufferInfo = _serializer.float32(obj.remrssi_dbm, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type RadioStatus
    let tmp;
    let len;
    let data = new RadioStatus();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [rssi]
    tmp = _deserializer.uint8(buffer);
    data.rssi = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [remrssi]
    tmp = _deserializer.uint8(buffer);
    data.remrssi = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [txbuf]
    tmp = _deserializer.uint8(buffer);
    data.txbuf = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [noise]
    tmp = _deserializer.uint8(buffer);
    data.noise = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [remnoise]
    tmp = _deserializer.uint8(buffer);
    data.remnoise = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [rxerrors]
    tmp = _deserializer.uint16(buffer);
    data.rxerrors = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [fixed]
    tmp = _deserializer.uint16(buffer);
    data.fixed = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [rssi_dbm]
    tmp = _deserializer.float32(buffer);
    data.rssi_dbm = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [remrssi_dbm]
    tmp = _deserializer.float32(buffer);
    data.remrssi_dbm = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/RadioStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04e4a879bb2687140da50a1a821e2190';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RADIO_STATUS message
    
    std_msgs/Header header
    
    # message data
    uint8 rssi
    uint8 remrssi
    uint8 txbuf
    uint8 noise
    uint8 remnoise
    uint16 rxerrors
    uint16 fixed
    
    # calculated
    float32 rssi_dbm
    float32 remrssi_dbm
    
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

module.exports = RadioStatus;
