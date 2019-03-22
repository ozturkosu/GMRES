#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoX52to55rangeNis200
./main 5 100 52 55 5 685_bus.mtx>> intoX52to55rangeNis200/result_685_bus.txt
mkdir intoX52to55rangeNis400
./main 5 200 52 55 5 685_bus.mtx>> intoX52to55rangeNis400/result_685_bus.txt
mkdir intoX52to55rangeNis600
./main 5 300 52 55 5 685_bus.mtx>> intoX52to55rangeNis600/result_685_bus.txt
mkdir intoX52to55rangeNis800
./main 5 400 52 55 5 685_bus.mtx>> intoX52to55rangeNis800/result_685_bus.txt
mkdir intoY52to55rangeNis200
./main 5 100 52 55 4 685_bus.mtx>> intoY52to55rangeNis200/result_685_bus.txt
mkdir intoY60to63rangeNis400
./main 5 200 52 55 4 685_bus.mtx>> intoY52to55rangeNis400/result_685_bus.txt
mkdir intoY52to55rangeNis600
./main 5 300 52 55 4 685_bus.mtx>> intoY52to55rangeNis600/result_685_bus.txt
mkdir intoY52to55rangeNis800
./main 5 400 52 55 4 685_bus.mtx>> intoY52to55rangeNis800/result_685_bus.txt
mkdir intoH52to55rangeNis200
./main 5 100 52 55 3 685_bus.mtx >> intoH52to55rangeNis200/result_685_bus.txt
mkdir intoH52to55rangeNis400
./main 5 200 52 55 3 685_bus.mtx >> intoH52to55rangeNis400/result_685_bus.txt
mkdir intoH52to55rangeNis600
./main 5 300 52 55 3 685_bus.mtx >> intoH52to55rangeNis600/result_685_bus.txt
mkdir intoH52to55rangeNis800
./main 5 400 52 55 3 685_bus.mtx >> intoH52to55rangeNis800/result_685_bus.txt
mkdir intoV52to55rangeNis200
./main 5 100 52 55 2 685_bus.mtx >> intoV52to55rangeNis200/result_685_bus.txt
mkdir intoV52to55rangeNis400
./main 5 200 52 55 2 685_bus.mtx >> intoV52to55rangeNis400/result_685_bus.txt
mkdir intoV52to55rangeNis600
./main 5 300 52 55 2 685_bus.mtx >> intoV52to55rangeNis600/result_685_bus.txt
mkdir intoV52to55rangeNis800
./main 5 400 52 55 2 685_bus.mtx >> intoV52to55rangeNis800/result_685_bus.txt
mkdir intoS52to55rangeNis200
./main 5 100 52 55 1 685_bus.mtx >> intoS52to55rangeNis200/result_685_bus.txt
mkdir intoS52to55rangeNis400
./main 5 200 52 55 1 685_bus.mtx >> intoS52to55rangeNis400/result_685_bus.txt
mkdir intoS52to55rangeNis600
./main 5 300 52 55 1 685_bus.mtx >> intoS52to55rangeNis600/result_685_bus.txt
mkdir intoS52to55rangeNis800
./main 5 400 52 55 1 685_bus.mtx >> intoS52to55rangeNis800/result_685_bus.txt
mkdir intoR52to55rangeNis200
./main 5 100 52 55 0 685_bus.mtx >> intoR52to55rangeNis200/result_685_bus.txt
mkdir intoR52to55rangeNis400
./main 5 200 52 55 0 685_bus.mtx >> intoR52to55rangeNis400/result_685_bus.txt
mkdir intoR52to55rangeNis600
./main 5 300 52 55 0 685_bus.mtx >> intoR52to55rangeNis600/result_685_bus.txt
mkdir intoR52to55rangeNis800
./main 5 400 52 55 0 685_bus.mtx >> intoR52to55rangeNis800/result_685_bus.txt