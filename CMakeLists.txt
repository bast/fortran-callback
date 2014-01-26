cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

project(callback)

enable_language(Fortran)

add_executable(
    callback.x
    main.F90
    library_interface.F90
    library_implementation.F90
    )
