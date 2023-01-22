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
        id:pesanistri
        title: "informasi"
        Text {
            text: qsTr("Data Berhasil Disimpan")
        }
    }




    Dialog {
        id:pesannama
        title: "informasi"
        Text {
            text: qsTr("Nama Belum Diisi")
        }
    }

    Dialog {
        id:pesantempat
        title: "informasi"
        Text {
            text: qsTr("Tempat Lahir Belum Diisi")
        }
    }

    Dialog {
        id:pesantanggal
        title: "informasi"
        Text {
            text: qsTr("Tanggal Lahir Belum Diisi")
        }
    }

    Dialog {
        id:pesanwarga
        title: "informasi"
        Text {
            text: qsTr("Warga negara Belum Diisi")
        }
    }



    Dialog {
        id:pesanagama
        title: "informasi"
        Text {
            text: qsTr("Agama Belum Diisi")
        }
    }

    Dialog {
        id:pesanpekerjaan
        title: "informasi"
        Text {
            text: qsTr("Pekerjaan Belum Diisi")
        }
    }

    Dialog {
        id:pesanalamat
        title: "informasi"
        Text {
            text: qsTr("Alamat Belum Diisi")
        }
    }

    Dialog {
        id:pesanpendidikan
        title: "informasi"
        Text {
            text: qsTr("Pendidikan Belum Diisi")
        }
    }

    GroupBox{
        id:grup1
        x:10
        y:20
        width: window1.width-100
        height: 600
        title:"Data Istri"

        GridLayout{
            id:layout1
            columns: 2
            x:10
            y:20

            Label{
                text:"ID Istri"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:idistri
                placeholderText: "ID Istri"
            }

            Label{
                text:"Nama Istri"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:nm_istri
                placeholderText: "Nama Istri"
            }

            Label{
                text:"Tempat Lahir"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:tmp_lahir
                placeholderText: "Tempat Lahir"
            }

            Label{
                text:"Tanggal Lahir"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:tgl_lahir
                placeholderText: "Tanggal Lahir"
            }

            Label{
                text:"Warga Negara"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:warga_negara
                placeholderText: "Warga Negara"
            }

            Label{
                text:"Agama"
                font.bold: true
                font.pixelSize: 12
            }

            ComboBox {
                id:agama
                model:["Islam","Protestan","Katolik","Hindu","Buddha","Konghucu"]
                font.bold: true
                width: grup1.width-400
            }

            Label{
                text:"Pekerjaan"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:pekerjaan
                placeholderText: "Pekerjaan"
            }

            Label{
                text:"Alamat"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:alamat
                placeholderText: "Alamat"
            }

            Label{
                text:"Pendidikan"
                font.bold: true
                font.pixelSize: 12
            }

            TextField {
                id:pendidikan
                placeholderText: "Pendidikan"
            }

            Button{
                id:simpan
                text:"Simpan"
                x:grup1.x
                y:grup1.y+280
                font.bold: true
                font.pixelSize: 12
                onClicked: {
                    if (nm_istri.text==""){
                        pesannama.open()
                        txtnama.focus=true
                    } else if(tmp_lahir.text==""){
                        pesantempat.open()
                        txtdaftar.focus=true

                    } else if(tgl_lahir.text==""){
                        pesantanggal.open()
                        txtdaftar.focus=true

                    } else if(warga_negara.text==""){
                        pesanwarga.open()
                        txtdaftar.focus=true

                    } else if(agama.currentText==""){
                        pesanagama.open()
                        txtdaftar.focus=true

                    } else if(pekerjaan.text==""){
                        pesanpekerjaan.open()
                        txtdaftar.focus=true

                    } else if(alamat.text==""){
                        pesanalamat.open()
                        txtdaftar.focus=true

                    } else if(pendidikan.text==""){
                        pesanpendidikan.open()
                        txtdaftar.focus=true






                    } else {
                                        crud.simpanistri(nm_istri.text, tmp_lahir.text, tgl_lahir.text, warga_negara.text,
                                                                  agama.currentText, pekerjaan.text, alamat.text, pendidikan.text)
                        pesanistri.open()

                    }
        }
            }

            Button{
                id:btnupdate
                text:"Update"
                font.bold: true
                font.pixelSize: 12
                onClicked: {
                    crud.editistri(idistri.text, nm_istri.text, tmp_lahir.text, tgl_lahir.text, warga_negara.text,
                                           agama.currentText, pekerjaan.text, alamat.text, pendidikan.text)

                }
            }

            Button{
                id:btnhapus
                text:"Hapus"
                font.bold: true
                font.pixelSize: 12
                onClicked: {
                    crud.hapusistri(idistri.text)
                }
            }
         } //ending grupbox

     }




}
