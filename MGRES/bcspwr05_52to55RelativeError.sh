#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY52to55rangeNis200
./mainRelativeError 5 100 52 55 4 400 bcspwr05.mtx>> intoY52to55rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoY52to55rangeNis400
./mainRelativeError 5 200 52 55 4 400 bcspwr05.mtx>> intoY52to55rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoY52to55rangeNis600
./mainRelativeError 5 300 52 55 4 400 bcspwr05.mtx>> intoY52to55rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoY52to55rangeNis800
./mainRelativeError 5 400 52 55 4 400 bcspwr05.mtx>> intoY52to55rangeNis800/result_RelativeError_bcspwr05.txt
mkdir intoC52to55rangeNis200
./mainRelativeError 5 100 52 55 2 400 bcspwr05.mtx >> intoC52to55rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoC52to55rangeNis400
./mainRelativeError 5 200 52 55 2 400 bcspwr05.mtx >> intoC52to55rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoC52to55rangeNis600
./mainRelativeError 5 300 52 55 2 400 bcspwr05.mtx >> intoC52to55rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoC52to55rangeNis800
./mainRelativeError 5 400 52 55 2 400 bcspwr05.mtx >> intoC52to55rangeNis800/result_RelativeError_bcspwr05.txt
mkdir intoS52to55rangeNis200
./mainRelativeError 5 100 52 55 1 400 bcspwr05.mtx >> intoS52to55rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoS52to55rangeNis400
./mainRelativeError 5 200 52 55 1 400 bcspwr05.mtx >> intoS52to55rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoS52to55rangeNis600
./mainRelativeError 5 300 52 55 1 400 bcspwr05.mtx >> intoS52to55rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoS52to55rangeNis800
./mainRelativeError 5 400 52 55 1 400 bcspwr05.mtx >> intoS52to55rangeNis800/result_RelativeError_bcspwr05.txt
