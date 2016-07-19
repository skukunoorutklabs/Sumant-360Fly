#ifndef DESKTOPAPPLICATION_H
#define DESKTOPAPPLICATION_H

#include <QObject>
#include "../Includes/FFmpeg.h"

class DesktopApplication : public QObject
{
    Q_OBJECT
public:
    DesktopApplication();

public:
    void Initialize(QObject *root);

private:
    FFmpeg ffmpeg;

private slots:
    void cameraTabClickedSlot();
    void imageTabClickedSlot();
};

#endif // DESKTOPAPPLICATION_H
