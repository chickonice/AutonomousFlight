// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommandTriggerControlRequest {
  constructor() {
    this.trigger_enable = false;
    this.integration_time = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CommandTriggerControlRequest
    // Serialize message field [trigger_enable]
    bufferInfo = _serializer.bool(obj.trigger_enable, bufferInfo);
    // Serialize message field [integration_time]
    bufferInfo = _serializer.float32(obj.integration_time, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CommandTriggerControlRequest
    let tmp;
    let len;
    let data = new CommandTriggerControlRequest();
    // Deserialize message field [trigger_enable]
    tmp = _deserializer.bool(buffer);
    data.trigger_enable = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [integration_time]
    tmp = _deserializer.float32(buffer);
    data.integration_time = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/CommandTriggerControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b8f5196da8cf0a44cb3975e4f2ea948';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    bool    trigger_enable
    float32 integration_time
    
    `;
  }

};

class CommandTriggerControlResponse {
  constructor() {
    this.success = false;
    this.result = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CommandTriggerControlResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [result]
    bufferInfo = _serializer.uint8(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CommandTriggerControlResponse
    let tmp;
    let len;
    let data = new CommandTriggerControlResponse();
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
    return 'mavros_msgs/CommandTriggerControlResponse';
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
  Request: CommandTriggerControlRequest,
  Response: CommandTriggerControlResponse
};
