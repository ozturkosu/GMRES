#!/bin/bash
mkdir intoS60to63rangeNis200
./main4 5 100 60 63 1 494_bus.mtx >> intoS60to63rangeNis200/inner60to63result_simp_1000.txt
mkdir intoS60to63rangeNis400
./main4 5 200 60 63 1 494_bus.mtx >> intoS60to63rangeNis400/inner60to63result_simp_1000.txt
mkdir intoS60to63rangeNis600
./main4 5 300 60 63 1 494_bus.mtx >> intoS60to63rangeNis600/inner60to63result_simp_1000.txt
mkdir intoS60to63rangeNis800
./main4 5 400 60 63 1 494_bus.mtx >> intoS60to63rangeNis800/inner60to63result_simp_1000.txt