# LIDAR_SLAM
![SYSTEM ARCH](https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/Lidar_Slam_via_Gmapping.png)

实物展示：

1. Stm32F103C8T6核心板和底板

    <img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/stm32f103.jpg" title="stm32f103" height="350" width="450">

2. A4950双路电机驱动模块  

    <img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/motor_driver.jpg" title="motor_driver" height="350" width="450">

3. 树莓派3B+

    <img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/RaspberryPi-3B%2B.jpg" title="RaspberryPi-3B%2B" height="350" width="450">

4. 两轮步进电机组(减速比30 编码器精度780)

    <img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/step_motor.jpg" title="step_motor" height="350" width="450">

5. 思岚A1激光雷达  

     <img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/rplidar-A1.jpg" title="rplidar-A1" height="350" width="450">

6. 小车整体

     <img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/robot_side.jpg" title="robot_side" height="350" width="450">


运行步骤：

一.Gmapping构建地图

<img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/gmapping.png" title="gmapping">
Step1.PC端（master)：roscore

Step2.树莓派端：roslaunch mrobot_bringup mrobot_with_laser.launch(打开激光雷达和stm32通信串口)

Step3.PC端（master):roslaunch mrobot_navigation gmapping_demo.launch

Step4.PC端（master)：roslauch mrobot_teleop mrobot_teleop.launch

    启动键盘控制节点，让机器人在室内环境（例如家里房间）移动探索，完成后保存地图。

    rosrun map_server map_saver -f caolei_room_map 
<img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/gmapping_start.png" title="gmapping_start" height="350" width="400"><img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/gmapping_finish.png" title="gmapping_finish" height="350" width="400">

二.Move_base导航路径规划
<img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/move_base.png" title="move_base">

Step1.树莓派端：roslaunch mrobot_bringup mrobot_with_laser.launch

Step2.PC端（master):roslaunch mrobot_navigation nav_demo.launch

    rviz界面中点击菜单栏“2D Nav Goal"按钮，在地图上任意选择一个目标点。

    使用teb_local_planner,导航效果： 
<img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/teb_local_planner.png" title="teb_local_planner"><img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/cost_map.png" title="cost_map">

<img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/nav_test3.png" title="nav_test3" height="350" width="400"><img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/nav_test4.png" title="nav_test4" height="350" width="400">

参考资料：

1.ROS WIKI

2.gmapping源码：https://github.com/OpenSLAM-org/openslam_gmapping

3.ros导航包源码：https://github.com/ros-planning/navigation

4.teb_local_planner源码包：https://github.com/rst-tu-dortmund/teb_local_planner





