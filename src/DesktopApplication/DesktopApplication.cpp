#include "DesktopApplication.h"
#include <QFileDialog>

#include <QDebug>

DesktopApplication::DesktopApplication(QObject *rootObject)
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
    QFileDialog fileDialog;
    fileDialog.setFileMode(QFileDialog::Directory);
    fileDialog.setOption(QFileDialog::ShowDirsOnly, true);

    fileDialog.exec();

    QDir userSelectedPath = fileDialog.directory();
    qDebug() << "User selected  " << userSelectedPath.path();
    listAllFiles(userSelectedPath.path());
    ffmpeg.concatVideo();
}

void DesktopApplication::imageTabClickedSlot()
{
    qDebug() << "Images button clicked";

}

void DesktopApplication::listAllFiles(QString path)
{
    QDir flydir(path);
    flydir.setNameFilters(QStringList() << "*.jpg" << "*.png" << "*.mp4");
    QStringList fileList = flydir.entryList();

    foreach (QString tmp, fileList) {
        qDebug() << tmp << "\n";

    }
}
