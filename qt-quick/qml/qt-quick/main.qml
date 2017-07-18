import QtQuick 2.0
import QtQuick.Controls 1.1
import backend 1.0

ApplicationWindow
{
    visible: true
    width: 360
    height: 360
    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 1
        anchors.topMargin: 0
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }

        ProgressBar {
            id: progressBar1
            x: 68
            y: 260
        }
    }

    BackEnd {
        id: backend
    }

    TextField {
        text: backend.userName
        placeholderText: qsTr("User name")
        anchors.centerIn: parent

        onTextChanged: backend.userName = text
    }
}
