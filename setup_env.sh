#!/bin/bash

echo 'Set /opt/ros/indigo/setup.bash'
source /opt/ros/indigo/setup.bash

echo 'Set devel/setup.bash'
source devel/setup.bash

# Check dependesies for test01
rospack depends1 test01
rospack depends1 beginner_tutorials
rospack depends1 using_markers

# make eclipse-project
#catkin_make --force-cmake -G"Eclipse CDT4 - Unix Makefiles"
#awk -f $(rospack find mk)/eclipse.awk build/.project > build/.project_with_env && mv build/.project_with_env build/.project
#cd build
#cmake ../src -DCMAKE_BUILD_TYPE=Debug
