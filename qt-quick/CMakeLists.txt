cmake_minimum_required(VERSION 3.7)

project(backend)

set(CMAKE_AUTOMOC ON)
# As moc files are generated in the binary dir, tell CMake
# to always look for includes there:
set(CMAKE_INCLUDE_CURRENT_DIR ON)

add_definitions(-std=c++11)

include_directories(${CMAKE_CURRENT_SOURCE_DIR} qtquick2applicationviewer)

find_package(Qt5 COMPONENTS Quick Core Network)
qt5_add_resources(RESOURCES qml/qt-quick/qml.qrc)
add_executable(${PROJECT_NAME} main.cpp backend.cpp ${RESOURCES})
qt5_use_modules(${PROJECT_NAME} Quick Core Network)
#find_package(Qt5QuickCompiler)
#qtquick_compiler_add_resources(RESOURCES )
target_link_libraries(${PROJECT_NAME} Qt5::Core Qt5::Qml Qt5::Quick)