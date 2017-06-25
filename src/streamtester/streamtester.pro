TEMPLATE    = lib
CONFIG     += staticlib
TARGET      = rawstreamtester
DEPENDPATH += .
TOPDIR      = ../..

include($$TOPDIR/common.pri)
include($$TOPDIR/build.pri)

HEADERS    += $$TOPDIR/include/rawstreamtester.h

SOURCES    += rawstreamtester.cpp 
QT         += testlib

win32 {
    LIBS += -lsetupapi -luuid -ladvapi32 -lws2_32
}
