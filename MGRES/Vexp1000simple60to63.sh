#!/bin/bash
mkdir intoV60to63rangeNis200
./main3 5 60 60 63 2 494_bus.mtx >> intoV60to63rangeNis200/60to63result_simp_1000.txt
mkdir intoV60to63rangeNis400
./main3 5 120 60 63 2 494_bus.mtx >> intoV60to63rangeNis400/60to63result_simp_1000.txt
mkdir intoV60to63rangeNis600
./main3 5 180 60 63 2 494_bus.mtx >> intoV60to63rangeNis600/60to63result_simp_1000.txt
mkdir intoV60to63rangeNis800
./main3 5 240 60 63 2 494_bus.mtx >> intoV60to63rangeNis800/60to63result_simp_1000.txt