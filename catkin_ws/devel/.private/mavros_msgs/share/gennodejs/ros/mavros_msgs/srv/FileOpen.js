// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileOpenRequest {
  constructor() {
    this.file_path = '';
    this.mode = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileOpenRequest
    // Serialize message field [file_path]
    bufferInfo = _serializer.string(obj.file_path, bufferInfo);
    // Serialize message field [mode]
    bufferInfo = _serializer.uint8(obj.mode, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileOpenRequest
    let tmp;
    let len;
    let data = new FileOpenRequest();
    // Deserialize message field [file_path]
    tmp = _deserializer.string(buffer);
    data.file_path = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [mode]
    tmp = _deserializer.uint8(buffer);
    data.mode = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileOpenRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d3365f008508e7b1c9862cdbc4459de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    uint8 MODE_READ = 0
    uint8 MODE_WRITE = 1
    uint8 MODE_CREATE = 2
    
    string file_path
    uint8 mode
    
    `;
  }

};

// Constants for message
FileOpenRequest.Constants = {
  MODE_READ: 0,
  MODE_WRITE: 1,
  MODE_CREATE: 2,
}

class FileOpenResponse {
  constructor() {
    this.size = 0;
    this.success = false;
    this.r_errno = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileOpenResponse
    // Serialize message field [size]
    bufferInfo = _serializer.uint32(obj.size, bufferInfo);
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [r_errno]
    bufferInfo = _serializer.int32(obj.r_errno, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileOpenResponse
    let tmp;
    let len;
    let data = new FileOpenResponse();
    // Deserialize message field [size]
    tmp = _deserializer.uint32(buffer);
    data.size = tmp.data;
    buffer = tmp.buffer;
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
    return 'mavros_msgs/FileOpenResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ff9b1d5b96094ef5adccef61431a04f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 size
    bool success
    int32 r_errno
    
    
    `;
  }

};

module.exports = {
  Request: FileOpenRequest,
  Response: FileOpenResponse
};
