cmake_minimum_required(VERSION 3.16)

project(QtQuickDemo LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 找 Qt6 组件
find_package(Qt6 6.9 REQUIRED COMPONENTS Core Gui Qml Quick)

# 把 qrc 文件 → C++ 源文件
qt6_add_resources(APP_RESOURCES qml.qrc)

# 可执行目标
add_executable(QtQuickDemo
    src/main.cpp
    ${APP_RESOURCES}   # 资源也要放进源文件列表
)

# 链接 Qt 库
target_link_libraries(QtQuickDemo PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
)