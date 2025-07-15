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
            msg
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
            msg
        FILES
            Waypoint.msg
            MapAnnotation.msg
            MapAnnotations.msg
            ImageOverlay.msg
            ImageOverlayArray.msg
    )

    add_service_files(
        FILES
            Float32.srv
            String.srv
            SetPose.srv
            TaskInfo.srv
            TaskName.srv
            AddWaypoint.srv
            AddWaypoints.srv
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
        "msg/CartesianTask.msg"
        "msg/PosturalTask.msg"
        "msg/ComTask.msg"
        "msg/WrenchTask.msg"
        "msg/ContactForces.msg"
        "msg/FootHolds.msg"
        "msg/TerrainEstimation.msg"
        "msg/FrictionCones.msg"
        "msg/CapturePoint.msg"
        "msg/ControllerState.msg"
        "msg/Cartesian.msg"
        "msg/Com.msg"
        "msg/Wrench.msg"
        "msg/Postural.msg"
        "msg/Waypoint.msg"
        "msg/MapAnnotation.msg"
        "msg/MapAnnotations.msg"
        "msg/ImageOverlay.msg"
        "msg/ImageOverlayArray.msg"
        "srv/Float32.srv"
        "srv/String.srv"
        "srv/SetPose.srv"
        "srv/TaskInfo.srv"
        "srv/TaskName.srv"
        "srv/AddWaypoint.srv"
        "srv/AddWaypoints.srv"
        DEPENDENCIES std_msgs std_srvs geometry_msgs nav_msgs sensor_msgs
        LIBRARY_NAME ${PROJECT_NAME}
      )

    ament_export_dependencies(rosidl_default_runtime)

    ament_package()

endif()

