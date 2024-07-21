cmake_minimum_required(VERSION 3.28)
project(quickjs-universal)

add_library(quickjs-universal
        PatchedSources/cutils.c
        PatchedSources/cutils.h
        PatchedSources/libbf.c
        PatchedSources/libbf.h
        PatchedSources/libregexp-opcode.h
        PatchedSources/libregexp.c
        PatchedSources/libregexp.h
        PatchedSources/libunicode-table.h
        PatchedSources/libunicode.c
        PatchedSources/libunicode.h
        PatchedSources/Polyfill.h
        PatchedSources/quickjs-atom.h
        PatchedSources/quickjs-libc.c
        PatchedSources/quickjs-libc.h
        PatchedSources/quickjs-opcode.h
        PatchedSources/quickjs.c
        PatchedSources/quickjs.h)

target_include_directories(quickjs-universal PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/PatchedSources/>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)

