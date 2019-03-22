#!/bin/bash
mkdir intoH56to59rangeNis200
./main4 5 100 56 59 3 494_bus.mtx >> intoH56to59rangeNis200/inner56to59result_simp_1000.txt
mkdir intoH56to59rangeNis400
./main4 5 200 56 59 3 494_bus.mtx >> intoH56to59rangeNis400/inner56to59result_simp_1000.txt
mkdir intoH56to59rangeNis600
./main4 5 300 56 59 3 494_bus.mtx >> intoH56to59rangeNis600/inner56to59result_simp_1000.txt
mkdir intoH56to59rangeNis800
./main4 5 400 56 59 3 494_bus.mtx >> intoH56to59rangeNis800/inner56to59result_simp_1000.txt