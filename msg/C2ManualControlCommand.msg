# C2-level manual-control intent from operator frontend to wolf_c2.
std_msgs/Header header
string source
string[] robot_ids

float32 linear_x
float32 linear_y
float32 angular_z

float32 trans_speed_limit
float32 rot_speed_limit

bool enable
bool stop
