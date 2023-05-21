# Message of navigation information read from the SPAN-CPT system (log INSPVAX)

# Hedaer of this ros message
# header.seq        : consecutive increasing ID
# header.stamp      : timestamp of the message
#   .sec            : seconds
#   .nsec           : nanoseconds
# header.frame_id   : name of this data
Header header

# Raw string recorded from RTK rover
string raw_string