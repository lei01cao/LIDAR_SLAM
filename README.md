# LIDAR_SLAM
![SYSTEM ARCH](https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/Lidar_Slam_via_Gmapping.png)

实物展示：

1.Stm32F103C8T6核心板和底板
    !<img src="https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/stm32f103.jpg" title="stm32f103" height="350" width="450">

2.A4950双路电机驱动模块   
    ![motor_driver](https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/motor_driver.jpg)

3.树莓派3B+
    ![RaspberryPi-3B+](https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/RaspberryPi-3B%2B.jpg)

4.两轮步进电机组(减速比30 编码器精度780)
    ![step_motor](https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/step_motor.jpg)

5.思岚A1激光雷达  
    ![rplidar-A1](https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/rplidar-A1.jpg)

6.小车整体
    ![robot_side](https://github.com/lei01cao/LIDAR_SLAM/blob/master/img/robot_side.jpg)

运行步骤：

一.Gmapping构建地图

Step1.PC端（master)：roscore

Step2.树莓派端：roslaunch mrobot_bringup mrobot_with_laser.launch(打开激光雷达和stm32通信串口)

Step3.PC端（master):roslaunch mrobot_navigation gmapping_demo.launch

Step4.PC端（master)：roslauch mrobot_teleop mrobot_teleop.launch

    启动键盘控制节点，让机器人在室内环境（例如家里房间）移动探索，完成后保存地图。

    rosrun map_server mapsaver -f caolei_room_map 


二.Move_base导航路径规划




参考资料：

1.ROS WIKI


2.ROS机器人开发实践  --胡春旭



