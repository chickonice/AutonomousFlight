// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommandIntRequest {
  constructor() {
    this.broadcast = false;
    this.frame = 0;
    this.command = 0;
    this.current = 0;
    this.autocontinue = 0;
    this.param1 = 0.0;
    this.param2 = 0.0;
    this.param3 = 0.0;
    this.param4 = 0.0;
    this.x = 0;
    this.y = 0;
    this.z = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CommandIntRequest
    // Serialize message field [broadcast]
    bufferInfo = _serializer.bool(obj.broadcast, bufferInfo);
    // Serialize message field [frame]
    bufferInfo = _serializer.uint8(obj.frame, bufferInfo);
    // Serialize message field [command]
    bufferInfo = _serializer.uint16(obj.command, bufferInfo);
    // Serialize message field [current]
    bufferInfo = _serializer.uint8(obj.current, bufferInfo);
    // Serialize message field [autocontinue]
    bufferInfo = _serializer.uint8(obj.autocontinue, bufferInfo);
    // Serialize message field [param1]
    bufferInfo = _serializer.float32(obj.param1, bufferInfo);
    // Serialize message field [param2]
    bufferInfo = _serializer.float32(obj.param2, bufferInfo);
    // Serialize message field [param3]
    bufferInfo = _serializer.float32(obj.param3, bufferInfo);
    // Serialize message field [param4]
    bufferInfo = _serializer.float32(obj.param4, bufferInfo);
    // Serialize message field [x]
    bufferInfo = _serializer.int32(obj.x, bufferInfo);
    // Serialize message field [y]
    bufferInfo = _serializer.int32(obj.y, bufferInfo);
    // Serialize message field [z]
    bufferInfo = _serializer.float32(obj.z, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CommandIntRequest
    let tmp;
    let len;
    let data = new CommandIntRequest();
    // Deserialize message field [broadcast]
    tmp = _deserializer.bool(buffer);
    data.broadcast = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [frame]
    tmp = _deserializer.uint8(buffer);
    data.frame = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [command]
    tmp = _deserializer.uint16(buffer);
    data.command = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [current]
    tmp = _deserializer.uint8(buffer);
    data.current = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [autocontinue]
    tmp = _deserializer.uint8(buffer);
    data.autocontinue = tmp.data;
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
    // Deserialize message field [x]
    tmp = _deserializer.int32(buffer);
    data.x = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [y]
    tmp = _deserializer.int32(buffer);
    data.y = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [z]
    tmp = _deserializer.float32(buffer);
    data.z = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/CommandIntRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6165959012c47e0f665b640c1ab12391';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    bool broadcast
    
    uint8 frame
    uint16 command
    uint8 current
    uint8 autocontinue
    float32 param1
    float32 param2
    float32 param3
    float32 param4
    int32 x
    int32 y
    float32 z
    
    `;
  }

};

class CommandIntResponse {
  constructor() {
    this.success = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CommandIntResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CommandIntResponse
    let tmp;
    let len;
    let data = new CommandIntResponse();
    // Deserialize message field [success]
    tmp = _deserializer.bool(buffer);
    data.success = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/CommandIntResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    
    
    `;
  }

};

module.exports = {
  Request: CommandIntRequest,
  Response: CommandIntResponse
};
