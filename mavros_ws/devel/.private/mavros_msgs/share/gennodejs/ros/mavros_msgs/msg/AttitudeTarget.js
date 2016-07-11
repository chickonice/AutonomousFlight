// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AttitudeTarget {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.type_mask = 0;
    this.orientation = new geometry_msgs.msg.Quaternion();
    this.body_rate = new geometry_msgs.msg.Vector3();
    this.thrust = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type AttitudeTarget
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [type_mask]
    bufferInfo = _serializer.uint8(obj.type_mask, bufferInfo);
    // Serialize message field [orientation]
    bufferInfo = geometry_msgs.msg.Quaternion.serialize(obj.orientation, bufferInfo);
    // Serialize message field [body_rate]
    bufferInfo = geometry_msgs.msg.Vector3.serialize(obj.body_rate, bufferInfo);
    // Serialize message field [thrust]
    bufferInfo = _serializer.float32(obj.thrust, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type AttitudeTarget
    let tmp;
    let len;
    let data = new AttitudeTarget();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [type_mask]
    tmp = _deserializer.uint8(buffer);
    data.type_mask = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [orientation]
    tmp = geometry_msgs.msg.Quaternion.deserialize(buffer);
    data.orientation = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [body_rate]
    tmp = geometry_msgs.msg.Vector3.deserialize(buffer);
    data.body_rate = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [thrust]
    tmp = _deserializer.float32(buffer);
    data.thrust = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/AttitudeTarget';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '456f3af666b22ccd0222ea053a86b548';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for SET_ATTITUDE_TARGET
    #
    # Some complex system requires all feautures that mavlink
    # message provide. See issue #402, #418.
    
    std_msgs/Header header
    
    uint8 type_mask
    uint8 IGNORE_ROLL_RATE = 1	# body_rate.x
    uint8 IGNORE_PITCH_RATE = 2	# body_rate.y
    uint8 IGNORE_YAW_RATE = 4	# body_rate.z
    uint8 IGNORE_THRUST = 64
    uint8 IGNORE_ATTITUDE = 128	# orientation field
    
    geometry_msgs/Quaternion orientation
    geometry_msgs/Vector3 body_rate
    float32 thrust
    
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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

// Constants for message
AttitudeTarget.Constants = {
  IGNORE_ROLL_RATE: 1,
  IGNORE_PITCH_RATE: 2,
  IGNORE_YAW_RATE: 4,
  IGNORE_THRUST: 64,
  IGNORE_ATTITUDE: 128,
}

module.exports = AttitudeTarget;
