#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY52to55rangeNis200
./main6 5 400 52 55 4 2000 blckhole.mtx>> intoY52to55rangeNis200/result_RelativeError_blckhole.txt
mkdir intoY52to55rangeNis400
./main6 5 800 52 55 4 2000 blckhole.mtx>> intoY52to55rangeNis400/result_RelativeError_blckhole.txt
mkdir intoY52to55rangeNis600
./main6 5 1200 52 55 4 2000 blckhole.mtx>> intoY52to55rangeNis600/result_RelativeError_blckhole.txt
mkdir intoY52to55rangeNis800
./main6 5 1600 52 55 4 2000 blckhole.mtx>> intoY52to55rangeNis800/result_RelativeError_blckhole.txt
mkdir intoC52to55rangeNis200
./main6 5 400 52 55 2 2000 blckhole.mtx >> intoC52to55rangeNis200/result_RelativeError_blckhole.txt
mkdir intoC52to55rangeNis400
./main6 5 800 52 55 2 2000 blckhole.mtx >> intoC52to55rangeNis400/result_RelativeError_blckhole.txt
mkdir intoC52to55rangeNis600
./main6 5 1200 52 55 2 2000 blckhole.mtx >> intoC52to55rangeNis600/result_RelativeError_blckhole.txt
mkdir intoC52to55rangeNis800
./main6 5 1600 52 55 2 2000 blckhole.mtx >> intoC52to55rangeNis800/result_RelativeError_blckhole.txt
mkdir intoS52to55rangeNis200
./main6 5 400 52 55 1 2000 blckhole.mtx >> intoS52to55rangeNis200/result_RelativeError_blckhole.txt
mkdir intoS52to55rangeNis400
./main6 5 800 52 55 1 2000 blckhole.mtx >> intoS52to55rangeNis400/result_RelativeError_blckhole.txt
mkdir intoS52to55rangeNis600
./main6 5 1200 52 55 1 2000 blckhole.mtx >> intoS52to55rangeNis600/result_RelativeError_blckhole.txt
mkdir intoS52to55rangeNis800
./main6 5 1600 52 55 1 2000 blckhole.mtx >> intoS52to55rangeNis800/result_RelativeError_blckhole.txt
