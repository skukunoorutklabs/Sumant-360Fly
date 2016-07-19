TEMPLATE = app

QT += qml quick widgets

CONFIG += c++11

SOURCES += main.cpp \
           DesktopApplication/DesktopApplication.cpp \
           FFmpeg/FFmpeg.cpp

RESOURCES += qml.qrc

RC_ICONS += 360flyappico.ico

VERSION = 1.1.2

# Additional import path used to resolve QML modules in Qt Creator's code model
#QML_IMPORT_PATH =

# Default rules for deployment.
#include(deployment.pri)

HEADERS += Includes/DesktopApplication.h \
           Includes/FFmpeg.h
