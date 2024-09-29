CC = gcc
CFLAGS = -I. -w
DEPS = hello.h bye.h
OBJ = hello.o bye.o main.o
%.o: %.c $(DEPS)
$(CC) -c -o $@ $< $(CFLAGS)
greetings: $(OBJ)
$(CC) -o $@ $^ $(CFLAGS)
