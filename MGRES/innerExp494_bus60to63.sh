#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoX60to63rangeNis200
./main5 5 100 60 63 5 494_bus.mtx>> intoX60to63rangeNis200/inner60to63result_494_bus.txt
mkdir intoX60to63rangeNis400
./main5 5 200 60 63 5 494_bus.mtx>> intoX60to63rangeNis400/inner60to63result_494_bus.txt
mkdir intoX60to63rangeNis600
./main5 5 300 60 63 5 494_bus.mtx>> intoX60to63rangeNis600/inner60to63result_494_bus.txt
mkdir intoX60to63rangeNis800
./main5 5 400 60 63 5 494_bus.mtx>> intoX60to63rangeNis800/inner60to63result_494_bus.txt
mkdir intoY60to63rangeNis200
./main5 5 100 60 63 4 494_bus.mtx>> intoY60to63rangeNis200/inner60to63result_494_bus.txt
mkdir intoY60to63rangeNis400
./main5 5 200 60 63 4 494_bus.mtx>> intoY60to63rangeNis400/inner60to63result_494_bus.txt
mkdir intoY60to63rangeNis600
./main5 5 300 60 63 4 494_bus.mtx>> intoY60to63rangeNis600/inner60to63result_494_bus.txt
mkdir intoY60to63rangeNis800
./main5 5 400 60 63 4 494_bus.mtx>> intoY60to63rangeNis800/inner60to63result_494_bus.txt
mkdir intoH60to63rangeNis200
./main5 5 100 60 63 3 494_bus.mtx >> intoH60to63rangeNis200/inner60to63result_494_bus.txt
mkdir intoH60to63rangeNis400
./main5 5 200 60 63 3 494_bus.mtx >> intoH60to63rangeNis400/inner60to63result_494_bus.txt
mkdir intoH60to63rangeNis600
./main5 5 300 60 63 3 494_bus.mtx >> intoH60to63rangeNis600/inner60to63result_494_bus.txt
mkdir intoH60to63rangeNis800
./main5 5 400 60 63 3 494_bus.mtx >> intoH60to63rangeNis800/inner60to63result_494_bus.txt
mkdir intoV60to63rangeNis200
./main5 5 100 60 63 2 494_bus.mtx >> intoV60to63rangeNis200/inner60to63result_494_bus.txt
mkdir intoV60to63rangeNis400
./main5 5 200 60 63 2 494_bus.mtx >> intoV60to63rangeNis400/inner60to63result_494_bus.txt
mkdir intoV60to63rangeNis600
./main5 5 300 60 63 2 494_bus.mtx >> intoV60to63rangeNis600/inner60to63result_494_bus.txt
mkdir intoV60to63rangeNis800
./main5 5 400 60 63 2 494_bus.mtx >> intoV60to63rangeNis800/inner60to63result_494_bus.txt
mkdir intoS60to63rangeNis200
./main5 5 100 60 63 1 494_bus.mtx >> intoS60to63rangeNis200/inner60to63result_494_bus.txt
mkdir intoS60to63rangeNis400
./main5 5 200 60 63 1 494_bus.mtx >> intoS60to63rangeNis400/inner60to63result_494_bus.txt
mkdir intoS60to63rangeNis600
./main5 5 300 60 63 1 494_bus.mtx >> intoS60to63rangeNis600/inner60to63result_494_bus.txt
mkdir intoS60to63rangeNis800
./main5 5 400 60 63 1 494_bus.mtx >> intoS60to63rangeNis800/inner60to63result_494_bus.txt
mkdir intoR60to63rangeNis200
./main5 5 100 60 63  0 494_bus.mtx >> intoR60to63rangeNis200/inner60to63result_494_bus.txt
mkdir intoR60to63rangeNis400
./main5 5 200 60 63 0 494_bus.mtx >> intoR60to63rangeNis400/inner60to63result_494_bus.txt
mkdir intoR60to63rangeNis600
./main5 5 300 60 63 0 494_bus.mtx >> intoR60to63rangeNis600/inner60to63result_494_bus.txt
mkdir intoR60to63rangeNis800
./main5 5 400 60 63 0 494_bus.mtx >> intoR60to63rangeNis800/inner60to63result_494_bus.txt