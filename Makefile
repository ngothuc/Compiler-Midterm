SHELL = /bin/sh

OBJS =  main.o parser.o scanner.o reader.o charcode.o token.o error.o
CFLAG = -Wall -g
CC = gcc
INCLUDE =
LIBS = -lm

parser:${OBJS}
	${CC} ${CFLAGS} ${INCLUDES} -o $@ ${OBJS} ${LIBS}

clean:
	-rm -f *.o core *.core

.c.o:
	${CC} ${CFLAGS} ${INCLUDES} -c $<
