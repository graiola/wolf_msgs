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
uint8 START_FOLLOW=13
uint8 STOP_FOLLOW=14
uint8 ARM=15
uint8 TAKEOFF=16
uint8 PAUSE=17
uint8 LAND=18

uint8 TARGET_ANY=0
uint8 TARGET_UGV=1
uint8 TARGET_UAV=2

std_msgs/Header header
uint8 action
string source
# Optional domain selector. TARGET_ANY keeps legacy behavior.
uint8 target_type
string[] robot_ids
geometry_msgs/PoseStamped[] poses
string leader_id
string formation_mode
# Used by SET_WAYPOINTS_PATROL_MODE
bool waypoints_patrol_mode
# Used by START_FOLLOW / STOP_FOLLOW.
# robot_ids are follower targets.
string follow_leader_id
geometry_msgs/Vector3 follow_bias
float32 follow_acceptance_radius
