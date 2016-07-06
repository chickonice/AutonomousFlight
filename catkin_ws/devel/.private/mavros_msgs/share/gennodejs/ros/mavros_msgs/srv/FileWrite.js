// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileWriteRequest {
  constructor() {
    this.file_path = '';
    this.offset = 0;
    this.data = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileWriteRequest
    // Serialize message field [file_path]
    bufferInfo = _serializer.string(obj.file_path, bufferInfo);
    // Serialize message field [offset]
    bufferInfo = _serializer.uint64(obj.offset, bufferInfo);
    // Serialize the length for message field [data]
    bufferInfo = _serializer.uint32(obj.data.length, bufferInfo);
    // Serialize message field [data]
    bufferInfo.buffer.push(obj.data);
    bufferInfo.length += obj.data.length;
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileWriteRequest
    let tmp;
    let len;
    let data = new FileWriteRequest();
    // Deserialize message field [file_path]
    tmp = _deserializer.string(buffer);
    data.file_path = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [offset]
    tmp = _deserializer.uint64(buffer);
    data.offset = tmp.data;
    buffer = tmp.buffer;
    // Deserialize array length for message field [data]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [data]
    data.data = buffer.slice(0, len);
    buffer =  buffer.slice(len);
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileWriteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf1a270aa1398f3f1fac1649fe2275ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    string file_path
    uint64 offset
    uint8[] data
    
    `;
  }

};

class FileWriteResponse {
  constructor() {
    this.success = false;
    this.r_errno = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileWriteResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [r_errno]
    bufferInfo = _serializer.int32(obj.r_errno, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileWriteResponse
    let tmp;
    let len;
    let data = new FileWriteResponse();
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
    return 'mavros_msgs/FileWriteResponse';
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
  Request: FileWriteRequest,
  Response: FileWriteResponse
};
