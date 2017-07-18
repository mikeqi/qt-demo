#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>



class BackEnd : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double throttle READ throttle WRITE setThrottle NOTIFY throttleChanged)
    Q_PROPERTY(double brake READ brake WRITE setBrake NOTIFY brakeChanged)
    Q_PROPERTY(double steeringAngle READ steeringAngle WRITE setSteeringAngle NOTIFY steeringAngleChanged)
//    Q_PROPERTY(double steeringLimit READ steeringLimit WRITE setSteeringLimit NOTIFY steeringLimitChanged)
public:
    explicit BackEnd(QObject *parent = nullptr);

    double throttle();
    void setThrottle(double val);

    double brake();
    void setBrake(double val);

    double steeringAngle();
    void  setSteeringAngle(double val);

//    double steeringLimit();
//    void setSteeringLimit(double val);

signals:
    void throttleChanged();
    void brakeChanged();
    void steeringAngleChanged();
//    void steeringLimitChanged();

private:
    double m_throttle;
    double m_brake;
    double m_steeringAngle;
//    double m_steeringLimit;

};

#endif // BACKEND_H
