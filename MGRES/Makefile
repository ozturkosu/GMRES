LIBPATH=$(HOME)/codes/CG

all: main5

mgmres.o: mgmres.cpp mgmres.hpp
	g++ -c -I/$(LIBPATH) mgmres.cpp
	#mpic++ -c -I/$(LIBPATH) cg_lib.cpp
	#mv cg_lib.o $(LIBPATH)/cg_lib.o

mgmres_prb.o: mgmres_prb.cpp
	g++ -c -I/$(LIBPATH) mgmres_prb.cpp
	#mpic++ -c -I/$(LIBPATH) main.cpp
	#mv main.o $(LIBPATH)/main.o

main5: mgmres.o mgmres_prb.o
	#g++ main.o $(LIBPATH)/cg_lib.o -lm -o main
	g++ mgmres.o mgmres_prb.o -lm -o main5
	#mpic++ main.o cg_lib.o -lm -o main

clean:
	rm *.o
	rm main5
