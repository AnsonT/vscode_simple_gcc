CC = gcc
CFLAGS = -Wall -g
DEPS = list.h
OBJ = main.o list.o
TARGET = main

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm $(TARGET)
	rm $(OBJ)

.PHONY: all clean