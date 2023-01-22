import QtQuick 2.0
import QtQuick.Controls 2.15

Page {

    id:halamanUtama

    ItemDelegate{
        width: parent.width
        height: 100


    Rectangle{
        width: parent.width
        height: parent.height
        color: "Black"

        Image {
            id: logo
            source: "meneg.png"
            width: 90
            height: 90
            x: 10
            y: 3
        }


        Label{
            text: "Meneg Pernikahan"
            font.bold: true
            font.pixelSize: 40;
            anchors.centerIn: parent
            color: "white"
        }
    }

    Image {
        id: idhelmi
        source: "helmi.jpeg"
        width :180
        height :250
        x : 100
        y : 150

        Label{
            text: "Muhammad Helmina"
            font.bold: true
            font.pixelSize: 18;
            color: "black"
            x : 200
            y : 60
        }

        Label{
            text: "2010010612"
            font.bold: true
            font.pixelSize: 18;
            color: "black"
            x : 200
            y : 90
        }

        Label{
            text: "TI 5N Reguler Banjarmasin"
            font.bold: true
            font.pixelSize: 18;
            color: "black"
            x : 200
            y : 120
        }

    }

}
}
