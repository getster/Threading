
CC=g++
FLAGS=--std=c++0x -lpthread

SRC_HELLOWORLD=helloworld.cpp
SRC_SHARING=sharing.cpp
SRC_BARE=bare.cpp
SRC_WAITING=waiting.cpp

all: helloworld sharing bare waiting

helloworld:$(SRC_HELLOWORLD)
	$(CC) $? -o $@ $(FLAGS)


sharing:$(SRC_SHARING)
	$(CC) $? -o $@ $(FLAGS)

waiting:$(SRC_WAITING)
	$(CC) $? -o $@ $(FLAGS)

bare:$(SRC_BARE)
	$(CC) $? -o $@ $(FLAGS)


clean:
	rm -f helloworld sharing *.o
