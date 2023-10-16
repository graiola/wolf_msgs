std_msgs/Header header
bool global_coord # If true x,y are longitude and latitude
float32 x
float32 y
float32 yaw
float32 hold # Hold time at the waypoint
bool use_yaw # If false, ignore the yaw value in this msg and compute the yaw based on robot heading
