import QtQuick
import QtQuick.Controls.Basic

/*
Что нужно сделать
Реализуйте простой симулятор управления телевизором с помощью пульта, представленного в виде графического интерфейса с кнопками.

Интерфейс представляет собой вертикальное окно (в портретной ориентации) размером 240х680 пикселей.
На пульте находятся кнопки переключения каналов от 0 до 9, кнопки перехода к следующему и предыдущему каналу,
кнопки увеличения и уменьшения громкости с шагом в 10%.

Снизу пульта находится мини-дисплей с отображением текущего статуса: текущий выбранный канал и текущий уровень громкости в процентах.
  */

Window {
    width: 240
    minimumWidth: 240
    maximumWidth: 240
    height: 680
    minimumHeight: 680
    maximumHeight: 680

    visible: true
    title: qsTr("HomeWork")
    color: "#000000"

    Item {
        id:myItem
        property int volume: 0
        property string channel
        property string tempo
    }

    Timer {
        id: timer
        interval: 1500
        running: false
        repeat: true

        onTriggered: {
            if(myItem.channel.length != 2) {
                myItem.tempo = myItem.channel
                myItem.channel = "0" + myItem.tempo
                timer.running = false
            }
        }
    }

    function setButton1() {
        if(myItem.channel.length <= 1) {
            myItem.channel += "1"
            timer.running = true
        }
    }

    Button {
        id: myButton1
        width: 50
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecBut1
            anchors.fill: myButton1
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myButton1
            text: "1"
            color: "#ffffff"
            font.pixelSize: 15
        }

        onClicked: setButton1()

        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Button {
        id: myButton2
        width: 50
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecBut2
            anchors.fill: myButton2
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myButton2
            text: "2"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: myButton1.right
        anchors.leftMargin: 15
    }

    Button {
        id: myButton3
        width: 50
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecBut3
            anchors.fill: myButton3
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myButton3
            text: "3"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: myButton2.right
        anchors.leftMargin: 15
    }

    Button {
        id: myButton4
        width: 50
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecBut4
            anchors.fill: myButton4
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myButton4
            text: "4"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myButton1.bottom
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Button {
        id: myButton5
        width: 50
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecBut5
            anchors.fill: myButton5
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myButton5
            text: "5"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myButton2.bottom
        anchors.topMargin: 15
        anchors.left: myButton4.right
        anchors.leftMargin: 15
    }

    Button {
        id: myButton6
        width: 50
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecBut6
            anchors.fill: myButton6
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myButton6
            text: "6"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myButton3.bottom
        anchors.topMargin: 15
        anchors.left: myButton5.right
        anchors.leftMargin: 15
    }

    Button {
        id: myButton7
        width: 50
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecBut7
            anchors.fill: myButton7
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myButton7
            text: "7"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myButton4.bottom
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Button {
        id: myButton8
        width: 50
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecBut8
            anchors.fill: myButton8
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myButton8
            text: "8"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myButton5.bottom
        anchors.topMargin: 15
        anchors.left: myButton7.right
        anchors.leftMargin: 15
    }

    Button {
        id: myButton9
        width: 50
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecBut9
            anchors.fill: myButton9
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myButton9
            text: "9"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myButton6.bottom
        anchors.topMargin: 15
        anchors.left: myButton8.right
        anchors.leftMargin: 15
    }

    Button {
        id: myButton10
        width: 50
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecBut10
            anchors.fill: myButton10
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myButton10
            text: "0"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myButton8.bottom
        anchors.topMargin: 15
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: myChannelUp
        width: 70
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecChanUp
            anchors.fill: myChannelUp
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myChannelUp
            text: "Channel \n      +"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myButton7.bottom
        anchors.topMargin: 120
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Button {
        id: myChannelDown
        width: 70
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecChanDown
            anchors.fill: myChannelDown
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myChannelDown
            text: "Channel \n      -"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myChannelUp.bottom
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Button {
        id: myVolumeUp
        width: 70
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecVolUp
            anchors.fill: myVolumeUp
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myVolumeUp
            text: "Volume \n     +"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myButton9.bottom
        anchors.topMargin: 120
        anchors.right: parent.right
        anchors.rightMargin: 30
    }

    Button {
        id: myVolumeDown
        width: 70
        height: 50
        hoverEnabled: false
        background: Rectangle {
            id: myRecVolDown
            anchors.fill: myVolumeDown
            color: "#000000"

            border.width: 2
            border.color: "#c28a14"
            radius: 15
        }


        Text {
            anchors.centerIn: myVolumeDown
            text: "Volume \n     -"
            color: "#ffffff"
            font.pixelSize: 15
        }


        anchors.top: myVolumeUp.bottom
        anchors.topMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 30
    }

    Rectangle {
        id: myRecDisplay
        height: 180
        color: "#000000"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.width: 2
        border.color: "#c28a14"
        radius: 5

        Text {
            id:myTextDisplay
            anchors.centerIn: myRecDisplay
            visible: true
            color: "#ffffff"
            font.pixelSize: 10
            text: "Выбранный канал: " + myItem.channel +
             "\nУровень громкости: " + myItem.volume + " %"

        }
    }

}
