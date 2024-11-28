#ifndef _IMU_THOMASMAG_H
#define _IMU_THOMASMAG_H

#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Geometry>
#include <eigen3/unsupported/Eigen/MatrixFunctions>
#include "common/data.h"
#include <cmath>
#include "ros/ros.h"
#include <iostream>

using namespace std;
double _g=9.81;
double stdAcc=0.0981;
double stdGyro=0.001*5;
double stdMag=0.02;
double sigma_acc=1000;
double sigma_mag=1000;

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

    Eigen::Vector4d qin;

    Eigen::Vector3d g_global;
    Eigen::Vector3d h_global;
    Eigen::Matrix<double, 4, 3> CSI;
    Eigen::Matrix4d Q;
    Eigen::Matrix3d SIGMA_g;
    Eigen::Matrix3d R_;
    Eigen::Matrix3d R_acc;
    Eigen::Matrix3d R_mag;
    Eigen::Matrix3d br_acc;
    Eigen::Matrix3d br_mag;
    Eigen::Matrix4d Ppost;
    Eigen::Matrix4d Ppriori;
    double dt;
    IMU_thomas(int n=-1,int frequency=400)
    {
        NUM=n;// the device num
        dt=1/frequency;
        xPriori=Eigen::Vector4d::Zero(4,1);
        InitTrue=false;
        Acc_init.setZero();
        Mag_init.setZero();
    }
    bool IMU_init()
    {
        if(Acc_init.isZero()|| Mag_init.isZero())
        {
            return false;
        }
        else{
            Eigen::Vector3d r_down=Acc_init;
            Eigen::Vector3d r_east=Acc_init.cross(Mag_init);
            Eigen::Vector3d r_north=r_east.cross(r_down);
            r_down=r_down/r_down.norm();
            r_east=r_east/r_east.norm();
            r_north=r_north/r_north.norm();
            R_<<r_north,r_east,r_down;
            Eigen::Quaterniond Q_(R_);  
            qin<<Q_.x(),Q_.y(),Q_.z(),Q_.w();
            xPost=qin;
            xPriori=xPost;
            Eigen::Vector3d L=R_.transpose()*Mag_init;
            h_global<<std::sqrt(L[0]*L[0]+L[1]*L[1]),0,L[2];
            SIGMA_g=stdGyro*stdGyro*Eigen::Matrix3d::Identity();
            dt=1/400;
            CSI<<qin[3],-qin[2],qin[1],
                qin[2],qin[3],-qin[0],
                -qin[1],qin[0],qin[3],
                -qin[0],-qin[1],-qin[2];
            Q=(dt/2)*(dt/2)*CSI*SIGMA_g*CSI.transpose();
            Ppost=Q;
            R_acc=stdAcc*stdAcc*Eigen::Matrix3d::Identity();
            R_mag=stdMag*stdMag*Eigen::Matrix3d::Identity();
            br_acc=stdAcc*Eigen::Matrix3d::Identity();
            br_mag=stdMag*Eigen::Matrix3d::Identity();
            h_global<<1,0,0;
            InitTrue=true;
            return true;
            }
    }
    void Gyro_update()
    {
        Eigen::Matrix4d omega;
        omega << 0,Gyro[2],-Gyro[1],Gyro[0],
                -Gyro[2],0,Gyro[0],Gyro[1],
                Gyro[1],-Gyro[0],0,Gyro[2],
                -Gyro[0],-Gyro[1],-Gyro[2],0;
        omega=0.5*omega;
        Eigen::Matrix4d F = (omega * dt).exp();
        xPriori=F*xPost;
        Ppriori=F*Ppost*F.transpose()+Q;
    }
};



#endif