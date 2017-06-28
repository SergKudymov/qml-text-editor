import QtQuick 2.3

Rectangle {
    height: 100
    width: parent.width
    color: "lightblue"

    Row {
        anchors.centerIn: parent
        spacing: parent.width/6

        MyButton {
            id: loadButton
            buttonColor: "lightgrey"
            label: "Load"
        }

        MyButton {
            id: saveButton
            buttonColor: "grey"
            label: "Save"
        }

        MyButton {
            id: exitButton
            buttonColor: "darkgrey"
            label: "Exit"
            onButtonClick: Qt.quit()
        }
    }

}
