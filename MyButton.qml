import QtQuick 2.3

Rectangle {
    id: simpleButton
    height: 50
    width: 100
    radius: 10

    property color buttonColor:     "lightblue"
    property color onHoverColor:    "gold"
    property color borderColor:     "white"
    property string label:          "button label"

    signal buttonClick ()


    Text {
        id: buttonLabel
        text: qsTr(label)
        anchors.centerIn: parent
    }



    onButtonClick: {
        console.log(buttonLabel.text + " clicked")
    }

    MouseArea {
        id: buttonMA
        anchors.fill: parent

        hoverEnabled: true

        onClicked: simpleButton.buttonClick()
        onEntered: parent.border.color = simpleButton.onHoverColor;
        onExited: parent.border.color = simpleButton.borderColor;

    }

    color: buttonMA.pressed ? Qt.darker(buttonColor, 1.5) : buttonColor
    Behavior on color { ColorAnimation{ duration: 100} }

    scale: buttonMA.pressed ? 1.1 : 1.00
    Behavior on scale { NumberAnimation{ duration: 55} }
}


