TEMPLATE = app

QT += qml quick widgets

CONFIG += c++11

SOURCES += main.cpp \
    src/DesktopApplication/DesktopApplication.cpp \
    src/FFmpeg/FFmpeg.cpp

RESOURCES += qml.qrc

RC_ICONS += 360flyappico.ico

VERSION = 1.1.2

HEADERS += \
    src/DesktopApplication/DesktopApplication.h \
    src/FFmpeg/FFmpeg.h
