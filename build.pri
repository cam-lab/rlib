#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

#---
CONFIG  -= debug_and_release debug_and_release_target

#---
PRJ_DIR = $${PWD}

#---
if(equals(NO_DEBUG_INFO,1)) {
	DEFINES  += QT_NO_DEBUG_OUTPUT
}

#---
if(defined(RLIB_INC_DIR,var)) {
	INC_DIR = $${RLIB_INC_DIR}
} else {
	INC_DIR = $${PRJ_DIR}/include
}

#---
if(defined(RLIB_OUT_DIR,var)) {
	OUT_DIR = $${RLIB_OUT_DIR}
} else {
	OUT_DIR = $${PRJ_DIR}/bin
}

#---
if(defined(RLIB_BLD_DIR,var)) {
	BLD_DIR = $${RLIB_BLD_DIR}
} else {
	BLD_DIR = $${PRJ_DIR}/build
}

#---
INCLUDEPATH += .                             \
	       $${PRJ_DIR}/src\bufpool       \
	       $${PRJ_DIR}/src\streamtester  \
               $${INC_DIR}

#---
CONFIG(release, debug|release) {
   DESTDIR     = $${OUT_DIR}/release
   OBJECTS_DIR = $${BLD_DIR}/$${TARGET}/release
} else {
   DESTDIR     = $${OUT_DIR}/debug
   OBJECTS_DIR = $${BLD_DIR}/$${TARGET}/debug
}

MOC_DIR  = $${OBJECTS_DIR}/moc
