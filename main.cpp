#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <backend.h>
#include <mysqlmodel.h>


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQmlContext*mycontext=engine.rootContext();
    backend* myobjeck = new backend;
    myobjeck->konekdb();
    mycontext->setContextProperty("crud",myobjeck);
    mysqlmodel* mydatapemeriksaan = new mysqlmodel;
    mydatapemeriksaan->setQuery("select * from tbl_pemeriksaan");
    mycontext->setContextProperty("MysqlModelPemeriksaan", mydatapemeriksaan);

    mycontext->setContextProperty("crud",myobjeck);
    mysqlmodel* mydatasuami = new mysqlmodel;
    mydatasuami->setQuery("select * from tbl_suami");
    mycontext->setContextProperty("MysqlModelSuami", mydatasuami);

    mycontext->setContextProperty("crud",myobjeck);
    mysqlmodel* mydataistri = new mysqlmodel;
    mydataistri->setQuery("select * from tbl_istri");
    mycontext->setContextProperty("MysqlModelIstri", mydataistri);





    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
