CC = gcc
CFLAGS = -O2 -Wall
LDFLAGS = -lpdcurses
SOURCES = src/momoisay.c src/art/art.c src/render.c src/speech.c src/extern/cString.c
OUTPUT = momoisay.exe

all:
	$(CC) $(CFLAGS) $(SOURCES) -o $(OUTPUT) $(LDFLAGS)
	strip $(OUTPUT)

clean:
	rm -f $(OUTPUT)
