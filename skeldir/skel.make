#  _  _ ___    
# | || | __|   H
# | __ | _|    A
# |_||_|___|   P
#              

output: main.o
	g++ main.o

main.o: main.cpp
	g++ -c main.cpp

clean:
	rm *.o

force:
	touch main.cpp
	make

final:
	g++ -c main.cpp
	g++ main.o -o output
	rm *.o
