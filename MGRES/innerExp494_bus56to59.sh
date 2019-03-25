#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoX56to59rangeNis200
./main5 5 100 56 59 5 494_bus.mtx>> intoX56to59rangeNis200/inner56to59result_494_bus.txt
mkdir intoX56to59rangeNis400
./main5 5 200 56 59 5 494_bus.mtx>> intoX56to59rangeNis400/inner56to59result_494_bus.txt
mkdir intoX56to59rangeNis600
./main5 5 300 56 59 5 494_bus.mtx>> intoX56to59rangeNis600/inner56to59result_494_bus.txt
mkdir intoX56to59rangeNis800
./main5 5 400 56 59 5 494_bus.mtx>> intoX56to59rangeNis800/inner56to59result_494_bus.txt
mkdir intoY56to59rangeNis200
./main5 5 100 56 59 4 494_bus.mtx>> intoY56to59rangeNis200/inner56to59result_494_bus.txt
mkdir intoY56to59rangeNis400
./main5 5 200 56 59 4 494_bus.mtx>> intoY56to59rangeNis400/inner56to59result_494_bus.txt
mkdir intoY56to59rangeNis600
./main5 5 300 56 59 4 494_bus.mtx>> intoY56to59rangeNis600/inner56to59result_494_bus.txt
mkdir intoY56to59rangeNis800
./main5 5 400 56 59 4 494_bus.mtx>> intoY56to59rangeNis800/inner56to59result_494_bus.txt
mkdir intoH56to59rangeNis200
./main5 5 100 56 59 3 494_bus.mtx >> intoH56to59rangeNis200/inner56to59result_494_bus.txt
mkdir intoH56to59rangeNis400
./main5 5 200 56 59 3 494_bus.mtx >> intoH56to59rangeNis400/inner56to59result_494_bus.txt
mkdir intoH56to59rangeNis600
./main5 5 300 56 59 3 494_bus.mtx >> intoH56to59rangeNis600/inner56to59result_494_bus.txt
mkdir intoH56to59rangeNis800
./main5 5 400 56 59 3 494_bus.mtx >> intoH56to59rangeNis800/inner56to59result_494_bus.txt
mkdir intoV56to59rangeNis200
./main5 5 100 56 59 2 494_bus.mtx >> intoV56to59rangeNis200/inner56to59result_494_bus.txt
mkdir intoV56to59rangeNis400
./main5 5 200 56 59 2 494_bus.mtx >> intoV56to59rangeNis400/inner56to59result_494_bus.txt
mkdir intoV56to59rangeNis600
./main5 5 300 56 59 2 494_bus.mtx >> intoV56to59rangeNis600/inner56to59result_494_bus.txt
mkdir intoV56to59rangeNis800
./main5 5 400 56 59 2 494_bus.mtx >> intoV56to59rangeNis800/inner56to59result_494_bus.txt
mkdir intoS56to59rangeNis200
./main5 5 100 56 59 1 494_bus.mtx >> intoS56to59rangeNis200/inner56to59result_494_bus.txt
mkdir intoS56to59rangeNis400
./main5 5 200 56 59 1 494_bus.mtx >> intoS56to59rangeNis400/inner56to59result_494_bus.txt
mkdir intoS56to59rangeNis600
./main5 5 300 56 59 1 494_bus.mtx >> intoS56to59rangeNis600/inner56to59result_494_bus.txt
mkdir intoS56to59rangeNis800
./main5 5 400 56 59 1 494_bus.mtx >> intoS56to59rangeNis800/inner56to59result_494_bus.txt
mkdir intoR56to59rangeNis200
./main5 5 100 56 59  0 494_bus.mtx >> intoR56to59rangeNis200/inner56to59result_494_bus.txt
mkdir intoR56to59rangeNis400
./main5 5 200 56 59 0 494_bus.mtx >> intoR56to59rangeNis400/inner56to59result_494_bus.txt
mkdir intoR56to59rangeNis600
./main5 5 300 56 59 0 494_bus.mtx >> intoR56to59rangeNis600/inner56to59result_494_bus.txt
mkdir intoR56to59rangeNis800
./main5 5 400 56 59 0 494_bus.mtx >> intoR56to59rangeNis800/inner56to59result_494_bus.txt