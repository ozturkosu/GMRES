#!/bin/bash
mkdir intoH60to63rangeNis200
./main3 5 60 60 63 3 494_bus.mtx >> intoH60to63rangeNis200/60to63result_simp_1000.txt
mkdir intoH60to63rangeNis400
./main3 5 120 60 63 3 494_bus.mtx >> intoH60to63rangeNis400/60to63result_simp_1000.txt
mkdir intoH60to63rangeNis600
./main3 5 180 60 63 3 494_bus.mtx >> intoH60to63rangeNis600/60to63result_simp_1000.txt
mkdir intoH60to63rangeNis800
./main3 5 240 60 63 3 494_bus.mtx >> intoH60to63rangeNis800/60to63result_simp_1000.txt