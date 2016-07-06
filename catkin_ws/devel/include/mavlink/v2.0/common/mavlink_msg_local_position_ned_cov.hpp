// MESSAGE LOCAL_POSITION_NED_COV support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief LOCAL_POSITION_NED_COV message
 *
 * The filtered local position (e.g. fused computer vision and accelerometers). Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)
 */
struct LOCAL_POSITION_NED_COV : mavlink::Message {
    static constexpr msgid_t MSG_ID = 64;
    static constexpr size_t LENGTH = 229;
    static constexpr size_t MIN_LENGTH = 229;
    static constexpr uint8_t CRC_EXTRA = 59;
    static constexpr auto NAME = "LOCAL_POSITION_NED_COV";


    uint32_t time_boot_ms; /*< Timestamp (milliseconds since system boot). 0 for system without monotonic timestamp */
    uint64_t time_utc; /*< Timestamp (microseconds since UNIX epoch) in UTC. 0 for unknown. Commonly filled by the precision time source of a GPS receiver. */
    uint8_t estimator_type; /*< Class id of the estimator this estimate originated from. */
    float x; /*< X Position */
    float y; /*< Y Position */
    float z; /*< Z Position */
    float vx; /*< X Speed (m/s) */
    float vy; /*< Y Speed (m/s) */
    float vz; /*< Z Speed (m/s) */
    float ax; /*< X Acceleration (m/s^2) */
    float ay; /*< Y Acceleration (m/s^2) */
    float az; /*< Z Acceleration (m/s^2) */
    std::array<float, 45> covariance; /*< Covariance matrix upper right triangular (first nine entries are the first ROW, next eight entries are the second row, etc.) */


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
        ss << "  time_utc: " << time_utc << std::endl;
        ss << "  estimator_type: " << +estimator_type << std::endl;
        ss << "  x: " << x << std::endl;
        ss << "  y: " << y << std::endl;
        ss << "  z: " << z << std::endl;
        ss << "  vx: " << vx << std::endl;
        ss << "  vy: " << vy << std::endl;
        ss << "  vz: " << vz << std::endl;
        ss << "  ax: " << ax << std::endl;
        ss << "  ay: " << ay << std::endl;
        ss << "  az: " << az << std::endl;
        ss << "  covariance: [" << to_string(covariance) << "]" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << time_utc;                      // offset: 0
        map << time_boot_ms;                  // offset: 8
        map << x;                             // offset: 12
        map << y;                             // offset: 16
        map << z;                             // offset: 20
        map << vx;                            // offset: 24
        map << vy;                            // offset: 28
        map << vz;                            // offset: 32
        map << ax;                            // offset: 36
        map << ay;                            // offset: 40
        map << az;                            // offset: 44
        map << covariance;                    // offset: 48
        map << estimator_type;                // offset: 228
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> time_utc;                      // offset: 0
        map >> time_boot_ms;                  // offset: 8
        map >> x;                             // offset: 12
        map >> y;                             // offset: 16
        map >> z;                             // offset: 20
        map >> vx;                            // offset: 24
        map >> vy;                            // offset: 28
        map >> vz;                            // offset: 32
        map >> ax;                            // offset: 36
        map >> ay;                            // offset: 40
        map >> az;                            // offset: 44
        map >> covariance;                    // offset: 48
        map >> estimator_type;                // offset: 228
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
