#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY60to63rangeNis200
./mainRelativeError 5 200 60 63 4 1000 bcsstm10.mtx>> intoY60to63rangeNis200/result_RelativeError_bcsstm10.txt
mkdir intoY60to63rangeNis400
./mainRelativeError 5 400 60 63 4 1000 bcsstm10.mtx>> intoY60to63rangeNis400/result_RelativeError_bcsstm10.txt
mkdir intoY60to63rangeNis600
./mainRelativeError 5 600 60 63 4 1000 bcsstm10.mtx>> intoY60to63rangeNis600/result_RelativeError_bcsstm10.txt
mkdir intoY60to63rangeNis800
./mainRelativeError 5 800 60 63 4 1000 bcsstm10.mtx>> intoY60to63rangeNis800/result_RelativeError_bcsstm10.txt
mkdir intoC60to63rangeNis200
./mainRelativeError 5 200 60 63 2 1000 bcsstm10.mtx >> intoC60to63rangeNis200/result_RelativeError_bcsstm10.txt
mkdir intoC60to63rangeNis400
./mainRelativeError 5 400 60 63 2 1000 bcsstm10.mtx >> intoC60to63rangeNis400/result_RelativeError_bcsstm10.txt
mkdir intoC60to63rangeNis600
./mainRelativeError 5 600 60 63 2 1000 bcsstm10.mtx >> intoC60to63rangeNis600/result_RelativeError_bcsstm10.txt
mkdir intoC60to63rangeNis800
./mainRelativeError 5 800 60 63 2 1000 bcsstm10.mtx >> intoC60to63rangeNis800/result_RelativeError_bcsstm10.txt
mkdir intoS60to63rangeNis200
./mainRelativeError 5 200 60 63 1 1000 bcsstm10.mtx >> intoS60to63rangeNis200/result_RelativeError_bcsstm10.txt
mkdir intoS60to63rangeNis400
./mainRelativeError 5 400 60 63 1 1000 bcsstm10.mtx >> intoS60to63rangeNis400/result_RelativeError_bcsstm10.txt
mkdir intoS60to63rangeNis600
./mainRelativeError 5 600 60 63 1 1000 bcsstm10.mtx >> intoS60to63rangeNis600/result_RelativeError_bcsstm10.txt
mkdir intoS60to63rangeNis800
./mainRelativeError 5 800 60 63 1 1000 bcsstm10.mtx >> intoS60to63rangeNis800/result_RelativeError_bcsstm10.txt
