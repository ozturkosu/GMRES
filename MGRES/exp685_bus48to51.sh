#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoX48to51rangeNis200
./main 5 100 48 51 5 685_bus.mtx>> intoX48to51rangeNis200/result_685_bus.txt
mkdir intoX48to51rangeNis400
./main 5 200 48 51 5 685_bus.mtx>> intoX48to51rangeNis400/result_685_bus.txt
mkdir intoX48to51rangeNis600
./main 5 300 48 51 5 685_bus.mtx>> intoX48to51rangeNis600/result_685_bus.txt
mkdir intoX48to51rangeNis800
./main 5 400 48 51 5 685_bus.mtx>> intoX48to51rangeNis800/result_685_bus.txt
mkdir intoY48to51rangeNis200
./main 5 100 48 51 4 685_bus.mtx>> intoY48to51rangeNis200/result_685_bus.txt
mkdir intoY60to63rangeNis400
./main 5 200 48 51 4 685_bus.mtx>> intoY48to51rangeNis400/result_685_bus.txt
mkdir intoY48to51rangeNis600
./main 5 300 48 51 4 685_bus.mtx>> intoY48to51rangeNis600/result_685_bus.txt
mkdir intoY48to51rangeNis800
./main 5 400 48 51 4 685_bus.mtx>> intoY48to51rangeNis800/result_685_bus.txt
mkdir intoH48to51rangeNis200
./main 5 100 48 51 3 685_bus.mtx >> intoH48to51rangeNis200/result_685_bus.txt
mkdir intoH48to51rangeNis400
./main 5 200 48 51 3 685_bus.mtx >> intoH48to51rangeNis400/result_685_bus.txt
mkdir intoH48to51rangeNis600
./main 5 300 48 51 3 685_bus.mtx >> intoH48to51rangeNis600/result_685_bus.txt
mkdir intoH48to51rangeNis800
./main 5 400 48 51 3 685_bus.mtx >> intoH48to51rangeNis800/result_685_bus.txt
mkdir intoV48to51rangeNis200
./main 5 100 48 51 2 685_bus.mtx >> intoV48to51rangeNis200/result_685_bus.txt
mkdir intoV48to51rangeNis400
./main 5 200 48 51 2 685_bus.mtx >> intoV48to51rangeNis400/result_685_bus.txt
mkdir intoV48to51rangeNis600
./main 5 300 48 51 2 685_bus.mtx >> intoV48to51rangeNis600/result_685_bus.txt
mkdir intoV48to51rangeNis800
./main 5 400 48 51 2 685_bus.mtx >> intoV48to51rangeNis800/result_685_bus.txt
mkdir intoS48to51rangeNis200
./main 5 100 48 51 1 685_bus.mtx >> intoS48to51rangeNis200/result_685_bus.txt
mkdir intoS48to51rangeNis400
./main 5 200 48 51 1 685_bus.mtx >> intoS48to51rangeNis400/result_685_bus.txt
mkdir intoS48to51rangeNis600
./main 5 300 48 51 1 685_bus.mtx >> intoS48to51rangeNis600/result_685_bus.txt
mkdir intoS48to51rangeNis800
./main 5 400 48 51 1 685_bus.mtx >> intoS48to51rangeNis800/result_685_bus.txt
mkdir intoR48to51rangeNis200
./main 5 100 48 51 0 685_bus.mtx >> intoR48to51rangeNis200/result_685_bus.txt
mkdir intoR48to51rangeNis400
./main 5 200 48 51 0 685_bus.mtx >> intoR48to51rangeNis400/result_685_bus.txt
mkdir intoR48to51rangeNis600
./main 5 300 48 51 0 685_bus.mtx >> intoR48to51rangeNis600/result_685_bus.txt
mkdir intoR48to51rangeNis800
./main 5 400 48 51 0 685_bus.mtx >> intoR48to51rangeNis800/result_685_bus.txt