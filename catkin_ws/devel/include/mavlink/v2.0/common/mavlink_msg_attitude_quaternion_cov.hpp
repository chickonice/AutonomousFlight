// MESSAGE ATTITUDE_QUATERNION_COV support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief ATTITUDE_QUATERNION_COV message
 *
 * The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0).
 */
struct ATTITUDE_QUATERNION_COV : mavlink::Message {
    static constexpr msgid_t MSG_ID = 61;
    static constexpr size_t LENGTH = 68;
    static constexpr size_t MIN_LENGTH = 68;
    static constexpr uint8_t CRC_EXTRA = 153;
    static constexpr auto NAME = "ATTITUDE_QUATERNION_COV";


    uint32_t time_boot_ms; /*< Timestamp (milliseconds since system boot) */
    std::array<float, 4> q; /*< Quaternion components, w, x, y, z (1 0 0 0 is the null-rotation) */
    float rollspeed; /*< Roll angular speed (rad/s) */
    float pitchspeed; /*< Pitch angular speed (rad/s) */
    float yawspeed; /*< Yaw angular speed (rad/s) */
    std::array<float, 9> covariance; /*< Attitude covariance */


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
        ss << "  time_boot_ms: " << time_boot_ms << std::endl;
        ss << "  q: [" << to_string(q) << "]" << std::endl;
        ss << "  rollspeed: " << rollspeed << std::endl;
        ss << "  pitchspeed: " << pitchspeed << std::endl;
        ss << "  yawspeed: " << yawspeed << std::endl;
        ss << "  covariance: [" << to_string(covariance) << "]" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << time_boot_ms;                  // offset: 0
        map << q;                             // offset: 4
        map << rollspeed;                     // offset: 20
        map << pitchspeed;                    // offset: 24
        map << yawspeed;                      // offset: 28
        map << covariance;                    // offset: 32
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> time_boot_ms;                  // offset: 0
        map >> q;                             // offset: 4
        map >> rollspeed;                     // offset: 20
        map >> pitchspeed;                    // offset: 24
        map >> yawspeed;                      // offset: 28
        map >> covariance;                    // offset: 32
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
