cmake_minimum_required(VERSION 3.5)
project(wolf_msgs)

find_package(catkin QUIET)
find_package(ament_cmake QUIET)

if(${catkin_FOUND})

    find_package(std_msgs REQUIRED)
    find_package(std_srvs REQUIRED)
    find_package(geometry_msgs REQUIRED)
    find_package(sensor_msgs REQUIRED)
    find_package(nav_msgs REQUIRED)
    find_package(message_generation REQUIRED)
    find_package(message_runtime REQUIRED)


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
            ImageOverlay.msg
            ImageOverlayArray.msg
    )

    add_service_files(
        FILES
            common/Float32.srv
            common/String.srv
            common/SetPose.srv
            navigation/TaskInfo.srv
            navigation/TaskName.srv
            navigation/AddWaypoint.srv
            navigation/AddWaypoints.srv
    )

    generate_messages(
        DEPENDENCIES
        sensor_msgs
        geometry_msgs
        std_msgs
    )


    catkin_package()

elseif(${ament_cmake_FOUND})

    find_package(rosidl_default_generators REQUIRED)
    find_package(std_msgs REQUIRED)
    find_package(std_srvs REQUIRED)
    find_package(geometry_msgs REQUIRED)
    find_package(sensor_msgs REQUIRED)
    find_package(nav_msgs REQUIRED)

    rosidl_generate_interfaces(${PROJECT_NAME}
        "msg/controller/CartesianTask.msg"
        "msg/controller/PosturalTask.msg"
        "msg/controller/ComTask.msg"
        "msg/controller/WrenchTask.msg"
        "msg/controller/ContactForces.msg"
        "msg/controller/FootHolds.msg"
        "msg/controller/TerrainEstimation.msg"
        "msg/controller/FrictionCones.msg"
        "msg/controller/CapturePoint.msg"
        "msg/controller/ControllerState.msg"
        "msg/controller/Cartesian.msg"
        "msg/controller/Com.msg"
        "msg/controller/Wrench.msg"
        "msg/controller/Postural.msg"
        "msg/navigation/Waypoint.msg"
        "msg/navigation/MapAnnotation.msg"
        "msg/navigation/MapAnnotations.msg"
        "msg/navigation/ImageOverlay.msg"
        "msg/navigation/ImageOverlayArray.msg"
        "srv/common/Float32.srv"
        "srv/common/String.srv"
        "srv/common/SetPose.srv"
        "srv/navigation/TaskInfo.srv"
        "srv/navigation/TaskName.srv"
        "srv/navigation/AddWaypoint.srv"
        "srv/navigation/AddWaypoints.srv"
        DEPENDENCIES std_msgs std_srvs geometry_msgs nav_msgs sensor_msgs
        LIBRARY_NAME ${PROJECT_NAME}
      )

    ament_export_dependencies(rosidl_default_runtime)

    ament_package()

endif()

