// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class HomePosition {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.latitude = 0.0;
    this.longitude = 0.0;
    this.altitude = 0.0;
    this.position = new geometry_msgs.msg.Vector3();
    this.orientation = new geometry_msgs.msg.Quaternion();
    this.approach = new geometry_msgs.msg.Vector3();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type HomePosition
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [latitude]
    bufferInfo = _serializer.float64(obj.latitude, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.float64(obj.longitude, bufferInfo);
    // Serialize message field [altitude]
    bufferInfo = _serializer.float32(obj.altitude, bufferInfo);
    // Serialize message field [position]
    bufferInfo = geometry_msgs.msg.Vector3.serialize(obj.position, bufferInfo);
    // Serialize message field [orientation]
    bufferInfo = geometry_msgs.msg.Quaternion.serialize(obj.orientation, bufferInfo);
    // Serialize message field [approach]
    bufferInfo = geometry_msgs.msg.Vector3.serialize(obj.approach, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type HomePosition
    let tmp;
    let len;
    let data = new HomePosition();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [latitude]
    tmp = _deserializer.float64(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.float64(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [altitude]
    tmp = _deserializer.float32(buffer);
    data.altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [position]
    tmp = geometry_msgs.msg.Vector3.deserialize(buffer);
    data.position = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [orientation]
    tmp = geometry_msgs.msg.Quaternion.deserialize(buffer);
    data.orientation = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [approach]
    tmp = geometry_msgs.msg.Vector3.deserialize(buffer);
    data.approach = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/HomePosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe09e06cf41e29a63fae614876d148fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MAVLink message: HOME_POSITION
    # http://mavlink.org/messages/common#HOME_POSITION
    
    std_msgs/Header header
    
    float64 latitude	# WGS84
    float64 longitude
    float32 altitude	# AMSL
    
    geometry_msgs/Vector3 position	# local position
    geometry_msgs/Quaternion orientation	# XXX: verify field name (q[4])
    geometry_msgs/Vector3 approach	# position of the end of approach vector
    
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
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

};

module.exports = HomePosition;
