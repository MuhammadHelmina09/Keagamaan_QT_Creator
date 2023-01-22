#ifndef MYSQLMODEL_H
#define MYSQLMODEL_H

#include <QObject>
#include <QSqlQueryModel>
#include <QSqlRecord>
#include <QSqlField>

class mysqlmodel:public QSqlQueryModel
{
    Q_OBJECT
public:
    mysqlmodel();
    QVariant data(const QModelIndex &item, int role) const override;
    void setQuery(const QSqlQuery &query);
    void setQuery(const QString &query, const QSqlDatabase &db = QSqlDatabase());
    QHash<int,QByteArray> roleNames();
    Q_INVOKABLE void panggilsql (QString perintah);
 private:
    void generateRoleNames();
    QHash<int,QByteArray> m_roleNames;
};

#endif // MYSQLMODEL_H
