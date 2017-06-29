TEMPLATE    = lib
CONFIG     += staticlib
TARGET      = rawstreamtester
TOPDIR      = ../..

include($$TOPDIR/common.pri)
include($$TOPDIR/build.pri)

HEADERS    += $$TOPDIR/include/rawstreamtester.h
SOURCES    += rawstreamtester.cpp 
QT         += testlib
