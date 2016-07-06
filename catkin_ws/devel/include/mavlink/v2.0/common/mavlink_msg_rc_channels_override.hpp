// MESSAGE RC_CHANNELS_OVERRIDE support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief RC_CHANNELS_OVERRIDE message
 *
 * The RAW values of the RC channels sent to the MAV to override info received from the RC radio. A value of UINT16_MAX means no change to that channel. A value of 0 means control of that channel should be released back to the RC radio. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. Individual receivers/transmitters might violate this specification.
 */
struct RC_CHANNELS_OVERRIDE : mavlink::Message {
    static constexpr msgid_t MSG_ID = 70;
    static constexpr size_t LENGTH = 18;
    static constexpr size_t MIN_LENGTH = 18;
    static constexpr uint8_t CRC_EXTRA = 124;
    static constexpr auto NAME = "RC_CHANNELS_OVERRIDE";


    uint8_t target_system; /*< System ID */
    uint8_t target_component; /*< Component ID */
    uint16_t chan1_raw; /*< RC channel 1 value, in microseconds. A value of UINT16_MAX means to ignore this field. */
    uint16_t chan2_raw; /*< RC channel 2 value, in microseconds. A value of UINT16_MAX means to ignore this field. */
    uint16_t chan3_raw; /*< RC channel 3 value, in microseconds. A value of UINT16_MAX means to ignore this field. */
    uint16_t chan4_raw; /*< RC channel 4 value, in microseconds. A value of UINT16_MAX means to ignore this field. */
    uint16_t chan5_raw; /*< RC channel 5 value, in microseconds. A value of UINT16_MAX means to ignore this field. */
    uint16_t chan6_raw; /*< RC channel 6 value, in microseconds. A value of UINT16_MAX means to ignore this field. */
    uint16_t chan7_raw; /*< RC channel 7 value, in microseconds. A value of UINT16_MAX means to ignore this field. */
    uint16_t chan8_raw; /*< RC channel 8 value, in microseconds. A value of UINT16_MAX means to ignore this field. */


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
        ss << "  target_system: " << +target_system << std::endl;
        ss << "  target_component: " << +target_component << std::endl;
        ss << "  chan1_raw: " << chan1_raw << std::endl;
        ss << "  chan2_raw: " << chan2_raw << std::endl;
        ss << "  chan3_raw: " << chan3_raw << std::endl;
        ss << "  chan4_raw: " << chan4_raw << std::endl;
        ss << "  chan5_raw: " << chan5_raw << std::endl;
        ss << "  chan6_raw: " << chan6_raw << std::endl;
        ss << "  chan7_raw: " << chan7_raw << std::endl;
        ss << "  chan8_raw: " << chan8_raw << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << chan1_raw;                     // offset: 0
        map << chan2_raw;                     // offset: 2
        map << chan3_raw;                     // offset: 4
        map << chan4_raw;                     // offset: 6
        map << chan5_raw;                     // offset: 8
        map << chan6_raw;                     // offset: 10
        map << chan7_raw;                     // offset: 12
        map << chan8_raw;                     // offset: 14
        map << target_system;                 // offset: 16
        map << target_component;              // offset: 17
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> chan1_raw;                     // offset: 0
        map >> chan2_raw;                     // offset: 2
        map >> chan3_raw;                     // offset: 4
        map >> chan4_raw;                     // offset: 6
        map >> chan5_raw;                     // offset: 8
        map >> chan6_raw;                     // offset: 10
        map >> chan7_raw;                     // offset: 12
        map >> chan8_raw;                     // offset: 14
        map >> target_system;                 // offset: 16
        map >> target_component;              // offset: 17
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
