PROJECT_NAME := mrgingham
ABI_VERSION  := 0
TAIL_VERSION := 1


DIST_BIN := mrgingham_test_from_image mrgingham_test_from_points
BIN_SOURCES := $(DIST_BIN:%=%.cc) test_dump_blobs.cc
LIB_SOURCES := find_grid.cc find_blobs.cc mrgingham.cc

CXXFLAGS_CV := $(shell pkg-config --cflags opencv)
LDLIBS_CV   := $(shell pkg-config --libs   opencv)
CCXXFLAGS += $(CXXFLAGS_CV)
LDLIBS    += $(LDLIBS_CV)

CCXXFLAGS += -Wno-unused-function -Wno-missing-field-initializers

DIST_INCLUDE := mrgingham.hh point.hh

include /usr/include/mrbuild/Makefile.common
