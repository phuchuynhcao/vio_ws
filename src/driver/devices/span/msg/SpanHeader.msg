# Header of information read from the SPAN-CPT system

string message              # The name of the log or command (string)
string port                 # The name of the port where the log was generated (string)

float32 idle_time           # The minimum percentage of time the processor is idle, between successive logs, with the same message ID [%]
string gps_status           # The quality of the GPS reference time (string)

uint32 week                 # The GPS reference week, zero point from midnight of January 5, 1980 [week]
float64 second              # Seconds since last week [seconds]

string receiver_status      # Status of various hardware and software components of the receiver (4-byte hex number)
uint16 receiver_version     # Reveiver software build number (0-65535)
