cmake_minimum_required(VERSION 3.5)
project(main)

# 参考
# 1. https://zhuanlan.zhihu.com/p/95771200
# 2. https://www.bookstack.cn/read/CMake-Cookbook/content-chapter5-5.3-chinese.md

add_executable(${PROJECT_NAME} src/main.cpp)


if(USE_COMMAND)
    # **推荐方式**
    # 单独使用add_custom_command 
    # TARGET：由 add_executable 或 add_library 生成的目标文件名称
    # PRE_BUILD | PRE_LINK | POST_BUILD：分别表示
    #   编译之前执行命令
    #   链接之前执行命令
    #   生成目标文件后执行命令
    # COMMAND：需要执行的命令
    # WORKING_DIRECTORY：命令工作目录
    # COMMENT：注释
    # VERBATIM：类似于句尾

    # 注意在COMMAND
    # 使用 ${CMAKE_COMMAND} -E 的命令 和 linux的命令格式不尽相同

    add_custom_command(
        TARGET ${PROJECT_NAME}
        POST_BUILD 
        COMMAND 
            tar -czvf ${PROJECT_NAME}.tar.gz ${PROJECT_NAME} 
        COMMAND
            cp ${PROJECT_NAME}.tar.gz h1.tar.gz
        COMMAND
            echo compile finish
        WORKING_DIRECTORY 
            ${CMAKE_SOURCE_DIR}/build/
        COMMENT
            "执行TAR"
        VERBATIM
    )

elseif(USE_TARGET)
    # 先add_custom_command，后add_custom_target
    # 生成一个中间文件（不可见）printout保存命令
    add_custom_command(
        OUTPUT 
            printout 
        COMMAND 
            ${CMAKE_COMMAND} -E echo compile finish
        VERBATIM
    )

    # 生成target，依赖项是printout
    add_custom_target(finish
        DEPENDS 
            printout
    )


endif()
