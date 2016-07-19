import QtQuick 2.7
import QtQuick.Controls 1.5
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

ApplicationWindow
{
    id: mainWindow
    visible: true
    width: 1180
    height: 780
    minimumWidth: 1080
    minimumHeight: 680
    color: "#000000"
    title: "360fly Director"

    signal cameraTabClicked();
    signal imageTabClicked();

    AppStatusBar
    {
        id: statusBar
        width: mainWindow.width
        height: 77
        anchors { top: parent.top; left: parent.left }
    }

    Rectangle
    {
        id: statusBarSeparator
        width: mainWindow.width
        height: 1
        color: "#AAAAAA"
        anchors { top: statusBar.bottom; left: statusBar.left }
    }

    /*Image
    {
        id: dubSource
        smooth: true
        source: "Images/icon_camera.svg"
        anchors.centerIn: parent

        MouseArea
        {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: cLay.color = "white"
            onExited: cLay.color = "#6c6c6c"
        }
    }
    ColorOverlay
    {
        id: cLay
        anchors.fill: dubSource
        source: dubSource
        color: "#6c6c6c"
    }*/

    menuBar: MenuBar
    {
        id: menuBarRect
        Menu
        {
            title: "360fly Director"
            MenuItem
            {
                text: "About 360fly Director"
            }
            MenuSeparator
            {
                visible: true
            }
            MenuItem
            {
                text: "Quit"
                shortcut: "Ctrl+Q"
                onTriggered: Qt.quit()
            }
            style: MenuStyle
            {
                itemDelegate
                {
                    background: Rectangle
                    {
                        color: styleData.selected ? "#4281F4" : "white"
                    }
                    label: Text
                    {
                        color: styleData.selected ? "white" : "black"
                        text: styleData.text
                    }
                }
            }
        }
        Menu
        {
            title: "Edit"
            MenuItem
            {
                text: "Undo"
                shortcut: "Ctrl+Z"
            }
            MenuItem
            {
                text: "Redo"
                shortcut: "Ctrl+Shift+Z"
            }
            MenuSeparator
            {
                visible: true
            }
            MenuItem
            {
                text: "Cut"
                shortcut: "Ctrl+X"
            }
            MenuItem
            {
                text: "Copy"
                shortcut: "Ctrl+C"
            }
            MenuItem
            {
                text: "Paste"
                shortcut: "Ctrl+V"
            }
            MenuSeparator
            {
                visible: true
            }
            MenuItem
            {
                text: "Select All"
                shortcut: "Ctrl+A"
            }
            style: MenuStyle
            {
                itemDelegate
                {
                    background: Rectangle
                    {
                        color: styleData.selected ? "#4281F4" : "white"
                    }
                    label: Text
                    {
                        color: styleData.selected ? "white" : "black"
                        text: styleData.text
                    }
                }
            }
        }
        Menu
        {
            title: "Help"
            MenuItem
            {
                text: "Support"
                onTriggered: Qt.openUrlExternally("https://support.360fly.com/")

            }
            MenuItem
            {
                text: "Feedback"
                onTriggered: Qt.openUrlExternally("https://360fly.com/contact")
            }
            MenuItem
            {
                text: "Send Logs to Support"
            }
            style: MenuStyle
            {
                itemDelegate
                {
                    background: Rectangle
                    {
                        color: styleData.selected ? "#4281F4" : "white"
                    }
                    label: Text
                    {
                        color: styleData.selected ? "white" : "black"
                        text: styleData.text
                    }
                }
            }
        }
        style: MenuBarStyle
        {
            background: Rectangle
            {
                color: "#F0F0F0"
            }
        }
    }
}
