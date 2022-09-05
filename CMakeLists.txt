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

add_message_files(FILES
    CartesianTask.msg
    PosturalTask.msg
    ComTask.msg
    ContactForces.msg
    FootHolds.msg
    TerrainEstimation.msg
    FrictionCones.msg
    CapturePoint.msg
)

add_service_files(
    FILES
    float32.srv
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


