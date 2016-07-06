// MESSAGE FW_SOARING_DATA support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief FW_SOARING_DATA message
 *
 * Fixed-wing soaring (i.e. thermal seeking) data
 */
struct FW_SOARING_DATA : mavlink::Message {
    static constexpr msgid_t MSG_ID = 210;
    static constexpr size_t LENGTH = 58;
    static constexpr size_t MIN_LENGTH = 58;
    static constexpr uint8_t CRC_EXTRA = 129;
    static constexpr auto NAME = "FW_SOARING_DATA";


    uint64_t timestamp; /*< Timestamp [ms] */
    uint64_t timestampModeChanged; /*< Timestamp since last mode change[ms] */
    float CurrentUpdraftSpeed; /*< Updraft speed at current/local airplane position [m/s] */
    float xW; /*< Thermal core updraft strength [m/s] */
    float xR; /*< Thermal radius [m] */
    float xLat; /*< Thermal center latitude [deg] */
    float xLon; /*< Thermal center longitude [deg] */
    float VarW; /*< Variance W */
    float VarR; /*< Variance R */
    float VarLat; /*< Variance Lat */
    float VarLon; /*< Variance Lon  */
    float LoiterRadius; /*< Suggested loiter radius [m] */
    uint8_t ControlMode; /*< Control Mode [-] */
    uint8_t valid; /*< Data valid [-] */


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
        ss << "  timestamp: " << timestamp << std::endl;
        ss << "  timestampModeChanged: " << timestampModeChanged << std::endl;
        ss << "  CurrentUpdraftSpeed: " << CurrentUpdraftSpeed << std::endl;
        ss << "  xW: " << xW << std::endl;
        ss << "  xR: " << xR << std::endl;
        ss << "  xLat: " << xLat << std::endl;
        ss << "  xLon: " << xLon << std::endl;
        ss << "  VarW: " << VarW << std::endl;
        ss << "  VarR: " << VarR << std::endl;
        ss << "  VarLat: " << VarLat << std::endl;
        ss << "  VarLon: " << VarLon << std::endl;
        ss << "  LoiterRadius: " << LoiterRadius << std::endl;
        ss << "  ControlMode: " << +ControlMode << std::endl;
        ss << "  valid: " << +valid << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << timestamp;                     // offset: 0
        map << timestampModeChanged;          // offset: 8
        map << CurrentUpdraftSpeed;           // offset: 16
        map << xW;                            // offset: 20
        map << xR;                            // offset: 24
        map << xLat;                          // offset: 28
        map << xLon;                          // offset: 32
        map << VarW;                          // offset: 36
        map << VarR;                          // offset: 40
        map << VarLat;                        // offset: 44
        map << VarLon;                        // offset: 48
        map << LoiterRadius;                  // offset: 52
        map << ControlMode;                   // offset: 56
        map << valid;                         // offset: 57
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> timestamp;                     // offset: 0
        map >> timestampModeChanged;          // offset: 8
        map >> CurrentUpdraftSpeed;           // offset: 16
        map >> xW;                            // offset: 20
        map >> xR;                            // offset: 24
        map >> xLat;                          // offset: 28
        map >> xLon;                          // offset: 32
        map >> VarW;                          // offset: 36
        map >> VarR;                          // offset: 40
        map >> VarLat;                        // offset: 44
        map >> VarLon;                        // offset: 48
        map >> LoiterRadius;                  // offset: 52
        map >> ControlMode;                   // offset: 56
        map >> valid;                         // offset: 57
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
