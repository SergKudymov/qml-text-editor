import QtQuick 2.3
import QtQuick.Controls 1.4

ApplicationWindow {
    id: root
    visible: true
    width: 640
    height: 480
    property int partition: height/3

    Rectangle {
        id: screen
        width: parent.width
        height: parent.height

        Column {
            width: parent.width
            height: parent.height

            //--------------------------------------------------------------------------------
            // MENU

            MyMenuBar {
                id: menuBar
                height: 100
                width: parent.width
                z: 1
            }

            //--------------------------------------------------------------------------------
            // HIDE MENU

            Rectangle {
                id:drawer
                height:15
                width: parent.width
                color: "blue"

                Image {
                    id: arrowIcon
                    width: 30
                    height: 20
                    rotation: 180

                    source: "images/arrow2.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                MouseArea {
                    id: drawerMouseArea
                    anchors.fill:parent
                    onClicked: {
                        if (screen.state == "") {
                            screen.state = "DRAWER_CLOSED"
                        }
                        else if (screen.state == "DRAWER_CLOSED") {
                            screen.state = "DRAWER_OPEN"
                        }
                        else if (screen.state == "DRAWER_OPEN") {
                            screen.state = "DRAWER_CLOSED"
                        }
                    }
                }
            }

            //--------------------------------------------------------------------------------
            // EDIT TEXT AREA

            MyTextArea {
                id: textArea
                y: partition
                height: partition*2
                width: parent.width
            }
            //--------------------------------------------------------------------------------
        }

        states: [
            State {
                name: "DRAWER_OPEN"
                PropertyChanges { target: menuBar; visible: true}
                PropertyChanges { target: arrowIcon; rotation: 180}
            },
            State {
                name: "DRAWER_CLOSED"
                PropertyChanges { target: menuBar; visible: false; }
                PropertyChanges { target: arrowIcon; rotation: 0 }
            }
        ]


    }
}


