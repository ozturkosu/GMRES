#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY60to63rangeNis200
./main6 5 400 60 63 4 2000 blckhole.mtx>> intoY60to63rangeNis200/result_blckhole.txt
mkdir intoY60to63rangeNis400
./main6 5 800 60 63 4 2000 blckhole.mtx>> intoY60to63rangeNis400/result_blckhole.txt
mkdir intoY60to63rangeNis600
./main6 5 1200 60 63 4 2000 blckhole.mtx>> intoY60to63rangeNis600/result_blckhole.txt
mkdir intoY60to63rangeNis800
./main6 5 1600 60 63 4 2000 blckhole.mtx>> intoY60to63rangeNis800/result_blckhole.txt
mkdir intoC60to63rangeNis200
./main6 5 400 60 63 2 2000 blckhole.mtx >> intoC60to63rangeNis200/result_blckhole.txt
mkdir intoC60to63rangeNis400
./main6 5 800 60 63 2 2000 blckhole.mtx >> intoC60to63rangeNis400/result_blckhole.txt
mkdir intoC60to63rangeNis600
./main6 5 1200 60 63 2 2000 blckhole.mtx >> intoC60to63rangeNis600/result_blckhole.txt
mkdir intoC60to63rangeNis800
./main6 5 1600 60 63 2 2000 blckhole.mtx >> intoC60to63rangeNis800/result_blckhole.txt
mkdir intoS60to63rangeNis200
./main6 5 400 60 63 1 2000 blckhole.mtx >> intoS60to63rangeNis200/result_blckhole.txt
mkdir intoS60to63rangeNis400
./main6 5 800 60 63 1 2000 blckhole.mtx >> intoS60to63rangeNis400/result_blckhole.txt
mkdir intoS60to63rangeNis600
./main6 5 1200 60 63 1 2000 blckhole.mtx >> intoS60to63rangeNis600/result_blckhole.txt
mkdir intoS60to63rangeNis800
./main6 5 1600 60 63 1 2000 blckhole.mtx >> intoS60to63rangeNis800/result_blckhole.txt
