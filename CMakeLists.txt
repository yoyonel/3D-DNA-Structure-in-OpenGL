cmake_minimum_required(VERSION 3.0.2)
project(3D-DNA-Structure-in-OpenGL)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/CMakeModules/")

find_package(OpenGL REQUIRED)
find_package(FREEGLUT REQUIRED)
find_package(GLEW REQUIRED)

if(NOT ${OPENGL_FOUND})
    message("OPENGL not found")
endif()

set(PROJECT_SOURCE_DIR .)
set(PROJECT_NAME 3D-DNA_Structure-in-OpenGL)

include_directories(
    ${PROJECT_SOURCE_DIR}
    ${FREEGLUT_INCLUDE_DIR}
    ${GLEW_INCLUDE_DIR}
    ${OPENGL_INCLUDE_DIR}
    )

message(${OPENGL_INCLUDE_DIR})
add_executable(
	${PROJECT_NAME}  
	${PROJECT_SOURCE_DIR}/main_code.cpp
) 

target_link_libraries(
	${PROJECT_NAME} 
	${OPENGL_LIBRARY}
	${FREEGLUT_LIBRARY}
	${GLEW_LIBRARY}
)