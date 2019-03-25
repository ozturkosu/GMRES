#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoX48to51rangeNis200
./main5 5 100 48 51 5 494_bus.mtx>> intoX48to51rangeNis200/inner48to51result_494_bus.txt
mkdir intoX48to51rangeNis400
./main5 5 200 48 51 5 494_bus.mtx>> intoX48to51rangeNis400/inner48to51result_494_bus.txt
mkdir intoX48to51rangeNis600
./main5 5 300 48 51 5 494_bus.mtx>> intoX48to51rangeNis600/inner48to51result_494_bus.txt
mkdir intoX48to51rangeNis800
./main5 5 400 48 51 5 494_bus.mtx>> intoX48to51rangeNis800/inner48to51result_494_bus.txt
mkdir intoY48to51rangeNis200
./main5 5 100 48 51 4 494_bus.mtx>> intoY48to51rangeNis200/inner48to51result_494_bus.txt
mkdir intoY60to63rangeNis400
./main5 5 200 48 51 4 494_bus.mtx>> intoY48to51rangeNis400/inner48to51result_494_bus.txt
mkdir intoY48to51rangeNis600
./main5 5 300 48 51 4 494_bus.mtx>> intoY48to51rangeNis600/inner48to51result_494_bus.txt
mkdir intoY48to51rangeNis800
./main5 5 400 48 51 4 494_bus.mtx>> intoY48to51rangeNis800/inner48to51result_494_bus.txt
mkdir intoH48to51rangeNis200
./main5 5 100 48 51 3 494_bus.mtx >> intoH48to51rangeNis200/inner48to51result_494_bus.txt
mkdir intoH48to51rangeNis400
./main5 5 200 48 51 3 494_bus.mtx >> intoH48to51rangeNis400/inner48to51result_494_bus.txt
mkdir intoH48to51rangeNis600
./main5 5 300 48 51 3 494_bus.mtx >> intoH48to51rangeNis600/inner48to51result_494_bus.txt
mkdir intoH48to51rangeNis800
./main5 5 400 48 51 3 494_bus.mtx >> intoH48to51rangeNis800/inner48to51result_494_bus.txt
mkdir intoV48to51rangeNis200
./main5 5 100 48 51 2 494_bus.mtx >> intoV48to51rangeNis200/inner48to51result_494_bus.txt
mkdir intoV48to51rangeNis400
./main5 5 200 48 51 2 494_bus.mtx >> intoV48to51rangeNis400/inner48to51result_494_bus.txt
mkdir intoV48to51rangeNis600
./main5 5 300 48 51 2 494_bus.mtx >> intoV48to51rangeNis600/inner48to51result_494_bus.txt
mkdir intoV48to51rangeNis800
./main5 5 400 48 51 2 494_bus.mtx >> intoV48to51rangeNis800/inner48to51result_494_bus.txt
mkdir intoS48to51rangeNis200
./main5 5 100 48 51 1 494_bus.mtx >> intoS48to51rangeNis200/inner48to51result_494_bus.txt
mkdir intoS48to51rangeNis400
./main5 5 200 48 51 1 494_bus.mtx >> intoS48to51rangeNis400/inner48to51result_494_bus.txt
mkdir intoS48to51rangeNis600
./main5 5 300 48 51 1 494_bus.mtx >> intoS48to51rangeNis600/inner48to51result_494_bus.txt
mkdir intoS48to51rangeNis800
./main5 5 400 48 51 1 494_bus.mtx >> intoS48to51rangeNis800/inner48to51result_494_bus.txt
mkdir intoR48to51rangeNis200
./main5 5 100 48 51 0 494_bus.mtx >> intoR48to51rangeNis200/inner48to51result_494_bus.txt
mkdir intoR48to51rangeNis400
./main5 5 200 48 51 0 494_bus.mtx >> intoR48to51rangeNis400/inner48to51result_494_bus.txt
mkdir intoR48to51rangeNis600
./main5 5 300 48 51 0 494_bus.mtx >> intoR48to51rangeNis600/inner48to51result_494_bus.txt
mkdir intoR48to51rangeNis800
./main5 5 400 48 51 0 494_bus.mtx >> intoR48to51rangeNis800/inner48to51result_494_bus.txt