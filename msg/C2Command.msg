# UI intent emitted by operator frontends. Backend dispatch remains external.
uint8 SET_GOAL=1
uint8 APPEND_WAYPOINTS=2
uint8 CLEAR_WAYPOINTS=3
uint8 CANCEL_MISSION=4
uint8 START_WAYPOINTS=5
uint8 SET_WAYPOINTS_PATROL_MODE=6
uint8 SET_HOME=7
uint8 START_HOMING=8
uint8 SET_LEADER=10
uint8 SET_FORMATION_MODE=11
uint8 SET_FORMATION_SLOT=12

std_msgs/Header header
uint8 action
string source
string[] robot_ids
geometry_msgs/PoseStamped[] poses
string leader_id
string formation_mode
# Used by SET_WAYPOINTS_PATROL_MODE
bool waypoints_patrol_mode
