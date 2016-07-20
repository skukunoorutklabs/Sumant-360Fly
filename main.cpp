#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include "src/DesktopApplication/DesktopApplication.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/QML/desktopapplication.qml")));

    QObject *rootObject = engine.rootObjects().first();

    DesktopApplication desktopApp(rootObject);

    return app.exec();
}
