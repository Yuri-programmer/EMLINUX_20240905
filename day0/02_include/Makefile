main.o: main.c 
	gcc -I./lib -S main.c -o main.s
	as  -o main.o    main.s

foo.o: foo.c
	gcc -S  foo.c -o foo.s
	as  -o  foo.o    foo.s

incr.o: incr.c
	gcc -S incr.c -o incr.s
	as  -o incr.o    incr.s

hmobis.o: hmobis.c
	gcc -S hmobis.c -o hmobis.s
	as  -o hmobis.o    hmobis.s

all: main.o foo.o incr.o lib/hmobis/*.o
	cp lib/hmobis/*.o .

	gcc -o main main.o foo.o incr.o hal_hmobis.o hal_pwm.o hal_gpio.o
	./main

dump:
	objdump -d -S main > main_dis.s

clean:
	rm *.o main

