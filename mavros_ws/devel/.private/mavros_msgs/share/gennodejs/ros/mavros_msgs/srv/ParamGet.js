// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

let ParamValue = require('../msg/ParamValue.js');

//-----------------------------------------------------------

class ParamGetRequest {
  constructor() {
    this.param_id = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ParamGetRequest
    // Serialize message field [param_id]
    bufferInfo = _serializer.string(obj.param_id, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ParamGetRequest
    let tmp;
    let len;
    let data = new ParamGetRequest();
    // Deserialize message field [param_id]
    tmp = _deserializer.string(buffer);
    data.param_id = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/ParamGetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0c8304d59f465712790120c3fc4b7d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    string param_id
    
    `;
  }

};

class ParamGetResponse {
  constructor() {
    this.success = false;
    this.value = new ParamValue();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ParamGetResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [value]
    bufferInfo = ParamValue.serialize(obj.value, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ParamGetResponse
    let tmp;
    let len;
    let data = new ParamGetResponse();
    // Deserialize message field [success]
    tmp = _deserializer.bool(buffer);
    data.success = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [value]
    tmp = ParamValue.deserialize(buffer);
    data.value = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/ParamGetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '790d22b22b9dbf32a8e8d55578e25477';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    ParamValue value
    
    
    ================================================================================
    MSG: mavros_msgs/ParamValue
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

module.exports = {
  Request: ParamGetRequest,
  Response: ParamGetResponse
};
