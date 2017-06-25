MOC_DIR = moc
 
CONFIG(debug, debug|release) {
   DESTDIR = $$TOPDIR/bin/debug
   DEFINES += QUDP_DEBUG
   OBJECTS_DIR = debug
} else {
   DESTDIR = $$TOPDIR/bin/release
   OBJECTS_DIR = release
}
