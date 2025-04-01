# ros1_bridge_ws
ros1自定义消息与ros2自定义消息包名和变量名保持一致

1.
cd <workspace-parent-path>/ros1_msgs_ws
catkin_make

2.
cd <workspace-parent-path>/ros2_msgs_ws
colcon build

3.
source /opt/ros/melodic/setup.bash
source /opt/ros/foxy/setup.bash
source <workspace-parent-path>/ros1_msgs_ws/devel/setup.bash
source <workspace-parent-path>/ros2_msgs_ws/install/setup.bash
cd <workspace-parent-path>/bridge_ws
colcon build --packages-select ros1_bridge --cmake-force-configure

source /install/setup.bash
ros2 run ros1_bridge dynamic_bridge --bridge-all-topics
