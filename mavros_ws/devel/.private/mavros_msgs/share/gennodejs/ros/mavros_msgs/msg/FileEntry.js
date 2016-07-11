// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class FileEntry {
  constructor() {
    this.name = '';
    this.type = 0;
    this.size = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type FileEntry
    // Serialize message field [name]
    bufferInfo = _serializer.string(obj.name, bufferInfo);
    // Serialize message field [type]
    bufferInfo = _serializer.uint8(obj.type, bufferInfo);
    // Serialize message field [size]
    bufferInfo = _serializer.uint64(obj.size, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type FileEntry
    let tmp;
    let len;
    let data = new FileEntry();
    // Deserialize message field [name]
    tmp = _deserializer.string(buffer);
    data.name = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [type]
    tmp = _deserializer.uint8(buffer);
    data.type = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [size]
    tmp = _deserializer.uint64(buffer);
    data.size = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/FileEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ed706bccb946c5b3a5087569cc53ac3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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

// Constants for message
FileEntry.Constants = {
  TYPE_FILE: 0,
  TYPE_DIRECTORY: 1,
}

module.exports = FileEntry;
