// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ParamPullRequest {
  constructor() {
    this.force_pull = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ParamPullRequest
    // Serialize message field [force_pull]
    bufferInfo = _serializer.bool(obj.force_pull, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ParamPullRequest
    let tmp;
    let len;
    let data = new ParamPullRequest();
    // Deserialize message field [force_pull]
    tmp = _deserializer.bool(buffer);
    data.force_pull = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/ParamPullRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16415b4e049d3f92df764eeb461102b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    bool force_pull
    
    `;
  }

};

class ParamPullResponse {
  constructor() {
    this.success = false;
    this.param_received = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ParamPullResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [param_received]
    bufferInfo = _serializer.uint32(obj.param_received, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ParamPullResponse
    let tmp;
    let len;
    let data = new ParamPullResponse();
    // Deserialize message field [success]
    tmp = _deserializer.bool(buffer);
    data.success = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param_received]
    tmp = _deserializer.uint32(buffer);
    data.param_received = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/ParamPullResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5601e883220b149a3209512e966299f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint32 param_received
    
    
    `;
  }

};

module.exports = {
  Request: ParamPullRequest,
  Response: ParamPullResponse
};
