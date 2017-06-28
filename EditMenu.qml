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
            label: "Cut"
        }

        MyButton {
            id: saveButton
            buttonColor: "grey"
            label: "Paste"
        }

        MyButton {
            id: exitButton
            buttonColor: "darkgrey"
            label: "Select All"
        }
    }

}
