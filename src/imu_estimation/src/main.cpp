#include "ros/ros.h"
#include "imu_estimation/IMU_thomasMag.h"
#include "common/data.h"
#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Geometry>
#include <iostream>
using namespace std;

const int N=2;
IMU_thomas IMU[N]=
{
    IMU_thomas(0,400),
    IMU_thomas(1,400)
};
void doGyro(const common::data::ConstPtr& p_gyro){
    int number=p_gyro->num;
    if(IMU[number].InitTrue){

    }else{
        IMU[number].IMU_init();
    }
}
void doAcc(const common::data::ConstPtr& p_acc){
    int number=p_acc->num;
    if(IMU[number].InitTrue){
        
    }else{
        IMU[number].Acc_init << p_acc->dataX,p_acc->dataY,p_acc->dataZ;
    }
}
void doMag(const common::data::ConstPtr& p_mag){
    int number=p_mag->num;
    if(IMU[number].InitTrue){
        
    }else{
        IMU[number].Acc_init << p_mag->dataX,p_mag->dataY,p_mag->dataZ;
    }
}
int main(int argc, char **argv) {

    for(int i=0;i<N;i++)
    {
        IMU[i].NUM=i;
    }
    // 初始化 ROS 节点
    ros::init(argc, argv, "IMU_subMes_pubPos");
    ros::NodeHandle nh;
    ros::Subscriber sub_gyro = nh.subscribe<common::data>("gyro_msg",100,doGyro);
    ros::Subscriber sub_acc = nh.subscribe<common::data>("acc_msg",100,doAcc);
    ros::Subscriber sub_mag = nh.subscribe<common::data>("mag_msg",100,doMag);
    // 循环，保持节点运行
    ros::spin();

    return 0;
}
