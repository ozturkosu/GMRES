#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoV60to63rangeNis200
./main 5 100 60 63 6 400 bcspwr05.mtx>> intoV60to63rangeNis200/result_bcspwr05.txt
mkdir intoV60to63rangeNis400
./main 5 200 60 63 6 400 bcspwr05.mtx>> intoV60to63rangeNis400/result_bcspwr05.txt
mkdir intoV60to63rangeNis600
./main 5 300 60 63 6 400 bcspwr05.mtx>> intoV60to63rangeNis600/result_bcspwr05.txt
mkdir intoV60to63rangeNis800
./main 5 400 60 63 6 400 bcspwr05.mtx>> intoV60to63rangeNis800/result_bcspwr05.txt
mkdir intoX60to63rangeNis200
./main 5 100 60 63 5 400 bcspwr05.mtx>> intoX60to63rangeNis200/result_bcspwr05.txt
mkdir intoX60to63rangeNis400
./main 5 200 60 63 5 400 bcspwr05.mtx>> intoX60to63rangeNis400/result_bcspwr05.txt
mkdir intoX60to63rangeNis600
./main 5 300 60 63 5 400 bcspwr05.mtx>> intoX60to63rangeNis600/result_bcspwr05.txt
mkdir intoX60to63rangeNis800
./main 5 400 60 63 5 400 bcspwr05.mtx>> intoX60to63rangeNis800/result_bcspwr05.txt
mkdir intoY60to63rangeNis200
./main 5 100 60 63 4 400 bcspwr05.mtx>> intoY60to63rangeNis200/result_bcspwr05.txt
mkdir intoY60to63rangeNis400
./main 5 200 60 63 4 400 bcspwr05.mtx>> intoY60to63rangeNis400/result_bcspwr05.txt
mkdir intoY60to63rangeNis600
./main 5 300 60 63 4 400 bcspwr05.mtx>> intoY60to63rangeNis600/result_bcspwr05.txt
mkdir intoY60to63rangeNis800
./main 5 400 60 63 4 400 bcspwr05.mtx>> intoY60to63rangeNis800/result_bcspwr05.txt
mkdir intoH60to63rangeNis200
./main 5 100 60 63 3 400 bcspwr05.mtx >> intoH60to63rangeNis200/result_bcspwr05.txt
mkdir intoH60to63rangeNis400
./main 5 200 60 63 3 400 bcspwr05.mtx >> intoH60to63rangeNis400/result_bcspwr05.txt
mkdir intoH60to63rangeNis600
./main 5 300 60 63 3 400 bcspwr05.mtx >> intoH60to63rangeNis600/result_bcspwr05.txt
mkdir intoH60to63rangeNis800
./main 5 400 60 63 3 400 bcspwr05.mtx >> intoH60to63rangeNis800/result_bcspwr05.txt
mkdir intoC60to63rangeNis200
./main 5 100 60 63 2 400 bcspwr05.mtx >> intoC60to63rangeNis200/result_bcspwr05.txt
mkdir intoC60to63rangeNis400
./main 5 200 60 63 2 400 bcspwr05.mtx >> intoC60to63rangeNis400/result_bcspwr05.txt
mkdir intoC60to63rangeNis600
./main 5 300 60 63 2 400 bcspwr05.mtx >> intoC60to63rangeNis600/result_bcspwr05.txt
mkdir intoC60to63rangeNis800
./main 5 400 60 63 2 400 bcspwr05.mtx >> intoC60to63rangeNis800/result_bcspwr05.txt
mkdir intoS60to63rangeNis200
./main 5 100 60 63 1 400 bcspwr05.mtx >> intoS60to63rangeNis200/result_bcspwr05.txt
mkdir intoS60to63rangeNis400
./main 5 200 60 63 1 400 bcspwr05.mtx >> intoS60to63rangeNis400/result_bcspwr05.txt
mkdir intoS60to63rangeNis600
./main 5 300 60 63 1 400 bcspwr05.mtx >> intoS60to63rangeNis600/result_bcspwr05.txt
mkdir intoS60to63rangeNis800
./main 5 400 60 63 1 400 bcspwr05.mtx >> intoS60to63rangeNis800/result_bcspwr05.txt
mkdir intoR60to63rangeNis200
./main 5 100 60 63 0 400 bcspwr05.mtx >> intoR60to63rangeNis200/result_bcspwr05.txt
mkdir intoR60to63rangeNis400
./main 5 200 60 63 0 400 bcspwr05.mtx >> intoR60to63rangeNis400/result_bcspwr05.txt
mkdir intoR60to63rangeNis600
./main 5 300 60 63 0 400 bcspwr05.mtx >> intoR60to63rangeNis600/result_bcspwr05.txt
mkdir intoR60to63rangeNis800
./main 5 400 60 63 0 400 bcspwr05.mtx >> intoR60to63rangeNis800/result_bcspwr05.txt