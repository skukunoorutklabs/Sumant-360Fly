#include "../Includes/DesktopApplication.h"
#include <QFileDialog>

#include <QDebug>

DesktopApplication::DesktopApplication()
{
    qDebug() << "desktopapp constructor";
}

void DesktopApplication::Initialize(QObject *rootObject)
{
    bool success = false;

    success = QObject::connect(rootObject, SIGNAL(cameraTabClicked()), this, SLOT(cameraTabClickedSlot()));
    success = QObject::connect(rootObject, SIGNAL(imageTabClicked()), this, SLOT(imageTabClickedSlot()));

    if(!success)
    {
        qDebug() << "Signal connection failed";
    }
}

void DesktopApplication::cameraTabClickedSlot()
{
    QString explorerPath = "C:/Windows/explorer.exe";

    QFileDialog fileDialog;
    fileDialog.setDirectory(explorerPath);
    fileDialog.setFileMode(QFileDialog::Directory);
    fileDialog.setOption(QFileDialog::ShowDirsOnly, true);

    fileDialog.exec();

    QUrl userSelectedPath = fileDialog.directoryUrl();
    qDebug() << "User selected  " << userSelectedPath;
    ffmpeg.concatVideo();
}

void DesktopApplication::imageTabClickedSlot()
{
    qDebug() << "Images button clicked";

}
