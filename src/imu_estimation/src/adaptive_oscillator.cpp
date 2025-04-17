#include "common/gesture.h"
#include "ros/ros.h"
#include "adaptive_osc/AdaptiveOsc.h"
#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Geometry>
#include <iostream>
using namespace std;
const int N=2;
AdaptiveOscillator AO[N];
void doGes(const common::gesture::ConstPtr& p_ges);
int main(int argc, char const *argv)
{
    // 初始化 ROS 节点
    ros::init(argc, argv, "IMU_subGes_pubPhase");
    for(int i=0;i<N;i++)
    {
        AO[i].NUM=i;
    }
    ros::NodeHandle nh;
    ros::Subscriber sub_Ges = nh.subscribe<common::gesture>("Gesture_pub",100,doGes);

    return 0;
}
void doGes(const common::gesture::ConstPtr& p_ges)
{

}