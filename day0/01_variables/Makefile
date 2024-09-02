main.o: main.c
	gcc -c main.c

foo.o: foo.c 
	gcc -c foo.c

all: main.o foo.o
	gcc -o main main.o foo.o
	./main

clean:
	rm *.o main
