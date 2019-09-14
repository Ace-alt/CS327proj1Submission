#set up variable for -g and -Wall
CFLAGS = -g -Wall
#target exe
all: main.o myfunc.o
		g++ $(CFLAGS) -o myexe main.o myfunc.o

#rebuild if necessary: main.o & myfunc.o
main.o: main.cpp myfunc.h
		g++ $(CFLAGS) -c main.cpp

myfunc.o: myfunc.cpp myfunc.h
		g++ $(CFLAGS) -c myfunc.cpp

#remove .o files when make clean is typed
clean:
	rm -f *.o myexe
