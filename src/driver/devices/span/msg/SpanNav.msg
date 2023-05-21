# Message of navigation information read from the SPAN-CPT system (log INSPVAX)

# Hedaer of this ros message
# header.seq        : consecutive increasing ID
# header.stamp      : timestamp of the message
#   .sec            : seconds
#   .nsec           : nanoseconds
# header.frame_id   : name of this data
Header header

# # Headar of the SPAN message
# SpanHeader span_header

# string ins_status           # Inertial Solution Status (string)
# string pos_type             # Position or Velocity Type (string)

# float64 latitude            # Latitude [degree]
# float64 longtitude          # Longtitude [degree] 
# float64 height              # Orthometric height [m]
# float32 undulation          # Geoid undulation [m]

# float64 vel_north           # North velocity [m/s]
# float64 vel_east            # East velocity [m/s]
# float64 vel_up              # Up velocity [m/s]

# float64 roll                # Rotation angle around Y axis of IMU frame, positive in counter-clockwise [degree]
# float64 pitch               # Rotation angle around X axis of IMU frame, positive in counter-clockwise [degree]
# float64 azimuth             # Rotation angle around Z axis of IMU frame, positive in clockwise [degree]
#                             # The total rotation sequence is (-Z)XY

# float32 sigma_lat           # Standard deviation of latitude [m]
# float32 sigma_long          # Standard deviation of longtitude [m]
# float32 sigma_height        # Standard deviation of height [m]

# float32 sigma_vel_north     # Standard deviation of north velocity [m/s]
# float32 sigma_vel_east      # Standard deviation of east velocity [m/s]
# float32 sigma_vel_up        # Standard deviation of up velocity [m/s]

# float32 sigma_roll          # Standard deviation of roll [degree]
# float32 sigma_pitch         # Standard deviation of pitch [degree]
# float32 sigma_azimuth       # Standard deviation of azimuth [degree]

# string ext_sol_stat         # Extended solution status (4-byte hex number)
# uint16 time_since_update    # Elapsed time since the last ZUPT or position update [second]

# Raw string with time included
string raw_string