#ifndef _IMU_THOMASMAG_H
#define _IMU_THOMASMAG_H

#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Geometry>

class IMU_thomas{
// this class is using the mag elimination method and multi-kernel kalman fliter
// The coordinate :NED
public:
    int NUM;// device name
    Eigen::Vector3d Acc;
    Eigen::Vector3d Mag;
    Eigen::Vector3d Gyro;
    Eigen::Vector4d xPriori;
    double stdacc;
    double stdmag;
    double dt;
    IMU_thomas(int n,int frequency=400)
    {
        NUM=i;;// the device num
        dt=1/frequency;
        xPriori=Eigen::Vector4d::Zero(4,1);
        
    }
    
};


#endif