LIBPATH=$(HOME)/codes/CG

all: mainRelativeError

mgmres.o: mgmres.cpp mgmres.hpp
	g++ -c -I/$(LIBPATH) mgmres.cpp
	#mpic++ -c -I/$(LIBPATH) cg_lib.cpp
	#mv cg_lib.o $(LIBPATH)/cg_lib.o

mgmres_prb.o: mgmres_prb.cpp
	g++ -c -I/$(LIBPATH) mgmres_prb.cpp
	#mpic++ -c -I/$(LIBPATH) main.cpp
	#mv main.o $(LIBPATH)/main.o

mainRelativeError: mgmres.o mgmres_prb.o
	#g++ main.o $(LIBPATH)/cg_lib.o -lm -o main
	g++ mgmres.o mgmres_prb.o -lm -o mainRelativeError
	#mpic++ main.o cg_lib.o -lm -o main

clean:
	rm *.o
	rm mainRelativeError
