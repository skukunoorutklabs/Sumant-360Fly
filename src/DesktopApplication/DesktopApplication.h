#ifndef DESKTOPAPPLICATION_H
#define DESKTOPAPPLICATION_H

#include <QObject>
#include "../FFmpeg/FFmpeg.h"

class DesktopApplication : public QObject
{
    Q_OBJECT
public:
    explicit DesktopApplication(QObject *parent = 0);

private:
    FFmpeg ffmpeg;

    void listAllFiles(QString path);

private slots:
    void cameraTabClickedSlot();
    void imageTabClickedSlot();
};

#endif // DESKTOPAPPLICATION_H
