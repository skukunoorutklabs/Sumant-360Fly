import QtQuick 2.7

Rectangle
{
    id: tabSelectorRect
    property alias tabIcon: tabImg.imageSource
    property alias tabColor: tabSelectorRect.color
    property alias tabCaption: tabText.text

    width: 83
    height: 77
    color: "#262626"

    ImageColorOverlay
    {
        id: tabImg
        anchors { horizontalCenter: parent.horizontalCenter;
                  top: parent.top; topMargin: 15 }
        imageWidth: 32
        imageHeight: 32
        imageColor: "#6C6C6C"
    }
    Text
    {
        id: tabText
        anchors { horizontalCenter: parent.horizontalCenter;
                  bottom: parent.bottom; bottomMargin: 10 }
        color: "#6C6C6C"
    }
    MouseArea
    {
        anchors.fill: parent
        hoverEnabled: true
        onEntered:
        {
            tabColor = "#78BE20"
            tabText.color = "#FFFFFF"
            tabImg.imageColor = "#FFFFFF"
        }
        onClicked:
        {
            tabColor = "#78BE20"
            tabText.color = "#FFFFFF"
            tabImg.imageColor = "#FFFFFF"
        }
        onExited:
        {
            tabColor = "#262626"
            tabText.color = "#6C6C6C"
            tabImg.imageColor = "#6C6C6C"
        }
    }
}
