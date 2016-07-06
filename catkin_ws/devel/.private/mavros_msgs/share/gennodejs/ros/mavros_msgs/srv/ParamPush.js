// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ParamPushRequest {
  constructor() {
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ParamPushRequest
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ParamPushRequest
    let tmp;
    let len;
    let data = new ParamPushRequest();
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/ParamPushRequest';
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

class ParamPushResponse {
  constructor() {
    this.success = false;
    this.param_transfered = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ParamPushResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [param_transfered]
    bufferInfo = _serializer.uint32(obj.param_transfered, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ParamPushResponse
    let tmp;
    let len;
    let data = new ParamPushResponse();
    // Deserialize message field [success]
    tmp = _deserializer.bool(buffer);
    data.success = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param_transfered]
    tmp = _deserializer.uint32(buffer);
    data.param_transfered = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/ParamPushResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3fc4d8cefa193382985a92a041a2a3d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint32 param_transfered
    
    
    `;
  }

};

module.exports = {
  Request: ParamPushRequest,
  Response: ParamPushResponse
};
