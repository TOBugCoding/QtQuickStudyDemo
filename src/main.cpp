#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:/QML/main.qml"));   // ¹Ø¼ü£ºqrc Â·¾¶
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}