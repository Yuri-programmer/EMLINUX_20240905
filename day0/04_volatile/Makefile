
all_slow: main.c
	gcc -o main main.c
	objdump -d -S main > main_slow.s
	./main

all_fast: main.c
# -O3 --> optimization level 3 ..
	gcc -O3 -o main main.c
	objdump -d -S main > main_fast.s
	./main

all: all_slow all_fast

clean:
	rm *.o main
