# enter on project directory
cd ~/vrx_ws/src

# source ini scripts
source /opt/ros/noetic/setup.bash
source ~/vrx_ws/devel/setup.bash

# run gazebo
export DISPLAY=:1
roslaunch vrx_gazebo vrx.launch