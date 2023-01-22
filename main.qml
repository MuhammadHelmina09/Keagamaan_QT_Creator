import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

ApplicationWindow{
    id:window
    width: 700
    height: 700
    visible: true
    title: qsTr("Kementrian Agama")

    header:ToolBar{
        contentHeight: ToolBar.implicitHeight
        ToolButton{
            id:toolbuttonmenu
            text:stackView.depth > 1 ? "\u2190" : "\u2630"

            onClicked: {
                if (stackView.depth>1){
                    stackView.pop();
                }else{
                    // kode nanti
                    drawer.open();                }

            } // akhir event klik

            Label{
                text: stackView.currentItem.title
                anchors.fill: parent
            }


        }
    }// akhir dari toolbar

    Drawer{
        id:drawer
        height: window.height
        width: window.width*0.55
        Column{
            anchors.fill: parent
            ItemDelegate{
                width: parent.width
                height: 100
               Rectangle{
                   width:parent.width
                   height: parent.height
                   color: "Black"
                   Image {
                       id: logo
                       source: "meneg.png"
                       width:90
                       height:90
                       x: 10
                       y: 3
                   }
                   Label{
                       text:"Kementrian Agama"
                       font.bold: true
                       font.pixelSize: 20
                       color:"white"
                       x:120
                       y:10
                   }

               }

            }

            ItemDelegate{
                width: parent.width
                height: 60
                Image{
                    id:icon1
                    source: "logo2.png"
                    width:40
                    height:40
                    x:10
                    y:15

                }
                Label{
                    text:"Data Pernikahan"
                    font.bold: true
                    font.pixelSize: 15
                    color: "blue"
                    x:60
                    y:20

                }

                onClicked: {
                    stackView.push("halaman1.qml")
                    drawer.close()
                }
            }
            ItemDelegate{
                width: parent.width
                height: 60
                Image{
                    id:icon2
                    source: "logo2.png"
                    width:40
                    height:40
                    x:10
                    y:15

                }
                Label{
                    text:"Data Suami"
                    font.bold: true
                    font.pixelSize: 15
                    color: "blue"
                    x:60
                    y:20

                }
                onClicked: {
                    stackView.push("halaman2.qml")
                    drawer.close()
                }
            }
                ItemDelegate{
                    width: parent.width
                    height: 60
                    Image{
                        id:icon3
                        source: "logo2.png"
                        width:40
                        height:40
                        x:10
                        y:15

                    }
                    Label{
                        text:"Data Istri"
                        font.bold: true
                        font.pixelSize: 15
                        color: "blue"
                        x:60
                        y:20

                    }
                    onClicked: {
                        stackView.push("halaman3.qml")
                        drawer.close()
                    }
                }
                    ItemDelegate{
                        width: parent.width
                        height: 60
                        Image{
                            id:icon4
//                            source: "logo2.png"
                            width:40
                            height:40
                            x:10
                            y:15

                        }
//                        Label{
//                            text:"Halaman 4"
//                            font.bold: true
//                            font.pixelSize: 15
//                            color: "blue"
//                            x:60
//                            y:20

//                        }
//                        onClicked: {
//                            stackView.push("halaman4.qml")
//                            drawer.close()
//                        }
                    }


}

    }// akhir dari drawer

    StackView{
        id:stackView
        initialItem: "home.qml"
        anchors.fill: parent


    }

}
