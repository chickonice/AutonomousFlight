// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

let FileEntry = require('../msg/FileEntry.js');

//-----------------------------------------------------------

class FileListRequest {
  constructor() {
    this.dir_path = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileListRequest
    // Serialize message field [dir_path]
    bufferInfo = _serializer.string(obj.dir_path, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileListRequest
    let tmp;
    let len;
    let data = new FileListRequest();
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
    return 'mavros_msgs/FileListRequest';
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

class FileListResponse {
  constructor() {
    this.list = [];
    this.success = false;
    this.r_errno = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileListResponse
    // Serialize the length for message field [list]
    bufferInfo = _serializer.uint32(obj.list.length, bufferInfo);
    // Serialize message field [list]
    obj.list.forEach((val) => {
      bufferInfo = FileEntry.serialize(val, bufferInfo);
    });
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [r_errno]
    bufferInfo = _serializer.int32(obj.r_errno, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileListResponse
    let tmp;
    let len;
    let data = new FileListResponse();
    // Deserialize array length for message field [list]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [list]
    data.list = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = FileEntry.deserialize(buffer);
      data.list[i] = tmp.data;
      buffer = tmp.buffer;
    }
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
    return 'mavros_msgs/FileListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3cf4be333d40be8a08832e3b61ed4336';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mavros_msgs/FileEntry[] list
    bool success
    int32 r_errno
    
    
    ================================================================================
    MSG: mavros_msgs/FileEntry
    # File/Dir information
    
    uint8 TYPE_FILE = 0
    uint8 TYPE_DIRECTORY = 1
    
    string name
    uint8 type
    uint64 size
    
    # Not supported by MAVLink FTP
    #time atime
    #int32 access_flags
    
    `;
  }

};

module.exports = {
  Request: FileListRequest,
  Response: FileListResponse
};
