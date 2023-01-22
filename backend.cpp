#include "backend.h"
#include <QDebug>


backend::backend()
{

}

void backend::konekdb()
{
  koneksi = QSqlDatabase::addDatabase("QODBC");
  koneksi.setDatabaseName("Driver={MySQL ODBC 8.0 ANSI Driver};Database=muhammadhelmina_2010010612");
  koneksi.setHostName("localhost");
  koneksi.setUserName("root");
  koneksi.setPassword("");
  koneksi.setPort(3306);

  if(koneksi.open()){
      qDebug()<<"database berhasil dikoneksikan";
  }else{
      qDebug()<<koneksi.lastError().text();
  }
}

void backend::simpanpemeriksaan(QString tgl_daftar, QString tgl_nikah, QString nm_suami, QString nm_istri, QString jam_nikah,
                                QString mas_kawin, QString tmp_nikah, QString nm_saksi, QString nm_penghulu)
{
    QSqlQuery simpan;
    QString sqlsimpan="insert into tbl_pemeriksaan values (?,?,?,?,?,?,?,?,?,?)";
    simpan.prepare(sqlsimpan);
    simpan.bindValue(0,0);
    simpan.bindValue(1, tgl_daftar);
    simpan.bindValue(2, tgl_nikah);
    simpan.bindValue(3, nm_suami);
    simpan.bindValue(4, nm_istri);
    simpan.bindValue(5, jam_nikah);
    simpan.bindValue(6, mas_kawin);
    simpan.bindValue(7, tmp_nikah);
    simpan.bindValue(8, nm_saksi);
    simpan.bindValue(9, nm_penghulu);
    if(simpan.exec()){
        qDebug()<<"data berhasil disimpan";
    } else {
        qDebug()<<simpan.lastError().text();
    }
}

void backend::simpansuami(QString nm_suami, QString tmp_lahir, QString tgl_lahir, QString warga_negara, QString agama,
                                QString pekerjaan, QString alamat, QString pendidikan)
{
    QSqlQuery simpansuami;
    QString sqlsimpansuami="insert into tbl_suami values (?,?,?,?,?,?,?,?,?)";
    simpansuami.prepare(sqlsimpansuami);
    simpansuami.bindValue(0,0);
    simpansuami.bindValue(1, nm_suami);
    simpansuami.bindValue(2, tmp_lahir);
    simpansuami.bindValue(3, tgl_lahir);
    simpansuami.bindValue(4, warga_negara);
    simpansuami.bindValue(5, agama);
    simpansuami.bindValue(6, pekerjaan);
    simpansuami.bindValue(7, alamat);
    simpansuami.bindValue(8, pendidikan);
    simpansuami.exec();
}

void backend::simpanistri(QString nm_istri, QString tmp_lahir, QString tgl_lahir, QString warga_negara, QString agama,
                                QString pekerjaan, QString alamat, QString pendidikan)
{
    QSqlQuery simpanistri;
    QString sqlsimpanistri="insert into tbl_istri values (?,?,?,?,?,?,?,?,?)";
    simpanistri.prepare(sqlsimpanistri);
    simpanistri.bindValue(0,0);
    simpanistri.bindValue(1, nm_istri);
    simpanistri.bindValue(2, tmp_lahir);
    simpanistri.bindValue(3, tgl_lahir);
    simpanistri.bindValue(4, warga_negara);
    simpanistri.bindValue(5, agama);
    simpanistri.bindValue(6, pekerjaan);
    simpanistri.bindValue(7, alamat);
    simpanistri.bindValue(8, pendidikan);
    simpanistri.exec();
}

void backend::editpemeriksaan(QString idpmrn, QString tgl_daftar, QString tgl_nikah, QString nm_suami,
                              QString nm_istri, QString jam_nikah, QString mas_kawin, QString tmp_nikah,
                              QString nm_saksi, QString nm_penghulu)
{
    QSqlQuery editpemeriksaan;
    QString sqleditpemeriksaan= "update tbl_pemeriksaan set tgl_daftar=?,"
                                "tgl_nikah=?,"
                                " nm_suami=?,"
                                "nm_istri=?,"
                                "jam_nikah=?,"
                                "maskawin=?,"
                                "tmp_nikah=?,"
                                " nm_saksi=?,"
                                "nm_penghulu=? where idpmrn=?";
    editpemeriksaan.prepare(sqleditpemeriksaan);
    editpemeriksaan.bindValue(0, tgl_daftar);
    editpemeriksaan.bindValue(1, tgl_nikah);
    editpemeriksaan.bindValue(2, nm_suami);
    editpemeriksaan.bindValue(3, nm_istri);
    editpemeriksaan.bindValue(4, jam_nikah);
    editpemeriksaan.bindValue(5, mas_kawin);
    editpemeriksaan.bindValue(6, tmp_nikah);
    editpemeriksaan.bindValue(7, nm_saksi);
    editpemeriksaan.bindValue(8, nm_penghulu);
    editpemeriksaan.bindValue(9, idpmrn);
    editpemeriksaan.exec();


}

void backend::hapuspemeriksaan(QString idpmrn)
{
    QSqlQuery hapuspemeriksaan;
    QString sqlhapuspemeriksaan = "delete from tbl_pemeriksaan where idpmrn=?";
    hapuspemeriksaan.prepare(sqlhapuspemeriksaan);
    hapuspemeriksaan.bindValue(0, idpmrn);
    if(hapuspemeriksaan.exec()){
        qDebug()<<"Data Berhasil Disimpan";
    } else {
        qDebug()<<hapuspemeriksaan.lastError().text();
    }
}

void backend::editsuami(QString idsuami, QString nm_suami, QString tmp_lahir, QString tgl_lahir, QString warga_negara, QString agama, QString pekerjaan, QString alamat, QString pendidikan)
{
QSqlQuery editsuami;
QString sqleditsuami = "update tbl_suami set nm_suami=?,"
                       "tmp_lahir=?,"
                        "tgl_lahir=?,"
                       "warga_negara=?,"
                        "agama=?,"
                        "pekerjaan=?,"
                        "alamat=?,"
                        "pendidikan=? where idsuami=?";
editsuami.prepare(sqleditsuami);
editsuami.bindValue(0, nm_suami);
editsuami.bindValue(1, tmp_lahir);
editsuami.bindValue(2, tgl_lahir);
editsuami.bindValue(3, warga_negara);
editsuami.bindValue(4, agama);
editsuami.bindValue(5, pekerjaan);
editsuami.bindValue(6, alamat);
editsuami.bindValue(7, pendidikan );
editsuami.bindValue(8, idsuami);
editsuami.exec();
}

void backend::hapussuami(QString idsuami)
{
    QSqlQuery hapussuami;
    QString sqlhapussuami = "delete from tbl_suami where idsuami=?";
    hapussuami.prepare(sqlhapussuami);
    hapussuami.bindValue(0, idsuami);
    if(hapussuami.exec()){
        qDebug()<<"Data Berhasil Disimpan";
    } else {
        qDebug()<<hapussuami.lastError().text();
    }
}

void backend::editistri(QString idistri, QString nm_istri, QString tmp_lahir, QString tgl_lahir, QString warga_negara, QString agama, QString pekerjaan, QString alamat, QString pendidikan)
{
    QSqlQuery editistri;
    QString sqleditistri = "update tbl_istri set nm_istri=?,"
                           "tmp_lahir=?,"
                            "tgl_lahir=?,"
                           "warga_negara=?,"
                            "agama=?,"
                            "pekerjaan=?,"
                            "alamat=?,"
                            "pendidikan=? where idistri=?";
    editistri.prepare(sqleditistri);
    editistri.bindValue(0, nm_istri);
    editistri.bindValue(1, tmp_lahir);
    editistri.bindValue(2, tgl_lahir);
    editistri.bindValue(3, warga_negara);
    editistri.bindValue(4, agama);
    editistri.bindValue(5, pekerjaan);
    editistri.bindValue(6, alamat);
    editistri.bindValue(7, pendidikan );
    editistri.bindValue(8, idistri);
    editistri.exec();
}

void backend::hapusistri(QString idistri)
{
    QSqlQuery hapusistri;
    QString sqlhapusistri = "delete from tbl_istri where idistri=?";
    hapusistri.prepare(sqlhapusistri);
    hapusistri.bindValue(0, idistri);
    if(hapusistri.exec()){
        qDebug()<<"Data Berhasil Disimpan";
    } else {
        qDebug()<<hapusistri.lastError().text();
    }
}
