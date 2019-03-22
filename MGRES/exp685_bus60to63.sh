#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoX60to63rangeNis200
./main 5 100 60 63 5 685_bus.mtx>> intoX60to63rangeNis200/result_685_bus.txt
mkdir intoX60to63rangeNis400
./main 5 200 60 63 5 685_bus.mtx>> intoX60to63rangeNis400/result_685_bus.txt
mkdir intoX60to63rangeNis600
./main 5 300 60 63 5 685_bus.mtx>> intoX60to63rangeNis600/result_685_bus.txt
mkdir intoX60to63rangeNis800
./main 5 400 60 63 5 685_bus.mtx>> intoX60to63rangeNis800/result_685_bus.txt
mkdir intoY60to63rangeNis200
./main 5 100 60 63 4 685_bus.mtx>> intoY60to63rangeNis200/result_685_bus.txt
mkdir intoY60to63rangeNis400
./main 5 200 60 63 4 685_bus.mtx>> intoY60to63rangeNis400/result_685_bus.txt
mkdir intoY60to63rangeNis600
./main 5 300 60 63 4 685_bus.mtx>> intoY60to63rangeNis600/result_685_bus.txt
mkdir intoY60to63rangeNis800
./main 5 400 60 63 4 685_bus.mtx>> intoY60to63rangeNis800/result_685_bus.txt
mkdir intoH60to63rangeNis200
./main 5 100 60 63 3 685_bus.mtx >> intoH60to63rangeNis200/result_685_bus.txt
mkdir intoH60to63rangeNis400
./main 5 200 60 63 3 685_bus.mtx >> intoH60to63rangeNis400/result_685_bus.txt
mkdir intoH60to63rangeNis600
./main 5 300 60 63 3 685_bus.mtx >> intoH60to63rangeNis600/result_685_bus.txt
mkdir intoH60to63rangeNis800
./main 5 400 60 63 3 685_bus.mtx >> intoH60to63rangeNis800/result_685_bus.txt
mkdir intoV60to63rangeNis200
./main 5 100 60 63 2 685_bus.mtx >> intoV60to63rangeNis200/result_685_bus.txt
mkdir intoV60to63rangeNis400
./main 5 200 60 63 2 685_bus.mtx >> intoV60to63rangeNis400/result_685_bus.txt
mkdir intoV60to63rangeNis600
./main 5 300 60 63 2 685_bus.mtx >> intoV60to63rangeNis600/result_685_bus.txt
mkdir intoV60to63rangeNis800
./main 5 400 60 63 2 685_bus.mtx >> intoV60to63rangeNis800/result_685_bus.txt
mkdir intoS60to63rangeNis200
./main 5 100 60 63 1 685_bus.mtx >> intoS60to63rangeNis200/result_685_bus.txt
mkdir intoS60to63rangeNis400
./main 5 200 60 63 1 685_bus.mtx >> intoS60to63rangeNis400/result_685_bus.txt
mkdir intoS60to63rangeNis600
./main 5 300 60 63 1 685_bus.mtx >> intoS60to63rangeNis600/result_685_bus.txt
mkdir intoS60to63rangeNis800
./main 5 400 60 63 1 685_bus.mtx >> intoS60to63rangeNis800/result_685_bus.txt
mkdir intoR60to63rangeNis200
./main 5 100 60 63 0 685_bus.mtx >> intoR60to63rangeNis200/result_685_bus.txt
mkdir intoR60to63rangeNis400
./main 5 200 60 63 0 685_bus.mtx >> intoR60to63rangeNis400/result_685_bus.txt
mkdir intoR60to63rangeNis600
./main 5 300 60 63 0 685_bus.mtx >> intoR60to63rangeNis600/result_685_bus.txt
mkdir intoR60to63rangeNis800
./main 5 400 60 63 0 685_bus.mtx >> intoR60to63rangeNis800/result_685_bus.txt