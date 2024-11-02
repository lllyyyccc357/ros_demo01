#include "ros/ros.h"
#include "imu_estimation/IMU_thomasMag.h"
#include "common/data.h"

int main(int argc, char **argv) {
    // 初始化 ROS 节点
    ros::init(argc, argv, "IMU_subMes_pubPos");
    ros::NodeHandle nh;

    // 循环，保持节点运行
    ros::spin();

    return 0;
}
