#include "mysqlmodel.h"

mysqlmodel::mysqlmodel()
{

}

QVariant mysqlmodel::data(const QModelIndex &item, int role) const
{
    QVariant value;
    if(role<Qt::UserRole){
        value=QSqlQueryModel::data(item,role);
    } else {
        int columnIndex=role-Qt::UserRole-1;
        QModelIndex ModelIndex=this->index(item.row(),columnIndex);
        value=QSqlQueryModel::data(ModelIndex,Qt::DisplayRole);
    }
    return value;
}

void mysqlmodel::setQuery(const QSqlQuery &query)
{
    QSqlQueryModel::setQuery(query);
    generateRoleNames();
}

void mysqlmodel::setQuery(const QString &query, const QSqlDatabase &db)
{
    QSqlQueryModel::setQuery(query,db);
    generateRoleNames();

}

QHash<int, QByteArray> mysqlmodel::roleNames()
{
   return {
        {
           Qt::DisplayRole,"display"
       }
    };
}

void mysqlmodel::panggilsql(QString perintah)
{
    setQuery(perintah);
}

void mysqlmodel::generateRoleNames()
{
    m_roleNames.clear();
    for (int i=0; i<record().count();i++){
        m_roleNames.insert(Qt::UserRole+i+1,record().fieldName(i).toUtf8());

    }
}


