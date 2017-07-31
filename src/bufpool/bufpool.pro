TEMPLATE    = lib
TARGET      = bufpool

CONFIG     += staticlib

PRJ_DIR     = ../..

include($${PRJ_DIR}/build.pri)

HEADERS    += \
               $${INC_DIR}/bufpool.h       \
               $${INC_DIR}/sysutils.h      \
               $${INC_DIR}/msg.h

SOURCES    += bufpool.cpp 
QT         += testlib
DEFINES    += ENA_FW_QT MSG_SELF_RELEASE

win32 {
	DEFINES    += ENA_WIN_API
}
