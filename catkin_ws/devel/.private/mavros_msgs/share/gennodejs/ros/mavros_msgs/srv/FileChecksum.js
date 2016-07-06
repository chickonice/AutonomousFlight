// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileChecksumRequest {
  constructor() {
    this.file_path = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileChecksumRequest
    // Serialize message field [file_path]
    bufferInfo = _serializer.string(obj.file_path, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileChecksumRequest
    let tmp;
    let len;
    let data = new FileChecksumRequest();
    // Deserialize message field [file_path]
    tmp = _deserializer.string(buffer);
    data.file_path = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileChecksumRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1f82596372c52a517e1fe32d1e998e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    string file_path
    
    `;
  }

};

class FileChecksumResponse {
  constructor() {
    this.crc32 = 0;
    this.success = false;
    this.r_errno = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileChecksumResponse
    // Serialize message field [crc32]
    bufferInfo = _serializer.uint32(obj.crc32, bufferInfo);
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [r_errno]
    bufferInfo = _serializer.int32(obj.r_errno, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileChecksumResponse
    let tmp;
    let len;
    let data = new FileChecksumResponse();
    // Deserialize message field [crc32]
    tmp = _deserializer.uint32(buffer);
    data.crc32 = tmp.data;
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
    return 'mavros_msgs/FileChecksumResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ecf737b97670b745ca39c7b185cc756';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 crc32
    bool success
    int32 r_errno
    
    
    `;
  }

};

module.exports = {
  Request: FileChecksumRequest,
  Response: FileChecksumResponse
};
