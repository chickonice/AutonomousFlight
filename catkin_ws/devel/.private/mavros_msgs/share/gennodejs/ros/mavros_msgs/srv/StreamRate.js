// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StreamRateRequest {
  constructor() {
    this.stream_id = 0;
    this.message_rate = 0;
    this.on_off = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type StreamRateRequest
    // Serialize message field [stream_id]
    bufferInfo = _serializer.uint8(obj.stream_id, bufferInfo);
    // Serialize message field [message_rate]
    bufferInfo = _serializer.uint16(obj.message_rate, bufferInfo);
    // Serialize message field [on_off]
    bufferInfo = _serializer.bool(obj.on_off, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type StreamRateRequest
    let tmp;
    let len;
    let data = new StreamRateRequest();
    // Deserialize message field [stream_id]
    tmp = _deserializer.uint8(buffer);
    data.stream_id = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [message_rate]
    tmp = _deserializer.uint16(buffer);
    data.message_rate = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [on_off]
    tmp = _deserializer.bool(buffer);
    data.on_off = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/StreamRateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd12f7661724c8ba25f67ba597bb7d039';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    uint8 STREAM_ALL = 0
    uint8 STREAM_RAW_SENSORS = 1
    uint8 STREAM_EXTENDED_STATUS = 2
    uint8 STREAM_RC_CHANNELS = 3
    uint8 STREAM_RAW_CONTROLLER = 4
    uint8 STREAM_POSITION = 6
    uint8 STREAM_EXTRA1 = 10
    uint8 STREAM_EXTRA2 = 11
    uint8 STREAM_EXTRA3 = 12
    
    uint8 stream_id
    uint16 message_rate
    bool on_off
    
    `;
  }

};

// Constants for message
StreamRateRequest.Constants = {
  STREAM_ALL: 0,
  STREAM_RAW_SENSORS: 1,
  STREAM_EXTENDED_STATUS: 2,
  STREAM_RC_CHANNELS: 3,
  STREAM_RAW_CONTROLLER: 4,
  STREAM_POSITION: 6,
  STREAM_EXTRA1: 10,
  STREAM_EXTRA2: 11,
  STREAM_EXTRA3: 12,
}

class StreamRateResponse {
  constructor() {
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type StreamRateResponse
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type StreamRateResponse
    let tmp;
    let len;
    let data = new StreamRateResponse();
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/StreamRateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

};

module.exports = {
  Request: StreamRateRequest,
  Response: StreamRateResponse
};
