import QtQuick 2.0
import QtQuick.Controls 2.0

Page {
/*
    Label{
        text: "Ini Halaman 2"
        font.bold: true
        font.pixelSize: 18
        anchors.centerIn: parent
    }

    Button{
        id:button1
        text: "back"
        x:hal1.x*120
        y:hal1.y*50
        onClicked: {
            stackview.push("home.qml");
        }

    }
    Button{
        id:button1
        text: "next"
        x:hal1.x*120
        y:hal1.y*50
        onClicked: {
            stackview.push("halaman1.qml");
        }
        */
    SwipeView{
        id: menuswipe

        width: parent.width
        height: 500

        PageSuami{}
        DataSuami{}



    }

    PageIndicator{
        id: indicator
        count:menuswipe.count
    }

    footer:TabBar{
        id:menutabbar
        TabButton{
            id:buttonitemsuami
            text:"Data Suami"
            onClicked: {
                menuswipe.currentIndex=0
            }
        }
        TabButton{
            id:buttonhasilsuami
            text:"Data Suami"
            onClicked: {
                menuswipe.currentIndex=1
            }
        }

    }

}
