#!/bin/bash

cd $HOME
xterm -hold -e "roscore" &
xterm -hold -e "sleep 3; cd Documents/AutonomousFlight/mv_new_ws; source devel/setup.sh; roslaunch bluefox2 single_nodelet.launch" &
xterm -hold -e "sleep 3; cd Documents/AutonomousFlight/apriltags_ws; source devel/setup.sh; roslaunch apriltags apriltags.launch" &
xterm -hold -e "sleep 6; cd Documents/AutonomousFlight/apriltags_ws; source devel/setup.sh; rostopic echo apriltags/detections" &
xterm -hold -e "sleep 9; cd Documents/AutonomousFlight/px4_new_ws; source devel/setup.sh; rosrun px4_nav hover" 
#xterm -hold -e "sleep 6; cd Documents/AutonomousFlight/terarangertower_ws; source devel/setup.sh; rosrun teraranger_tower teraranger_tower_node"
#xterm -hold -e "sleep 9; cd Documents/AutonomousFlight/terarangertower_ws; source devel/setup.sh; rostopic echo "
