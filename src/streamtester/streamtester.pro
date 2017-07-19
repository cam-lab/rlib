TEMPLATE    = lib
TARGET      = rawstreamtester

CONFIG     += staticlib

TOPDIR      = ../..

include($${TOPDIR}/build.pri)

HEADERS    += \
		$${INC_DIR}/rawstreamtester.h

SOURCES    += rawstreamtester.cpp 
QT         += testlib
