import QtQuick 2.0

Flickable {
    id: flick
    width: 300; height: 200;

    function ensureVisible(r)
    {
        if (contentX >= r.x)
            contentX = r.x;
        else if (contentX+width <= r.x+r.width)
            contentX = r.x+r.width-width;
        if (contentY >= r.y)
            contentY = r.y;
        else if (contentY+height <= r.y+r.height)
            contentY = r.y+r.height-height;
    }

    TextEdit {
        id: textEdit
        anchors.fill: parent
        width: parent.width
        height: parent.height
        color: "midnightblue"
        focus: true


        wrapMode: TextEdit.Wrap //Перенос текста на следующую строку, если возмоно, то на границе слова.

        onCursorRectangleChanged: flick.ensureVisible(cursorRectangle)
    }
}
