CFLAGS=-Wall -g
LIBS=-lSDL2 -lSDL2_image -lSDL2_ttf

SRC=$(wildcard src/*.c)
OBJECTS=$(patsubst %.c, %.o, $(SRC))
TARGET=build/pong

all: $(TARGET)

$(TARGET): $(OBJECTS)
		$(CC) $(CFLAGS) -o $@ $(OBJECTS) $(LIBS)
		rm -f src/*.o

build:
		@mkdir -p build
		@mkdir -p bin

clean:
	rm -f build/*
