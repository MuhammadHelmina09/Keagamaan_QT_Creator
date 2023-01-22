#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSqlError>
#include <QSqlTableModel>


class backend:public QObject
{
    Q_OBJECT
public:
    backend();
    Q_INVOKABLE void konekdb();
    Q_INVOKABLE void simpanpemeriksaan(QString tgl_daftar, QString tgl_nikah, QString nm_suami, QString nm_istri, QString jam_nikah,
                                       QString mas_kawin, QString tmp_nikah, QString nm_saksi, QString nm_penghulu);
    Q_INVOKABLE void simpansuami(QString nm_suami, QString tmp_lahir, QString tgl_lahir, QString warga_negara, QString agama,
                                 QString pekerjaan, QString alamat, QString pendidikan);
    Q_INVOKABLE void simpanistri(QString nm_istri, QString tmp_lahir, QString tgl_lahir, QString warga_negara, QString agama,
                                 QString pekerjaan, QString alamat, QString pendidikan);


    Q_INVOKABLE void editpemeriksaan(QString idpmrn,
                                     QString tgl_daftar,
                                     QString tgl_nikah,
                                     QString nm_suami,
                                     QString nm_istri,
                                     QString jam_nikah,
                                     QString mas_kawin,
                                     QString tmp_nikah,
                                     QString nm_saksi,
                                     QString nm_penghulu);

    Q_INVOKABLE void hapuspemeriksaan(QString idpmrn);

    Q_INVOKABLE void editsuami(QString idsuami,
                                     QString nm_suami,
                                     QString tmp_lahir,
                                     QString tgl_lahir,
                                     QString warga_negara,
                                     QString agama,
                                     QString pekerjaan,
                                     QString alamat,
                                     QString pendidikan);

    Q_INVOKABLE void hapussuami(QString idsuami);

    Q_INVOKABLE void editistri(QString idistri,
                                     QString nm_istri,
                                     QString tmp_lahir,
                                     QString tgl_lahir,
                                     QString warga_negara,
                                     QString agama,
                                     QString pekerjaan,
                                     QString alamat,
                                     QString pendidikan);

    Q_INVOKABLE void hapusistri(QString idistri);

private:
    QSqlDatabase koneksi;
    QSqlQuery * Query;
};

#endif // BACKEND_H
