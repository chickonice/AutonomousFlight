// MESSAGE SERIAL_UDB_EXTRA_F2_B support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F2_B message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA - F2: Part B
 */
struct SERIAL_UDB_EXTRA_F2_B : mavlink::Message {
    static constexpr msgid_t MSG_ID = 171;
    static constexpr size_t LENGTH = 70;
    static constexpr size_t MIN_LENGTH = 70;
    static constexpr uint8_t CRC_EXTRA = 169;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F2_B";


    uint32_t sue_time; /*< Serial UDB Extra Time */
    int16_t sue_pwm_input_1; /*< Serial UDB Extra PWM Input Channel 1 */
    int16_t sue_pwm_input_2; /*< Serial UDB Extra PWM Input Channel 2 */
    int16_t sue_pwm_input_3; /*< Serial UDB Extra PWM Input Channel 3 */
    int16_t sue_pwm_input_4; /*< Serial UDB Extra PWM Input Channel 4 */
    int16_t sue_pwm_input_5; /*< Serial UDB Extra PWM Input Channel 5 */
    int16_t sue_pwm_input_6; /*< Serial UDB Extra PWM Input Channel 6 */
    int16_t sue_pwm_input_7; /*< Serial UDB Extra PWM Input Channel 7 */
    int16_t sue_pwm_input_8; /*< Serial UDB Extra PWM Input Channel 8 */
    int16_t sue_pwm_input_9; /*< Serial UDB Extra PWM Input Channel 9 */
    int16_t sue_pwm_input_10; /*< Serial UDB Extra PWM Input Channel 10 */
    int16_t sue_pwm_output_1; /*< Serial UDB Extra PWM Output Channel 1 */
    int16_t sue_pwm_output_2; /*< Serial UDB Extra PWM Output Channel 2 */
    int16_t sue_pwm_output_3; /*< Serial UDB Extra PWM Output Channel 3 */
    int16_t sue_pwm_output_4; /*< Serial UDB Extra PWM Output Channel 4 */
    int16_t sue_pwm_output_5; /*< Serial UDB Extra PWM Output Channel 5 */
    int16_t sue_pwm_output_6; /*< Serial UDB Extra PWM Output Channel 6 */
    int16_t sue_pwm_output_7; /*< Serial UDB Extra PWM Output Channel 7 */
    int16_t sue_pwm_output_8; /*< Serial UDB Extra PWM Output Channel 8 */
    int16_t sue_pwm_output_9; /*< Serial UDB Extra PWM Output Channel 9 */
    int16_t sue_pwm_output_10; /*< Serial UDB Extra PWM Output Channel 10 */
    int16_t sue_imu_location_x; /*< Serial UDB Extra IMU Location X */
    int16_t sue_imu_location_y; /*< Serial UDB Extra IMU Location Y */
    int16_t sue_imu_location_z; /*< Serial UDB Extra IMU Location Z */
    uint32_t sue_flags; /*< Serial UDB Extra Status Flags */
    int16_t sue_osc_fails; /*< Serial UDB Extra Oscillator Failure Count */
    int16_t sue_imu_velocity_x; /*< Serial UDB Extra IMU Velocity X */
    int16_t sue_imu_velocity_y; /*< Serial UDB Extra IMU Velocity Y */
    int16_t sue_imu_velocity_z; /*< Serial UDB Extra IMU Velocity Z */
    int16_t sue_waypoint_goal_x; /*< Serial UDB Extra Current Waypoint Goal X */
    int16_t sue_waypoint_goal_y; /*< Serial UDB Extra Current Waypoint Goal Y */
    int16_t sue_waypoint_goal_z; /*< Serial UDB Extra Current Waypoint Goal Z */
    int16_t sue_memory_stack_free; /*< Serial UDB Extra Stack Memory Free */


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
        ss << "  sue_time: " << sue_time << std::endl;
        ss << "  sue_pwm_input_1: " << sue_pwm_input_1 << std::endl;
        ss << "  sue_pwm_input_2: " << sue_pwm_input_2 << std::endl;
        ss << "  sue_pwm_input_3: " << sue_pwm_input_3 << std::endl;
        ss << "  sue_pwm_input_4: " << sue_pwm_input_4 << std::endl;
        ss << "  sue_pwm_input_5: " << sue_pwm_input_5 << std::endl;
        ss << "  sue_pwm_input_6: " << sue_pwm_input_6 << std::endl;
        ss << "  sue_pwm_input_7: " << sue_pwm_input_7 << std::endl;
        ss << "  sue_pwm_input_8: " << sue_pwm_input_8 << std::endl;
        ss << "  sue_pwm_input_9: " << sue_pwm_input_9 << std::endl;
        ss << "  sue_pwm_input_10: " << sue_pwm_input_10 << std::endl;
        ss << "  sue_pwm_output_1: " << sue_pwm_output_1 << std::endl;
        ss << "  sue_pwm_output_2: " << sue_pwm_output_2 << std::endl;
        ss << "  sue_pwm_output_3: " << sue_pwm_output_3 << std::endl;
        ss << "  sue_pwm_output_4: " << sue_pwm_output_4 << std::endl;
        ss << "  sue_pwm_output_5: " << sue_pwm_output_5 << std::endl;
        ss << "  sue_pwm_output_6: " << sue_pwm_output_6 << std::endl;
        ss << "  sue_pwm_output_7: " << sue_pwm_output_7 << std::endl;
        ss << "  sue_pwm_output_8: " << sue_pwm_output_8 << std::endl;
        ss << "  sue_pwm_output_9: " << sue_pwm_output_9 << std::endl;
        ss << "  sue_pwm_output_10: " << sue_pwm_output_10 << std::endl;
        ss << "  sue_imu_location_x: " << sue_imu_location_x << std::endl;
        ss << "  sue_imu_location_y: " << sue_imu_location_y << std::endl;
        ss << "  sue_imu_location_z: " << sue_imu_location_z << std::endl;
        ss << "  sue_flags: " << sue_flags << std::endl;
        ss << "  sue_osc_fails: " << sue_osc_fails << std::endl;
        ss << "  sue_imu_velocity_x: " << sue_imu_velocity_x << std::endl;
        ss << "  sue_imu_velocity_y: " << sue_imu_velocity_y << std::endl;
        ss << "  sue_imu_velocity_z: " << sue_imu_velocity_z << std::endl;
        ss << "  sue_waypoint_goal_x: " << sue_waypoint_goal_x << std::endl;
        ss << "  sue_waypoint_goal_y: " << sue_waypoint_goal_y << std::endl;
        ss << "  sue_waypoint_goal_z: " << sue_waypoint_goal_z << std::endl;
        ss << "  sue_memory_stack_free: " << sue_memory_stack_free << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_time;                      // offset: 0
        map << sue_flags;                     // offset: 4
        map << sue_pwm_input_1;               // offset: 8
        map << sue_pwm_input_2;               // offset: 10
        map << sue_pwm_input_3;               // offset: 12
        map << sue_pwm_input_4;               // offset: 14
        map << sue_pwm_input_5;               // offset: 16
        map << sue_pwm_input_6;               // offset: 18
        map << sue_pwm_input_7;               // offset: 20
        map << sue_pwm_input_8;               // offset: 22
        map << sue_pwm_input_9;               // offset: 24
        map << sue_pwm_input_10;              // offset: 26
        map << sue_pwm_output_1;              // offset: 28
        map << sue_pwm_output_2;              // offset: 30
        map << sue_pwm_output_3;              // offset: 32
        map << sue_pwm_output_4;              // offset: 34
        map << sue_pwm_output_5;              // offset: 36
        map << sue_pwm_output_6;              // offset: 38
        map << sue_pwm_output_7;              // offset: 40
        map << sue_pwm_output_8;              // offset: 42
        map << sue_pwm_output_9;              // offset: 44
        map << sue_pwm_output_10;             // offset: 46
        map << sue_imu_location_x;            // offset: 48
        map << sue_imu_location_y;            // offset: 50
        map << sue_imu_location_z;            // offset: 52
        map << sue_osc_fails;                 // offset: 54
        map << sue_imu_velocity_x;            // offset: 56
        map << sue_imu_velocity_y;            // offset: 58
        map << sue_imu_velocity_z;            // offset: 60
        map << sue_waypoint_goal_x;           // offset: 62
        map << sue_waypoint_goal_y;           // offset: 64
        map << sue_waypoint_goal_z;           // offset: 66
        map << sue_memory_stack_free;         // offset: 68
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_time;                      // offset: 0
        map >> sue_flags;                     // offset: 4
        map >> sue_pwm_input_1;               // offset: 8
        map >> sue_pwm_input_2;               // offset: 10
        map >> sue_pwm_input_3;               // offset: 12
        map >> sue_pwm_input_4;               // offset: 14
        map >> sue_pwm_input_5;               // offset: 16
        map >> sue_pwm_input_6;               // offset: 18
        map >> sue_pwm_input_7;               // offset: 20
        map >> sue_pwm_input_8;               // offset: 22
        map >> sue_pwm_input_9;               // offset: 24
        map >> sue_pwm_input_10;              // offset: 26
        map >> sue_pwm_output_1;              // offset: 28
        map >> sue_pwm_output_2;              // offset: 30
        map >> sue_pwm_output_3;              // offset: 32
        map >> sue_pwm_output_4;              // offset: 34
        map >> sue_pwm_output_5;              // offset: 36
        map >> sue_pwm_output_6;              // offset: 38
        map >> sue_pwm_output_7;              // offset: 40
        map >> sue_pwm_output_8;              // offset: 42
        map >> sue_pwm_output_9;              // offset: 44
        map >> sue_pwm_output_10;             // offset: 46
        map >> sue_imu_location_x;            // offset: 48
        map >> sue_imu_location_y;            // offset: 50
        map >> sue_imu_location_z;            // offset: 52
        map >> sue_osc_fails;                 // offset: 54
        map >> sue_imu_velocity_x;            // offset: 56
        map >> sue_imu_velocity_y;            // offset: 58
        map >> sue_imu_velocity_z;            // offset: 60
        map >> sue_waypoint_goal_x;           // offset: 62
        map >> sue_waypoint_goal_y;           // offset: 64
        map >> sue_waypoint_goal_z;           // offset: 66
        map >> sue_memory_stack_free;         // offset: 68
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
