# My first makefile

all: printy

printy: main.o helloWorld.o
	gcc -o printy main.o helloWorld.o

main.o: main.c helloWorld.h
	gcc -o main.o main.c -c -W -Wall -ansi -pedantic

helloWorld.o: helloWorld.c helloWorld.h
	gcc -o helloWorld.o helloWorld.c -c -W -Wall -ansi -pedantic

clean:
	rm -rf *.o *~ printy