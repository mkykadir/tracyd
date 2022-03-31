CC? = /usr/bin/clang++

all: tracy.o

tracy.o: tracy/TracyClient.cpp
	$(CC) -c -std=c++17 -g -DTRACY_ENABLE -DTRACY_ON_DEMAND -DTRACY_DEMANGLE -fPIC tracy/TracyClient.cpp

clean:
	rm -f *.o