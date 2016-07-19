import QtQuick 2.7

Rectangle
{
    id: statusBarRect
    color: "transparent"

    ImageColorOverlay
    {
        id: iconlogo
        imageSource: "Images/icon_logo.svg"
        anchors { verticalCenter: parent.verticalCenter; right: logoText.left;
                  rightMargin: 10 }
        imageWidth: 89
        imageHeight: 41
        imageColor: "#78BE20"
    }
    Text
    {
        id: logoText
        text: "Director"
        color: "#888866"

        font.pixelSize: 24
        anchors { verticalCenter: parent.verticalCenter; right: statusBarRect.right;
                  rightMargin: 10 }
    }

    TabSelector
    {
        id: cameraTab
        anchors { left: parent.left; top: parent.top }
        tabIcon: "Images/icon_camera.svg"
        tabCaption: "CAMERA"

        MouseArea
        {
            anchors.fill: parent
            onClicked: cameraTabClicked()
        }
    }
    TabSelector
    {
        id: imageTab
        anchors { left: cameraTab.right; leftMargin: 5; top: parent.top }
        tabIcon: "Images/icon_images.svg"
        tabCaption: "IMAGES"

        MouseArea
        {
            anchors.fill: parent
            onClicked: imageTabClicked()
        }
    }
    TabSelector
    {
        id: videoTab
        anchors { left: imageTab.right; leftMargin: 5; top: parent.top }
        tabIcon: "Images/icon_video.svg"
        tabCaption: "VIDEOS"
    }
    TabSelector
    {
        id: mergeTab
        anchors { left: videoTab.right; leftMargin: 5; top: parent.top }
        tabIcon: "Images/icon_merge.svg"
        tabCaption: "MERGE"
    }
    TabSelector
    {
        id: settingsTab
        anchors { left: mergeTab.right; leftMargin: 5; top: parent.top }
        tabIcon: "Images/icon_settings.svg"
        tabCaption: "SETTINGS"
    }
}
