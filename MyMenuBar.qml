import QtQuick 2.0

Rectangle {

    id: menuBar
    width: parent.width
    height: 100
    color: "lightblue"

    Rectangle {
        id: labelLisr
        height: 20
        width: parent.width
        color: "darkblue"

        z: 1

        Row {
            height: parent.height
            spacing: 10
            MyButton {
                id: fileButton
                height: parent.height
                label: "File"
                radius: 1
                onButtonClick: menuListView.currentIndex = 0
            }
            MyButton {
                id: editButton
                height: parent.height
                label: "Edit"
                radius: 1
                onButtonClick: menuListView.currentIndex = 1
            }
        }
    }

    VisualItemModel {
        id: menuListModel
        FileMenu {
            width: menuListView.width
            height: menuListView.height
        }
        EditMenu {
            width: menuListView.width
            height: menuListView.height
        }
    }

    ListView {
        id: menuListView
        anchors.fill: parent
        anchors.bottom: parent.bottom
        width: parent.width
        height: parent.height

        model: menuListModel

        //no delegate, because controller in the Model

        snapMode: ListView.SnapOneItem
        orientation: ListView.Horizontal
        boundsBehavior: Flickable.StopAtBounds
        flickDeceleration: 5000
        highlightFollowsCurrentItem: true
        highlightMoveDuration: 240
        highlightRangeMode: ListView.StrictlyEnforceRange
    }

}
