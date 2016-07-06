// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Vibration {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.vibration = new geometry_msgs.msg.Vector3();
    this.clipping = new Array(3).fill(0);
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Vibration
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [vibration]
    bufferInfo = geometry_msgs.msg.Vector3.serialize(obj.vibration, bufferInfo);
    // Serialize message field [clipping]
    obj.clipping.forEach((val) => {
      bufferInfo = _serializer.float32(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Vibration
    let tmp;
    let len;
    let data = new Vibration();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [vibration]
    tmp = geometry_msgs.msg.Vector3.deserialize(buffer);
    data.vibration = tmp.data;
    buffer = tmp.buffer;
    len = 3;
    // Deserialize message field [clipping]
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.float32(buffer);
      data.clipping[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/Vibration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb92bf9b7aa735dfcd06b3ede5027d02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # VIBRATION message data
    # @description: Vibration levels and accelerometer clipping
    
    std_msgs/Header header
    
    geometry_msgs/Vector3 vibration		# 3-axis vibration levels
    float32[3] clipping				# Accelerometers clipping
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

};

module.exports = Vibration;
