// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommandLongRequest {
  constructor() {
    this.broadcast = false;
    this.command = 0;
    this.confirmation = 0;
    this.param1 = 0.0;
    this.param2 = 0.0;
    this.param3 = 0.0;
    this.param4 = 0.0;
    this.param5 = 0.0;
    this.param6 = 0.0;
    this.param7 = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CommandLongRequest
    // Serialize message field [broadcast]
    bufferInfo = _serializer.bool(obj.broadcast, bufferInfo);
    // Serialize message field [command]
    bufferInfo = _serializer.uint16(obj.command, bufferInfo);
    // Serialize message field [confirmation]
    bufferInfo = _serializer.uint8(obj.confirmation, bufferInfo);
    // Serialize message field [param1]
    bufferInfo = _serializer.float32(obj.param1, bufferInfo);
    // Serialize message field [param2]
    bufferInfo = _serializer.float32(obj.param2, bufferInfo);
    // Serialize message field [param3]
    bufferInfo = _serializer.float32(obj.param3, bufferInfo);
    // Serialize message field [param4]
    bufferInfo = _serializer.float32(obj.param4, bufferInfo);
    // Serialize message field [param5]
    bufferInfo = _serializer.float32(obj.param5, bufferInfo);
    // Serialize message field [param6]
    bufferInfo = _serializer.float32(obj.param6, bufferInfo);
    // Serialize message field [param7]
    bufferInfo = _serializer.float32(obj.param7, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CommandLongRequest
    let tmp;
    let len;
    let data = new CommandLongRequest();
    // Deserialize message field [broadcast]
    tmp = _deserializer.bool(buffer);
    data.broadcast = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [command]
    tmp = _deserializer.uint16(buffer);
    data.command = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [confirmation]
    tmp = _deserializer.uint8(buffer);
    data.confirmation = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param1]
    tmp = _deserializer.float32(buffer);
    data.param1 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param2]
    tmp = _deserializer.float32(buffer);
    data.param2 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param3]
    tmp = _deserializer.float32(buffer);
    data.param3 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param4]
    tmp = _deserializer.float32(buffer);
    data.param4 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param5]
    tmp = _deserializer.float32(buffer);
    data.param5 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param6]
    tmp = _deserializer.float32(buffer);
    data.param6 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param7]
    tmp = _deserializer.float32(buffer);
    data.param7 = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/CommandLongRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ad16dd8ca2c8f209bfc6c32c71c0dd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    bool broadcast
    
    uint16 command
    uint8 confirmation
    float32 param1
    float32 param2
    float32 param3
    float32 param4
    float32 param5
    float32 param6
    float32 param7
    
    `;
  }

};

class CommandLongResponse {
  constructor() {
    this.success = false;
    this.result = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CommandLongResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [result]
    bufferInfo = _serializer.uint8(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CommandLongResponse
    let tmp;
    let len;
    let data = new CommandLongResponse();
    // Deserialize message field [success]
    tmp = _deserializer.bool(buffer);
    data.success = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [result]
    tmp = _deserializer.uint8(buffer);
    data.result = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/CommandLongResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cd894375e4e3d2861d2222772894fdb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    uint8 result
    
    
    `;
  }

};

module.exports = {
  Request: CommandLongRequest,
  Response: CommandLongResponse
};
