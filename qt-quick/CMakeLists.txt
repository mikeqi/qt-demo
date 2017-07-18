cmake_minimum_required(VERSION 2.8)

project(qtquick)

set(CMAKE_AUTOMOC ON)
# As moc files are generated in the binary dir, tell CMake
# to always look for includes there:
set(CMAKE_INCLUDE_CURRENT_DIR ON)

add_definitions(-std=c++11)

find_package(Qt5 COMPONENTS Quick Core Network)
find_package(Qt5QuickCompiler)
qtquick_compiler_add_resources(RESOURCES )