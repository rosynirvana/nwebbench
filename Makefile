CC = gcc
CFLAGS = -Wall -Wextra -O2

all:   webbench

webbench: webbench.c
	$(CC) $(CFLAGS) -o webbench webbench.c

clean:
	-rm -f *.o webbench 
	
webbench.o:	webbench.c socket.c Makefile

.PHONY: clean all 
