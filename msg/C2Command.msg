# UI intent emitted by operator frontends. Backend dispatch remains external.
uint8 SET_GOAL=1
uint8 APPEND_WAYPOINTS=2
uint8 CLEAR_WAYPOINTS=3
uint8 CANCEL_MISSION=4

std_msgs/Header header
uint8 action
string source
string[] robot_ids
geometry_msgs/PoseStamped[] poses
