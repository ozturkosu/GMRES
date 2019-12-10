#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY48to51rangeNis200
./main6 5 400 48 51 4 2000 blckhole.mtx>> intoY48to51rangeNis200/result_RelativeError_blckhole.txt
mkdir intoY48to51rangeNis400
./main6 5 800 48 51 4 2000 blckhole.mtx>> intoY48to51rangeNis400/result_RelativeError_blckhole.txt
mkdir intoY48to51rangeNis600
./main6 5 1200 48 51 4 2000 blckhole.mtx>> intoY48to51rangeNis600/result_RelativeError_blckhole.txt
mkdir intoY48to51rangeNis800
./main6 5 1600 48 51 4 2000 blckhole.mtx>> intoY48to51rangeNis800/result_RelativeError_blckhole.txt
mkdir intoC48to51rangeNis200
./main6 5 400 48 51 2 2000 blckhole.mtx >> intoC48to51rangeNis200/result_RelativeError_blckhole.txt
mkdir intoC48to51rangeNis400
./main6 5 800 48 51 2 2000 blckhole.mtx >> intoC48to51rangeNis400/result_RelativeError_blckhole.txt
mkdir intoC48to51rangeNis600
./main6 5 1200 48 51 2 2000 blckhole.mtx >> intoC48to51rangeNis600/result_RelativeError_blckhole.txt
mkdir intoC48to51rangeNis800
./main6 5 1600 48 51 2 2000 blckhole.mtx >> intoC48to51rangeNis800/result_RelativeError_blckhole.txt
mkdir intoS48to51rangeNis200
./main6 5 400 48 51 1 2000 blckhole.mtx >> intoS48to51rangeNis200/result_RelativeError_blckhole.txt
mkdir intoS48to51rangeNis400
./main6 5 800 48 51 1 2000 blckhole.mtx >> intoS48to51rangeNis400/result_RelativeError_blckhole.txt
mkdir intoS48to51rangeNis600
./main6 5 1200 48 51 1 2000 blckhole.mtx >> intoS48to51rangeNis600/result_RelativeError_blckhole.txt
mkdir intoS48to51rangeNis800
./main6 5 1600 48 51 1 2000 blckhole.mtx >> intoS48to51rangeNis800/result_RelativeError_blckhole.txt
