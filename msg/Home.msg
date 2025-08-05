# wolf_msgs/msg/Home.msg

# Standard message header
std_msgs/Header header

# Geographic coordinates (WGS84)
float64 latitude
float64 longitude
float64 altitude

# Local ENU position (meters)
geometry_msgs/Point position

# Orientation as a quaternion (ENU frame)
geometry_msgs/Quaternion orientation

# Optional validity flags
bool valid_alt
bool valid_hpos
bool valid_lpos
