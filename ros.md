# ROS - Robotics Operating System

```
rosversion -d         # Print ROS distro name, ensure ROS is installed
roscore               # Start ROS master, helpful to run in dedicated term
rosparam list         # List all available parameters
rostopic list         # List all available parameters
rosservice list       # List all available services

rosparam set parameter_name value  # set a value
rosparam get parameter_name        # get a value

roslaunch ros_pkg_name launch_file_name  # launch a ROS launch file, ex. roslaunch roscpp_tutorials talker_listener.launch

rosrun ros_pkg_name node_name            # launch a ROS node, ex. rosrun roscpp_tutorials talker


```


### TurtleSim

```
roscore     # term 1
rosrun turtlesim turtlesim_node     # term 2
rosrun turtlesim turtle_teleop_key  # term 3, free draw
rosrun turtlesim draw_square        # term 3, draw a square
rosservice call /reset              # term 3, resets the sim
```
