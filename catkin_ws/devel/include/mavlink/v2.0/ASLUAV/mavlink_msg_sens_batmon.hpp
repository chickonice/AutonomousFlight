// MESSAGE SENS_BATMON support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief SENS_BATMON message
 *
 * Battery pack monitoring data for Li-Ion batteries
 */
struct SENS_BATMON : mavlink::Message {
    static constexpr msgid_t MSG_ID = 209;
    static constexpr size_t LENGTH = 27;
    static constexpr size_t MIN_LENGTH = 27;
    static constexpr uint8_t CRC_EXTRA = 62;
    static constexpr auto NAME = "SENS_BATMON";


    float temperature; /*< Battery pack temperature in [deg C] */
    uint16_t voltage; /*< Battery pack voltage in [mV] */
    int16_t current; /*< Battery pack current in [mA] */
    uint8_t SoC; /*< Battery pack state-of-charge */
    uint16_t batterystatus; /*< Battery monitor status report bits in Hex */
    uint16_t serialnumber; /*< Battery monitor serial number in Hex */
    uint16_t hostfetcontrol; /*< Battery monitor sensor host FET control in Hex */
    uint16_t cellvoltage1; /*< Battery pack cell 1 voltage in [mV] */
    uint16_t cellvoltage2; /*< Battery pack cell 2 voltage in [mV] */
    uint16_t cellvoltage3; /*< Battery pack cell 3 voltage in [mV] */
    uint16_t cellvoltage4; /*< Battery pack cell 4 voltage in [mV] */
    uint16_t cellvoltage5; /*< Battery pack cell 5 voltage in [mV] */
    uint16_t cellvoltage6; /*< Battery pack cell 6 voltage in [mV] */


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
        ss << "  temperature: " << temperature << std::endl;
        ss << "  voltage: " << voltage << std::endl;
        ss << "  current: " << current << std::endl;
        ss << "  SoC: " << +SoC << std::endl;
        ss << "  batterystatus: " << batterystatus << std::endl;
        ss << "  serialnumber: " << serialnumber << std::endl;
        ss << "  hostfetcontrol: " << hostfetcontrol << std::endl;
        ss << "  cellvoltage1: " << cellvoltage1 << std::endl;
        ss << "  cellvoltage2: " << cellvoltage2 << std::endl;
        ss << "  cellvoltage3: " << cellvoltage3 << std::endl;
        ss << "  cellvoltage4: " << cellvoltage4 << std::endl;
        ss << "  cellvoltage5: " << cellvoltage5 << std::endl;
        ss << "  cellvoltage6: " << cellvoltage6 << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << temperature;                   // offset: 0
        map << voltage;                       // offset: 4
        map << current;                       // offset: 6
        map << batterystatus;                 // offset: 8
        map << serialnumber;                  // offset: 10
        map << hostfetcontrol;                // offset: 12
        map << cellvoltage1;                  // offset: 14
        map << cellvoltage2;                  // offset: 16
        map << cellvoltage3;                  // offset: 18
        map << cellvoltage4;                  // offset: 20
        map << cellvoltage5;                  // offset: 22
        map << cellvoltage6;                  // offset: 24
        map << SoC;                           // offset: 26
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> temperature;                   // offset: 0
        map >> voltage;                       // offset: 4
        map >> current;                       // offset: 6
        map >> batterystatus;                 // offset: 8
        map >> serialnumber;                  // offset: 10
        map >> hostfetcontrol;                // offset: 12
        map >> cellvoltage1;                  // offset: 14
        map >> cellvoltage2;                  // offset: 16
        map >> cellvoltage3;                  // offset: 18
        map >> cellvoltage4;                  // offset: 20
        map >> cellvoltage5;                  // offset: 22
        map >> cellvoltage6;                  // offset: 24
        map >> SoC;                           // offset: 26
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
