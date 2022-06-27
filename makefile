FLAGS= -Wall -pedantic  -iquote inc

__start__: ./program
	./program

./program: obj obj/main.o 

	gcc -o ./program obj/main.o 
                     
					 
					 
obj:
	mkdir obj

obj/main.o: src/main.c 
	gcc -c ${FLAGS} -o obj/main.o src/main.c

clean:
	rm -f ./test_arytm_zesp obj/*
