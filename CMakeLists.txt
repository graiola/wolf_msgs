cmake_minimum_required(VERSION 3.0.2)
project(wolf_msgs)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    std_msgs
    geometry_msgs
    sensor_msgs
    nav_msgs
    message_generation
    message_runtime
)

# wolf_controller messages
add_message_files(
    DIRECTORY 
        msg/controller
    FILES
        CartesianTask.msg
        PosturalTask.msg
        ComTask.msg
        WrenchTask.msg
        ContactForces.msg
        FootHolds.msg
        TerrainEstimation.msg
        FrictionCones.msg
        CapturePoint.msg
        ControllerState.msg
        Cartesian.msg
        Com.msg
        Wrench.msg
        Postural.msg
)

# wolf_navigation messages
add_message_files(
    DIRECTORY 
        msg/navigation
    FILES
        Waypoint.msg
        MapAnnotation.msg
        MapAnnotations.msg
)

add_service_files(
    FILES
        common/Float32.srv
        common/String.srv
        navigation/TaskInfo.srv
        navigation/TaskName.srv
        navigation/AddWaypoint.srv
        navigation/AddWaypoints.srv
)

generate_messages(
    DEPENDENCIES
    geometry_msgs
    std_msgs
)

include_directories(
    include
    ${catkin_INCLUDE_DIRS}
)

catkin_package()

#install(DIRECTORY include/
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/include
#  PATTERN ".svn" EXCLUDE
#)


