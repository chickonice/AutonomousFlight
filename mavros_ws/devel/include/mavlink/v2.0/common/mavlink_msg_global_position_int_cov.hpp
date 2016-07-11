// MESSAGE GLOBAL_POSITION_INT_COV support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief GLOBAL_POSITION_INT_COV message
 *
 * The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It  is designed as scaled integer message since the resolution of float is not sufficient. NOTE: This message is intended for onboard networks / companion computers and higher-bandwidth links and optimized for accuracy and completeness. Please use the GLOBAL_POSITION_INT message for a minimal subset.
 */
struct GLOBAL_POSITION_INT_COV : mavlink::Message {
    static constexpr msgid_t MSG_ID = 63;
    static constexpr size_t LENGTH = 185;
    static constexpr size_t MIN_LENGTH = 185;
    static constexpr uint8_t CRC_EXTRA = 51;
    static constexpr auto NAME = "GLOBAL_POSITION_INT_COV";


    uint32_t time_boot_ms; /*< Timestamp (milliseconds since system boot) */
    uint64_t time_utc; /*< Timestamp (microseconds since UNIX epoch) in UTC. 0 for unknown. Commonly filled by the precision time source of a GPS receiver. */
    uint8_t estimator_type; /*< Class id of the estimator this estimate originated from. */
    int32_t lat; /*< Latitude, expressed as degrees * 1E7 */
    int32_t lon; /*< Longitude, expressed as degrees * 1E7 */
    int32_t alt; /*< Altitude in meters, expressed as * 1000 (millimeters), above MSL */
    int32_t relative_alt; /*< Altitude above ground in meters, expressed as * 1000 (millimeters) */
    float vx; /*< Ground X Speed (Latitude), expressed as m/s */
    float vy; /*< Ground Y Speed (Longitude), expressed as m/s */
    float vz; /*< Ground Z Speed (Altitude), expressed as m/s */
    std::array<float, 36> covariance; /*< Covariance matrix (first six entries are the first ROW, next six entries are the second row, etc.) */


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
        ss << "  lat: " << lat << std::endl;
        ss << "  lon: " << lon << std::endl;
        ss << "  alt: " << alt << std::endl;
        ss << "  relative_alt: " << relative_alt << std::endl;
        ss << "  vx: " << vx << std::endl;
        ss << "  vy: " << vy << std::endl;
        ss << "  vz: " << vz << std::endl;
        ss << "  covariance: [" << to_string(covariance) << "]" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << time_utc;                      // offset: 0
        map << time_boot_ms;                  // offset: 8
        map << lat;                           // offset: 12
        map << lon;                           // offset: 16
        map << alt;                           // offset: 20
        map << relative_alt;                  // offset: 24
        map << vx;                            // offset: 28
        map << vy;                            // offset: 32
        map << vz;                            // offset: 36
        map << covariance;                    // offset: 40
        map << estimator_type;                // offset: 184
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> time_utc;                      // offset: 0
        map >> time_boot_ms;                  // offset: 8
        map >> lat;                           // offset: 12
        map >> lon;                           // offset: 16
        map >> alt;                           // offset: 20
        map >> relative_alt;                  // offset: 24
        map >> vx;                            // offset: 28
        map >> vy;                            // offset: 32
        map >> vz;                            // offset: 36
        map >> covariance;                    // offset: 40
        map >> estimator_type;                // offset: 184
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
