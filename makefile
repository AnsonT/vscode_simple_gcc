CC = clang++
CFLAGS = -Wall -g -O0 -std=c++11 -Wc++11-extensions
DEPS = list.h
OBJ = main.o list.o
TARGET = main

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm $(TARGET)
	rm $(OBJ)


.PHONY: all clean