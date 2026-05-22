# Authoritative C2 robot/module/capability state published by wolf_c2.
uint8 UNKNOWN=0
uint8 UGV=1
uint8 UAV=2
uint8 OTHER=255

std_msgs/Header header

string robot_id
string display_name
uint8 robot_type

string task_type
string task_state
string control_mode
string motion_state

string link_state
string gnss_state
string local_pose_state
string positioning_mode

string control_state
string navigation_state
string perception_state

bool armed
bool armed_known

float32 speed_mps
float32 heading_deg
float32 pose_age_sec

string[] available_tasks
string[] disabled_task_reasons

string active_navigation_profile
bool manual_control_available

string state_source
