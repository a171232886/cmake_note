project(SUB VERSION 1.0)

message("####################在下级目录中####################")
message("当前项目名称 = ${PROJECT_NAME}")
message("主项目名称 = ${CMAKE_PROJECT_NAME}")
message("当前项目版本 =${PROJECT_VERSION}")
message("主项目版本 = ${CMAKE_PROJECT_VERSION}")
message("当前项目路径 = ${PROJECT_SOURCE_DIR}")
message("主项目路径 = ${CMAKE_SOURCE_DIR}")