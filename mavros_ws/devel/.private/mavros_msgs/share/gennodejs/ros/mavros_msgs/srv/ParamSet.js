// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let ParamValue = require('../msg/ParamValue.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ParamSetRequest {
  constructor() {
    this.param_id = '';
    this.value = new ParamValue();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ParamSetRequest
    // Serialize message field [param_id]
    bufferInfo = _serializer.string(obj.param_id, bufferInfo);
    // Serialize message field [value]
    bufferInfo = ParamValue.serialize(obj.value, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ParamSetRequest
    let tmp;
    let len;
    let data = new ParamSetRequest();
    // Deserialize message field [param_id]
    tmp = _deserializer.string(buffer);
    data.param_id = tmp.data;
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
    return 'mavros_msgs/ParamSetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a17f346bc27984b348c799c674a04d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    string param_id
    mavros_msgs/ParamValue value
    
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

class ParamSetResponse {
  constructor() {
    this.success = false;
    this.value = new ParamValue();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ParamSetResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [value]
    bufferInfo = ParamValue.serialize(obj.value, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ParamSetResponse
    let tmp;
    let len;
    let data = new ParamSetResponse();
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
    return 'mavros_msgs/ParamSetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '790d22b22b9dbf32a8e8d55578e25477';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    mavros_msgs/ParamValue value
    
    
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
  Request: ParamSetRequest,
  Response: ParamSetResponse
};
