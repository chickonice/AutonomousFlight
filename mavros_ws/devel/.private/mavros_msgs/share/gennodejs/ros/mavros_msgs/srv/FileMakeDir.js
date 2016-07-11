// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileMakeDirRequest {
  constructor() {
    this.dir_path = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileMakeDirRequest
    // Serialize message field [dir_path]
    bufferInfo = _serializer.string(obj.dir_path, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileMakeDirRequest
    let tmp;
    let len;
    let data = new FileMakeDirRequest();
    // Deserialize message field [dir_path]
    tmp = _deserializer.string(buffer);
    data.dir_path = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileMakeDirRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '401d5cf5f836aaa9ebdc0897f75da874';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    string dir_path
    
    `;
  }

};

class FileMakeDirResponse {
  constructor() {
    this.success = false;
    this.r_errno = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileMakeDirResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [r_errno]
    bufferInfo = _serializer.int32(obj.r_errno, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileMakeDirResponse
    let tmp;
    let len;
    let data = new FileMakeDirResponse();
    // Deserialize message field [success]
    tmp = _deserializer.bool(buffer);
    data.success = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [r_errno]
    tmp = _deserializer.int32(buffer);
    data.r_errno = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileMakeDirResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85394f2e941a8937ac567a617f06157f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    int32 r_errno
    
    
    `;
  }

};

module.exports = {
  Request: FileMakeDirRequest,
  Response: FileMakeDirResponse
};
