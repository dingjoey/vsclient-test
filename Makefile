# OPT ?= -O2 -DNDEBUG       # (A) Production use (optimized mode)
  OPT ?= -g2              # (B) Debug mode, w/ full line-level debugging symbols
# OPT ?= -O2 -g2 -DNDEBUG # (C) Profiling mode: opt, but w/debugging symbols

CXX = g++
CC = gcc
LIBTOOL = libtool

CFLAGS += -I. $(OPT)
CXXFLAGS += -I. $(OPT)
LDFLAGS +=
LIBS +=

#libgtest
GTEST_DIR = $(HOME)/usr/local/gtest-1.6.0
CFLAGS += -I$(GTEST_DIR)/include
CXXFLAGS += -I$(GTEST_DIR)/include
#LDFLAGS += -L$(GTEST_DIR)/lib
LIBS += $(GTEST_DIR)/lib/libgtest_main.la

# libvsclient
VSCLIENT_PREFIX = $(HOME)/usr/local/vsclient
CFLAGS += -I$(VSCLIENT_PREFIX)/include
CXXFLAGS += -I$(VSCLIENT_PREFIX)/include
#LDFLAGS += -L$(VSCLIENT_PREFIX)/lib
LIBS += $(VSCLIENT_PREFIX)/lib/libvsclient.la

#test programs
TESTS = \
	test1_test #\
#	test2_test 


PROGRAMS = $(TESTS)

default: all

all: $(TESTS)

check: $(TESTS) 
	for t in $(TESTS); do echo "***** Running $$t"; ./$$t || exit 1; done

clean:
	-rm -f $(TESTS) *.o 
	-rm -rf .libs

test1_test: test1_test.o 
	$(LIBTOOL) --mode=link $(CXX) -o $@ test1_test.o $(LDFLAGS) $(LIBS)

.c.o:
	$(CXX) $(CFLAGS) -c $< -o $@

.PHONY: clean all
