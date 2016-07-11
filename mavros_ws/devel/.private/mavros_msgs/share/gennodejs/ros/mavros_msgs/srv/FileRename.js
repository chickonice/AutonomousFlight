// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class FileRenameRequest {
  constructor() {
    this.old_path = '';
    this.new_path = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileRenameRequest
    // Serialize message field [old_path]
    bufferInfo = _serializer.string(obj.old_path, bufferInfo);
    // Serialize message field [new_path]
    bufferInfo = _serializer.string(obj.new_path, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileRenameRequest
    let tmp;
    let len;
    let data = new FileRenameRequest();
    // Deserialize message field [old_path]
    tmp = _deserializer.string(buffer);
    data.old_path = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [new_path]
    tmp = _deserializer.string(buffer);
    data.new_path = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileRenameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4a29684c4f7a3290a1bec0a9de2ed01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    string old_path
    string new_path
    
    `;
  }

};

class FileRenameResponse {
  constructor() {
    this.success = false;
    this.r_errno = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileRenameResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [r_errno]
    bufferInfo = _serializer.int32(obj.r_errno, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileRenameResponse
    let tmp;
    let len;
    let data = new FileRenameResponse();
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
    return 'mavros_msgs/FileRenameResponse';
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
  Request: FileRenameRequest,
  Response: FileRenameResponse
};
