TEMPLATE    = subdirs

include(build.pri)

SUBDIRS = \
          streamtester \
          bufpool

bufpool.subdir      = src/bufpool
streamtester.subdir = src/streamtester

CONFIG += ordered


