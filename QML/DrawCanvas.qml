import QtQuick

Item{
	//知识点：mainwindow分为header、contentItem、footer三部分，parent指contentItem
	id:root
	anchors.top: parent.top//contentitem的顶部
	anchors.left: parent.left
	anchors.right: parent.right
	anchors.bottom: parent.bottom////contentitem的底部
	Rectangle{
		anchors.top:parent.top
		anchors.left:parent.left
		anchors.bottom:parent.bottom
		width: parent.width/2
		id:leftRect
		color:"red"
		Text{
			anchors.centerIn: parent
			text:"lefttxt"
		}
	}
	Rectangle{
		anchors.top:parent.top
		anchors.right:parent.right
		anchors.bottom:parent.bottom
		width: parent.width/2
		id:rightRect
		color:"blue"
		Text{
			anchors.centerIn: parent
			text:"rightttxt"
		}
	}
}

