#ifndef DESKTOPAPPLICATION_H
#define DESKTOPAPPLICATION_H

#include <QObject>
#include "../FFmpeg/FFmpeg.h"

class DesktopApplication : public QObject
{
    Q_OBJECT
public:
    DesktopApplication();

public:
    void Initialize(QObject *root);

private:
    FFmpeg ffmpeg;

    void listAllFiles(QString path);

private slots:
    void cameraTabClickedSlot();
    void imageTabClickedSlot();
};

#endif // DESKTOPAPPLICATION_H
