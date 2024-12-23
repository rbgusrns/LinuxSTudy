# makefile
.SUFFIXES : .c .o

OBJECTS = main.o print.o input.o
SRCS = main.c print.c input.c
CFLAGS = -g
TARGET = CCC
CC = gcc

$(TARGET) : $(OBJECTS) 
	$(CC) -o $@ $(OBJECTS)

.c.o :
	$(CC) $(CFLAGS) -c $< -o $@

clean : 
	$(RM) $(OBJECTS) $(TARGET) core

main.o : main.c common.h
print.o : print.c common.h
input.o : input.c common.h


