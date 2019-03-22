#!/bin/bash
mkdir intoV60to63rangeNis200
./main4 5 100 60 63 2 494_bus.mtx >> intoV60to63rangeNis200/inner60to63result_simp_1000.txt
mkdir intoV60to63rangeNis400
./main4 5 200 60 63 2 494_bus.mtx >> intoV60to63rangeNis400/inner60to63result_simp_1000.txt
mkdir intoV60to63rangeNis600
./main4 5 300 60 63 2 494_bus.mtx >> intoV60to63rangeNis600/inner60to63result_simp_1000.txt
mkdir intoV60to63rangeNis800
./main4 5 400 60 63 2 494_bus.mtx >> intoV60to63rangeNis800/inner60to63result_simp_1000.txt