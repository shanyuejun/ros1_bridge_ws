cmake_minimum_required(VERSION 2.8.3)
project(plusgo_msgs)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

add_definitions(-O3)
add_definitions(-std=c++14)
add_compile_options(-W)
add_compile_options(-std=c++14)

find_package(catkin REQUIRED COMPONENTS
	roscpp
	rospy
	std_msgs
	geometry_msgs
	message_generation
)

add_message_files(
	FILES
	
	Object.msg
	Objects.msg
	Polygon.msg
	ImageRect.msg

)



generate_messages(
	DEPENDENCIES
	std_msgs
	geometry_msgs
)

catkin_package()

include_directories(${catkin_INCLUDE_DIRS})
link_directories(${catkin_LIBRARY_DIRS})
