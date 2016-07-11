// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileTruncateRequest {
  constructor() {
    this.file_path = '';
    this.length = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileTruncateRequest
    // Serialize message field [file_path]
    bufferInfo = _serializer.string(obj.file_path, bufferInfo);
    // Serialize message field [length]
    bufferInfo = _serializer.uint64(obj.length, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileTruncateRequest
    let tmp;
    let len;
    let data = new FileTruncateRequest();
    // Deserialize message field [file_path]
    tmp = _deserializer.string(buffer);
    data.file_path = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [length]
    tmp = _deserializer.uint64(buffer);
    data.length = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileTruncateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8153dbfb1601dd12c2e69aba3171d186';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    string file_path
    uint64 length
    
    `;
  }

};

class FileTruncateResponse {
  constructor() {
    this.success = false;
    this.r_errno = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileTruncateResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [r_errno]
    bufferInfo = _serializer.int32(obj.r_errno, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileTruncateResponse
    let tmp;
    let len;
    let data = new FileTruncateResponse();
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
    return 'mavros_msgs/FileTruncateResponse';
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
  Request: FileTruncateRequest,
  Response: FileTruncateResponse
};
