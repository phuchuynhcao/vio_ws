# Message of information read from the Wheelchair

# Hedaer of this ros message
# header.seq        : consecutive increasing ID
# header.stamp      : timestamp of the message
#   .sec            : seconds
#   .nsec           : nanoseconds
# header.frame_id   : name of this data
Header header

int32 encoder_velocity_left     # [pulse/T]
int32 encoder_velocity_right    # [pulse/T]
int32 encoder_position_left     # [pulse]
int32 encoder_position_right    # [pulse]
# float64 wheel_velocity_left     # [m/s]  = encoder_velocity_left  * (f * circum / resol)
# float64 wheel_velocity_right    # [m/s]  = encoder_velocity_right * (f * circum / resol)
# float64 wheel_position_left     # [m]    = encoder_position_left  * (circum / resol)
# float64 wheel_position_right    # [m]    = encoder_position_right * (circum / resol)

# Encoder resolution: 3200 pulse/round
# Wheel circumference: 1.433 meter
# Sampling frequency (f = 1/T): 100Hz