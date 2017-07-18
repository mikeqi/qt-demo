#include "backend.h"

BackEnd::BackEnd(QObject *parent) :
    QObject(parent)
{
m_throttle = 0.0;
m_brake = 0.0;
m_steeringAngle = 0.0;
//m_steeringLimit = 0.0;
}

void BackEnd::setThrottle(double val)
{
    if (m_throttle == val)
        return;

    m_throttle = val;
    emit throttleChanged();
}

double BackEnd::throttle()
{
    return m_throttle;
}

void BackEnd::setBrake(double val)
{
    if(m_brake == val)
        return;

    m_brake = val;
    emit brakeChanged();
}
double BackEnd::brake()
{
    return m_brake;
}

void BackEnd::setSteeringAngle(double val)
{
    if(m_steeringAngle == val)
        return;

    m_steeringAngle = val;
    emit steeringAngleChanged();
}

double BackEnd::steeringAngle()
{
    return m_steeringAngle;
}

//void BackEnd::setSteeringLimit(double val)
//{
//    if(m_steeringLimit == val)
//        return;

//    m_steeringLimit = val;
//    emit steeringLimitChanged();
//}

//double BackEnd::steeringLimit()
//{
//    return m_steeringLimit;
//}
