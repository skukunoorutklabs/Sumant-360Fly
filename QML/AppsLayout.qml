import QtQuick 2.7

Rectangle
{
    id: appsRect
    color: "transparent"

    Image
    {
        id: backgroundImage
        source: "Images/icon_background.svg"
        width: parent.width
        fillMode: Image.PreserveAspectFit
    }
}
