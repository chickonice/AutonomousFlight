// MESSAGE VICON_POSITION_ESTIMATE support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief VICON_POSITION_ESTIMATE message
 *
 * 
 */
struct VICON_POSITION_ESTIMATE : mavlink::Message {
    static constexpr msgid_t MSG_ID = 104;
    static constexpr size_t LENGTH = 32;
    static constexpr size_t MIN_LENGTH = 32;
    static constexpr uint8_t CRC_EXTRA = 56;
    static constexpr auto NAME = "VICON_POSITION_ESTIMATE";


    uint64_t usec; /*< Timestamp (microseconds, synced to UNIX time or since system boot) */
    float x; /*< Global X position */
    float y; /*< Global Y position */
    float z; /*< Global Z position */
    float roll; /*< Roll angle in rad */
    float pitch; /*< Pitch angle in rad */
    float yaw; /*< Yaw angle in rad */


    inline std::string get_name(void) const override
    {
            return NAME;
    }

    inline Info get_message_info(void) const override
    {
            return { MSG_ID, LENGTH, MIN_LENGTH, CRC_EXTRA };
    }

    inline std::string to_yaml(void) const override
    {
        std::stringstream ss;

        ss << NAME << ":" << std::endl;
        ss << "  usec: " << usec << std::endl;
        ss << "  x: " << x << std::endl;
        ss << "  y: " << y << std::endl;
        ss << "  z: " << z << std::endl;
        ss << "  roll: " << roll << std::endl;
        ss << "  pitch: " << pitch << std::endl;
        ss << "  yaw: " << yaw << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << usec;                          // offset: 0
        map << x;                             // offset: 8
        map << y;                             // offset: 12
        map << z;                             // offset: 16
        map << roll;                          // offset: 20
        map << pitch;                         // offset: 24
        map << yaw;                           // offset: 28
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> usec;                          // offset: 0
        map >> x;                             // offset: 8
        map >> y;                             // offset: 12
        map >> z;                             // offset: 16
        map >> roll;                          // offset: 20
        map >> pitch;                         // offset: 24
        map >> yaw;                           // offset: 28
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
