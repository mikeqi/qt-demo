import QtQuick 2.0
import QtQuick.Controls 1.1
import backend 1.0

ApplicationWindow
{
    visible: true
    width: 480
    height: 480

    MouseArea {
        anchors.rightMargin: -92
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
        Text {
            x: 80
            y: 30
            text: qsTr("Throttle")
        }
        ProgressBar {
            value: backend.throttle
            id: progressBar1
            x: 25
            y: 99
            width: 206
            maximumValue: 100
            visible: true
            clip: false

        }

        Slider {
            value: backend.throttle
            updateValueWhileDragging: true
            id: sliderHorizontal1
            x: 25
            y: 57
            maximumValue: 100
            onValueChanged: backend.throttle = value

        }


        Text {
            id: text1
            x: 257
            y: 103
            text: backend.throttle
            font.pixelSize: 14


        }

        TextField {
            text: backend.throttle
            id: textField1
            x: 257
            y: 59
            font.pointSize: 12
            placeholderText: backend.throttle
            onTextChanged: backend.throttle = text
        }

        Text {
            x: 97
            y: 139
            text: qsTr("Brake")
        }


        ProgressBar {
            id: progressBar2
            x: 28
            y: 207
            width: 206
            maximumValue: 100
            value: backend.brake
            clip: false
            visible: true
        }

        Slider {
            id: sliderHorizontal2
            x: 25
            y: 156
            maximumValue: 100
            value: backend.brake
            updateValueWhileDragging: true
            onValueChanged: backend.brake = value
        }

        Text {
            id: text2
            x: 257
            y: 211
            text: backend.brake
            font.pixelSize: 14
        }

        TextField {
            id: textField2
            x: 257
            y: 158
            text: backend.brake
            placeholderText: backend.brake
            font.pointSize: 12
            onTextChanged: backend.brake = text
        }

        Text {
            x: 194
            y: 241
            text: qsTr("Steering Angle")
        }

        ProgressBar {
            id: progressBar3
            x: 248
            y: 299
            width: 206
            maximumValue: 450
            minimumValue: -450
            value: backend.steeringAngle
            clip: false
            visible: true
        }



        Text {
            id: text3
            x: 189
            y: 272
            text: backend.steeringAngle
            font.pixelSize: 14
        }


//        Text {
//            x: 189
//            y: 385
//            text: qsTr("Steering Angle Limit")
//        }




        BackEnd {
            id: backend
        }

//        Slider {
//            id: sliderHorizontal3
//            x: 75
//            y: 415
//            maximumValue: 450
//            minimumValue: 0.0
//            value: backend.steeringLimit
//            updateValueWhileDragging: true
//            onValueChanged: backend.steeringLimit = value
//        }

//        TextField {
//            id: textField3
//            x: 334
//            y: 416
//            text: backend.steeringLimit
//            placeholderText: backend.steeringLimit
//            font.pointSize: 12
//            onTextChanged: backend.steeringLimit = text
//        }

        ProgressBar {
            id: progressBar4
            x: 36
            y: 299
            width: 206
            rotation: 180
            orientation: 1
            value: -backend.steeringAngle
            clip: false
            visible: true
            maximumValue: 450
            minimumValue: -450
        }

        Slider {
            id: sliderHorizontal4
            x: 257
            y: 339
            value: backend.steeringAngle
            updateValueWhileDragging: true
            maximumValue: 450
            minimumValue: 0
            onValueChanged: backend.steeringAngle = value
        }

        Slider {
            id: sliderHorizontal5
            x: 45
            y: 339
            rotation: 180
            value: backend.steeringAngle
            updateValueWhileDragging: true
            maximumValue: 450
            minimumValue: 0
            onValueChanged: backend.steeringAngle = value
        }
    }
}
