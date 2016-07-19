import QtQuick 2.7
import QtGraphicalEffects 1.0

Item
{
    id: imageItem

    property alias imageSource: mainImage.source
    property alias imageWidth: imageItem.width
    property alias imageHeight: imageItem.height
    property alias imageColor: coloroverLay.color

    Image
    {
        id: mainImage
        width: imageWidth
        height: imageHeight
        smooth: true
    }
    ColorOverlay
    {
        id: coloroverLay
        anchors.fill: mainImage
        source: mainImage
    }
}




