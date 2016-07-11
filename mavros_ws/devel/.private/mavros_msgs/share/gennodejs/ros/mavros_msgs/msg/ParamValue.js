// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class ParamValue {
  constructor() {
    this.integer = 0;
    this.real = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ParamValue
    // Serialize message field [integer]
    bufferInfo = _serializer.int64(obj.integer, bufferInfo);
    // Serialize message field [real]
    bufferInfo = _serializer.float64(obj.real, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ParamValue
    let tmp;
    let len;
    let data = new ParamValue();
    // Deserialize message field [integer]
    tmp = _deserializer.int64(buffer);
    data.integer = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [real]
    tmp = _deserializer.float64(buffer);
    data.real = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/ParamValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2cb1c7a0f6ef0c62d450cd9362c980d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Parameter value storage type.
    #
    # Integer and float fields:
    #
    # if integer != 0: it is integer value
    # else if real != 0.0: it is float value
    # else: it is zero.
    
    int64 integer
    float64 real
    
    `;
  }

};

module.exports = ParamValue;
