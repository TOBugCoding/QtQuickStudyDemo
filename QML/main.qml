import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640; height: 480
    minimumWidth: 640; minimumHeight: 480
    title: "播放器模拟"
    flags: Qt.Window | Qt.FramelessWindowHint

    header: TopBar {
        titleText: mainWindow.title
        onMinimizeRequested: mainWindow.showMinimized()
        onCloseRequested: Qt.quit()
        targetwindow: mainWindow
    }
   
    footer:Rectangle{
        height:30
        Text{
            anchors.centerIn: parent
            text:"by QTFans.com"
        }
        //管理footer可拉伸区域
        ResizeHandle {
            bottomEnabled:  true
            cornerEnabled:  true
        }
    }
    //管理contentitem可拉伸区域
    ResizeHandle {
        rightEnabled: true
    }
    //后续可以在这里添加播放器界面内容
    DrawCanvas   {}
    
    
}