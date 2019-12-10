#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY56to59rangeNis200
./main6 5 400 56 59 4 2000 blckhole.mtx>> intoY56to59rangeNis200/result_blckhole.txt
mkdir intoY56to59rangeNis400
./main6 5 800 56 59 4 2000 blckhole.mtx>> intoY56to59rangeNis400/result_blckhole.txt
mkdir intoY56to59rangeNis600
./main6 5 1200 56 59 4 2000 blckhole.mtx>> intoY56to59rangeNis600/result_blckhole.txt
mkdir intoY56to59rangeNis800
./main6 5 1600 56 59 4 2000 blckhole.mtx>> intoY56to59rangeNis800/result_blckhole.txt
mkdir intoC56to59rangeNis200
./main6 5 400 56 59 2 2000 blckhole.mtx >> intoC56to59rangeNis200/result_blckhole.txt
mkdir intoC56to59rangeNis400
./main6 5 800 56 59 2 2000 blckhole.mtx >> intoC56to59rangeNis400/result_blckhole.txt
mkdir intoC56to59rangeNis600
./main6 5 1200 56 59 2 2000 blckhole.mtx >> intoC56to59rangeNis600/result_blckhole.txt
mkdir intoC56to59rangeNis800
./main6 5 1600 56 59 2 2000 blckhole.mtx >> intoC56to59rangeNis800/result_blckhole.txt
mkdir intoS56to59rangeNis200
./main6 5 400 56 59 1 2000 blckhole.mtx >> intoS56to59rangeNis200/result_blckhole.txt
mkdir intoS56to59rangeNis400
./main6 5 800 56 59 1 2000 blckhole.mtx >> intoS56to59rangeNis400/result_blckhole.txt
mkdir intoS56to59rangeNis600
./main6 5 1200 56 59 1 2000 blckhole.mtx >> intoS56to59rangeNis600/result_blckhole.txt
mkdir intoS56to59rangeNis800
./main6 5 1600 56 59 1 2000 blckhole.mtx >> intoS56to59rangeNis800/result_blckhole.txt
