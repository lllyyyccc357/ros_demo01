// Auto-generated. Do not edit!

// (in-package common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
      this.name = null;
      this.dataX = null;
      this.dataY = null;
      this.dataZ = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = 0;
      }
      if (initObj.hasOwnProperty('dataX')) {
        this.dataX = initObj.dataX
      }
      else {
        this.dataX = 0.0;
      }
      if (initObj.hasOwnProperty('dataY')) {
        this.dataY = initObj.dataY
      }
      else {
        this.dataY = 0.0;
      }
      if (initObj.hasOwnProperty('dataZ')) {
        this.dataZ = initObj.dataZ
      }
      else {
        this.dataZ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type data
    // Serialize message field [num]
    bufferOffset = _serializer.uint16(obj.num, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.uint16(obj.name, buffer, bufferOffset);
    // Serialize message field [dataX]
    bufferOffset = _serializer.float64(obj.dataX, buffer, bufferOffset);
    // Serialize message field [dataY]
    bufferOffset = _serializer.float64(obj.dataY, buffer, bufferOffset);
    // Serialize message field [dataZ]
    bufferOffset = _serializer.float64(obj.dataZ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type data
    let len;
    let data = new data(null);
    // Deserialize message field [num]
    data.num = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [dataX]
    data.dataX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dataY]
    data.dataY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dataZ]
    data.dataZ = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common/data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9bb33691428ef10dc0972b1c5accbe4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 num
    # 2 IMU num 0,1
    uint16 name
    # gyro 1 acc 2 mag 3
    float64 dataX
    float64 dataY
    float64 dataZ
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new data(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = 0
    }

    if (msg.dataX !== undefined) {
      resolved.dataX = msg.dataX;
    }
    else {
      resolved.dataX = 0.0
    }

    if (msg.dataY !== undefined) {
      resolved.dataY = msg.dataY;
    }
    else {
      resolved.dataY = 0.0
    }

    if (msg.dataZ !== undefined) {
      resolved.dataZ = msg.dataZ;
    }
    else {
      resolved.dataZ = 0.0
    }

    return resolved;
    }
};

module.exports = data;
