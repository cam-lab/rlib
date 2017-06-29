TEMPLATE    = lib
CONFIG     += staticlib
TARGET      = bufpool
TOPDIR      = ../..

include($$TOPDIR/common.pri)
include($$TOPDIR/build.pri)

HEADERS    += \
               $$TOPDIR/include/bufpool.h       \
               $$TOPDIR/include/sysutils.h      \
               $$TOPDIR/include/msg.h

SOURCES    += bufpool.cpp 
QT         += testlib
DEFINES    += ENA_FW_QT MSG_SELF_RELEASE

win32 {
	DEFINES    += ENA_WIN_API
}
