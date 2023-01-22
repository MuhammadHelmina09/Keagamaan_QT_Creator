import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.2
import QtQml.Models 2.1
import QtQuick.Controls.Material 2.3

Page {
    id:formdataistri
    width: 640
    height: 480
    visible: true

    Rectangle{
        anchors.centerIn: parent
        y: 20
        width: 600
        height: 400
        TableView{
            id: tableView
            topMargin: columnsHeader.impliciHeight

            columnWidthProvider: function(){return 200}
            rowHeightProvider: function() {return 20;}
            anchors.fill: parent

            ScrollBar.horizontal: ScrollBar{}
            ScrollBar.vertical: ScrollBar{}
            clip:true

            model: MysqlModelIstri

            //Table Body

            delegate: Rectangle{
                Text{
                    text: display
                    anchors.fill: parent
                    anchors.margins: 10
                    color: 'black'
                    font.pixelSize: 15
                    verticalAlignment: Text.AlignVCenter
                }
            }

            //table Header

            Row{
                id:columnsHeader
                y:tableView.contentY
                z:2
                Repeater{
                    model:tableView.columns>0?tableView.columns:1
                    Label{
                        width:tableView.columnWidthProvider(modelData)
                        height:25
                        text: MysqlModelIstri.headerData(modelData,Qt.Horizontal)
                        font.pixelSize: 15
                        padding: 10
                        verticalAlignment: Text.AlignVCenter

                        background: Rectangle{color:'#ccc'}
                    }
                }
            }
             ScrollIndicator.horizontal: ScrollIndicator{}
             ScrollIndicator.vertical: ScrollIndicator{}
        }
    }
}
