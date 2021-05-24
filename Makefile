CC=gcc -g 
LD=gcc 
CXXFLAGS = 
CFLAGS = 
RM = rm -f
MV = mv 
CP = cp 
MAKE = make
SRC = $(wildcard src/*.c)
OBJ = src/*.o
CPPFLAGS = -Isrc
LIBS = 
LDFLAGS = 
EEXT=
OEXT=.o
TARGET0 = ccolor
TARGETS = ccolor
RMTARGETS = src/ccolor
all: $(TARGETS)
src/$(TARGET0)$(EEXT): src/$(TARGET0).c
	$(CC) $(CPPFLAGS) src/$(TARGET0).c  -o src/ccolor $(LDFLAGS)
$(TARGET0): src/$(TARGET0)$(EEXT)
install: all
	mv $(RMTARGETS) bin
.PHONY: clean distclean 
clean: 
	rm -f $(OBJ) $(RMTARGETS)
distclean: clean
	rm -f bin/* Makefile* *.fit *.fits *.csv *.ssv *.tsv *.dat *.txt *.log
