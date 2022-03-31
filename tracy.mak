CC? = /usr/bin/c++

all: tracy.o

tracy.o: tracy/TracyClient.cpp
	$(CC) -c -std=c++17 -g -DTRACY_ENABLE -DTRACY_ON_DEMAND -DTRACY_DEMANGLE -fPIC tracy/TracyClient.cpp -o TracyClient.o

clean:
	rm -f *.o
