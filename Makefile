# compiler to use
CC=g++
# options I will pass to the compiler
CFLAGS=-c -Wall

all: hello

hello: main.o factorial.o hello.o
	$(CC) main.cpp hello.cpp factorial.cpp -o hello

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

factorial.o: factorial.cpp
	$(CC) $(CFLAGS) factorial.cpp

hello.o: hello.cpp
	$(CC) $(CFLAGS) hello.cpp

clean:
	rm hello
	rm *.o
