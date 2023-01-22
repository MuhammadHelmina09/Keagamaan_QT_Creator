import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.2
import QtQml.Models 2.1
import QtQuick.Controls.Material 2.3
import QtQuick.Dialogs 1.3

Page {
    id:window1
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Dialog{
        id:pesanpemeriksaan
        title: "informasi"
        Text {
            text: qsTr("Data Berhasil Disimpan")
        }
    }




    Dialog {
        id:pesandaftar
        title: "informasi"
        Text {
            text: qsTr("Tanggal Daftar Belum Diisi")
        }
    }

    Dialog {
        id:pesannikah
        title: "informasi"
        Text {
            text: qsTr("Tanggal Nikah Belum Diisi")
        }
    }

    Dialog {
        id:pesansuami
        title: "informasi"
        Text {
            text: qsTr("Nama Suami Belum Diisi")
        }
    }

    Dialog {
        id:pesanistri
        title: "informasi"
        Text {
            text: qsTr("Nama Istri Belum Diisi")
        }
    }



    Dialog {
        id:pesanjam
        title: "informasi"
        Text {
            text: qsTr("Jam Nikah Belum Diisi")
        }
    }

    Dialog {
        id:pesanmaskawin
        title: "informasi"
        Text {
            text: qsTr("Maskawin Belum Diisi")
        }
    }

    Dialog {
        id:pesantempat
        title: "informasi"
        Text {
            text: qsTr("Tempat Nikah Belum Diisi")
        }
    }

    Dialog {
        id:pesansaksi
        title: "informasi"
        Text {
            text: qsTr("Nama Saksi Belum Diisi")
        }
    }

    Dialog {
        id:pesanpenghulu
        title: "informasi"
        Text {
            text: qsTr("Nama Penghulu Belum Diisi")
        }
    }

    GroupBox{
        id:grup1
        x:10
        y:20
        width: window1.width-100
        height: 600
        title:"Data Pemeriksaan"

        GridLayout{
            id:layout1
            columns: 2
            x:10
            y:20

            Label{
                text:"ID Pemeriksaan"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:idpmrn
            }

            Label{
                text:"Tanggal Daftar"
                font.bold: true
                font.pixelSize: 12
            }

            TextField{
                id:tgl_daftar
            }

            Label{
                text:"Tanggal Nikah"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:tgl_nikah
            }

            Label{
                text:"Nama Suami"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:nm_suami
            }

            Label{
                text:"Nama Istri"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:nm_istri
            }

            Label{
                text:"Jam Nikah"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:jam_nikah
            }

            Label{
                text:"Maskawin"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:maskawin
            }

            Label{
                text:"Tempat Nikah"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:tmp_nikah
            }

            Label{
                text:"Nama Saksi"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:nm_saksi
            }

            Label{
                text:"Nama Penghulu"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:nm_penghulu
            }

            Button{
                id:simpan
                text:"Simpan"
                x:grup1.x
                y:grup1.y+280
                font.bold: true
                font.pixelSize: 12
                onClicked: {
                    if (tgl_daftar.text==""){
                        pesandaftar.open()
                        txtnama.focus=true

                    } else if(tgl_nikah.text==""){
                        pesannikah.open()
                        txtdaftar.focus=true

                    } else if(nm_suami.text==""){
                        pesansuami.open()
                        txtdaftar.focus=true

                    } else if(nm_istri.text==""){
                        pesanistri.open()
                        txtdaftar.focus=true

                    } else if(jam_nikah.text==""){
                        pesanjam.open()
                        txtdaftar.focus=true

                    } else if(maskawin.text==""){
                        pesanmaskawin.open()
                        txtdaftar.focus=true

                    } else if(tmp_nikah.text==""){
                        pesantempat.open()
                        txtdaftar.focus=true

                    } else if(nm_saksi.text==""){
                        pesansaksi.open()
                        txtdaftar.focus=true

                    } else if(nm_penghulu.text==""){
                        pesanpenghulu.open()
                        txtdaftar.focus=true






                    } else {
                        crud.simpanpemeriksaan(tgl_daftar.text, tgl_nikah.text, nm_suami.text, nm_istri.text,
                                              jam_nikah.text, maskawin.text, tmp_nikah.text, nm_saksi.text, nm_penghulu.text)
                        pesanpemeriksaan.open()

                    }
                }
            }

            Button{
                id:btnupdate
                text:"Update"
                font.bold: true
                font.pixelSize: 12
                onClicked: {
                    crud.editpemeriksaan(idpmrn.text, tgl_daftar.text, tgl_nikah.text, nm_suami.text, nm_istri.text,
                                           jam_nikah.text, maskawin.text, tmp_nikah.text, nm_saksi.text, nm_penghulu.text)
                }
            }

            Button{
                id:btnhapus
                text:"Hapus"
                font.bold: true
                font.pixelSize: 12
                onClicked: {
                    crud.hapuspemeriksaan(idpmrn.text)
                }
            }
    } //ending grupbox

}

}
