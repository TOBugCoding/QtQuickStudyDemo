import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: root
    property var titleText: titleLabel.text
    signal minimizeRequested()
    signal closeRequested()
    property var targetwindow:null
    height: 40  // 保持固定高度
    width: parent.width  // 宽度跟随父元素
    color: "#FFB6C1"
    MouseArea {
        anchors.fill: parent  // 这里的parent是根Item，无布局冲突
        property point dragStart
        onPressed: function(mouse) {
            dragStart = Qt.point(mouse.x, mouse.y)
        }
        onPositionChanged: function(mouse) {
            //console.log("拖动中", mouse.x, mouse.y)
            root.targetwindow.x += mouse.x - dragStart.x
            root.targetwindow.y += mouse.y - dragStart.y
        }
    }
    // 原有的RowLayout作为内部布局
    RowLayout {
        id:layout
        anchors.fill: parent  // 充满整个根Item
        spacing: 10
   
        Item { 
            Layout.fillWidth: true 
            Layout.preferredWidth: root.width * 0.1  // 使用root（Item）作为参考
        }
        Label {
            id: titleLabel
            text: qsTr("播放器模拟")
            Layout.fillWidth: true
            Layout.preferredWidth: root.width * 0.3
            verticalAlignment: Text.AlignVCenter
        }

        Item { 
            Layout.fillWidth: true 
            Layout.preferredWidth: root.width * 0.45 
        }

        Button {
            text: qsTr("最小化")
            Layout.fillWidth: true
            Layout.preferredWidth: root.width * 0.1
            onClicked: root.minimizeRequested()
        }

        Button {
            text: qsTr("关闭")
            Layout.fillWidth: true
            Layout.preferredWidth: root.width * 0.1
            onClicked: root.closeRequested()
        }
        Item { 
            Layout.fillWidth: true 
            Layout.preferredWidth: root.width * 0.05 
        }
    }

}