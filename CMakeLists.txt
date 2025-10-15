cmake_minimum_required(VERSION 3.10)
project(CalculatorProject)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Створення статичної бібліотеки
add_library(calc STATIC add.cpp)

# Створення виконуваного файлу
add_executable(main main.cpp)


target_link_libraries(main calc)
