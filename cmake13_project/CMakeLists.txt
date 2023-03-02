cmake_minimum_required(VERSION 3.5)
project(MAIN VERSION 3.2)

add_subdirectory(sub)


message("####################在主目录中####################")
message("当前项目名称 = ${PROJECT_NAME}")
message("主项目名称 = ${CMAKE_PROJECT_NAME}")
message("当前项目版本 =${PROJECT_VERSION}")
message("主项目版本 = ${CMAKE_PROJECT_VERSION}")
message("当前项目路径 = ${PROJECT_SOURCE_DIR}")
message("主项目路径 = ${CMAKE_SOURCE_DIR}")