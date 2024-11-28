#ifndef _IMU_THOMASMAG_H
#define _IMU_THOMASMAG_H

#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Geometry>
#include "ros/ros.h"
#include "common/data.h"
#include <iostream>

using namespace std;
double _g=9.81;


class IMU_thomas{
// this class is using the mag elimination method and multi-kernel kalman fliter
// The coordinate :NED
public:
    int NUM;// device name
    bool InitTrue;
    Eigen::Vector3d Acc;
    Eigen::Vector3d Mag;
    Eigen::Vector3d Acc_init;
    Eigen::Vector3d Mag_init;
    Eigen::Vector3d Gyro;
    Eigen::Vector3d vec_h;
    Eigen::Vector3d vec_g;
    Eigen::Vector4d xPriori;
    Eigen::Vector4d xPost;
    Eigen::Vector3d g_global;
    Eigen::Vector3d h_global;
    Eigen::Matrix3d CSI;
    Eigen::Matrix3d Q;
    Eigen::Matrix3d R_;
    Eigen::Matrix3d R_acc;
    Eigen::Matrix3d R_mag;
    Eigen::Matrix3d br_acc;
    Eigen::Matrix3d br_mag;
    Eigen::Quaterniond Q_;  
    double stdgyro;
    double stdacc;
    double stdmag;
    double dt;
    IMU_thomas(int n=-1,int frequency=400)
    {
        NUM=n;// the device num
        dt=1/frequency;
        xPriori=Eigen::Vector4d::Zero(4,1);
        InitTrue=false;
        Acc_init<<0,0,0;
        Mag_init<<0,0,0;
    }
    void IMU_init()
    {

    }
};



#endif