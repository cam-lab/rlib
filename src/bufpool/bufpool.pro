TEMPLATE    = lib
CONFIG     += staticlib
TARGET      = bufpool
DEPENDPATH += .
TOPDIR      = ../..

include($$TOPDIR/common.pri)
include($$TOPDIR/build.pri)

HEADERS    += \
               $$TOPDIR/include/bufpool.h       \
               $$TOPDIR/include/sysutils.h      \
               $$TOPDIR/include/msg.h

SOURCES    += bufpool.cpp 
QT         += testlib

win32 {
    LIBS += -lsetupapi -luuid -ladvapi32 -lws2_32
}
