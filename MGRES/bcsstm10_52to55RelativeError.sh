#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY52to55rangeNis200
./mainRelativeError 5 200 52 55 4 1000 bcsstm10.mtx>> intoY52to55rangeNis200/result_RelativeError_bcsstm10.txt
mkdir intoY52to55rangeNis400
./mainRelativeError 5 400 52 55 4 1000 bcsstm10.mtx>> intoY52to55rangeNis400/result_RelativeError_bcsstm10.txt
mkdir intoY52to55rangeNis600
./mainRelativeError 5 600 52 55 4 1000 bcsstm10.mtx>> intoY52to55rangeNis600/result_RelativeError_bcsstm10.txt
mkdir intoY52to55rangeNis800
./mainRelativeError 5 800 52 55 4 1000 bcsstm10.mtx>> intoY52to55rangeNis800/result_RelativeError_bcsstm10.txt
mkdir intoC52to55rangeNis200
./mainRelativeError 5 200 52 55 2 1000 bcsstm10.mtx >> intoC52to55rangeNis200/result_RelativeError_bcsstm10.txt
mkdir intoC52to55rangeNis400
./mainRelativeError 5 400 52 55 2 1000 bcsstm10.mtx >> intoC52to55rangeNis400/result_RelativeError_bcsstm10.txt
mkdir intoC52to55rangeNis600
./mainRelativeError 5 600 52 55 2 1000 bcsstm10.mtx >> intoC52to55rangeNis600/result_RelativeError_bcsstm10.txt
mkdir intoC52to55rangeNis800
./mainRelativeError 5 800 52 55 2 1000 bcsstm10.mtx >> intoC52to55rangeNis800/result_RelativeError_bcsstm10.txt
mkdir intoS52to55rangeNis200
./mainRelativeError 5 200 52 55 1 1000 bcsstm10.mtx >> intoS52to55rangeNis200/result_RelativeError_bcsstm10.txt
mkdir intoS52to55rangeNis400
./mainRelativeError 5 400 52 55 1 1000 bcsstm10.mtx >> intoS52to55rangeNis400/result_RelativeError_bcsstm10.txt
mkdir intoS52to55rangeNis600
./mainRelativeError 5 600 52 55 1 1000 bcsstm10.mtx >> intoS52to55rangeNis600/result_RelativeError_bcsstm10.txt
mkdir intoS52to55rangeNis800
./mainRelativeError 5 800 52 55 1 1000 bcsstm10.mtx >> intoS52to55rangeNis800/result_RelativeError_bcsstm10.txt
