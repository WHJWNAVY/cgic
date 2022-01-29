cmake_minimum_required (VERSION 3.3.2)

project (cgic C)

set(CMAKE_BUILD_TYPE Release)

configure_file(
  "${PROJECT_NAME}.pc.in"
  "${PROJECT_NAME}.pc"
  @ONLY)

find_package(PkgConfig REQUIRED)

set(CGIC_SRCS_PATH cgic-2.08)
file(GLOB LIBCH_CGIC_SRCS ${CGIC_SRCS_PATH}/cgic.c)
file(GLOB LIBCH_CGIC_HEADERS ${CGIC_SRCS_PATH}/cgic.h)

add_library(${PROJECT_NAME} SHARED ${LIBCH_CGIC_SRCS})

target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR}
                                          ${PROJECT_SOURCE_DIR}/${CGIC_SRCS_PATH}
                                          )

install(FILES ${LIBCH_CGIC_HEADERS}
    DESTINATION include/cgic
)

install(TARGETS ${PROJECT_NAME}
        LIBRARY DESTINATION lib)

install(FILES ${PROJECT_NAME}.pc
        DESTINATION lib/pkgconfig)