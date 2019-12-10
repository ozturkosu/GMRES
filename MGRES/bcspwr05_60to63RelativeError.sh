#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY60to63rangeNis200
./mainRelativeError 5 100 60 63 4 400 bcspwr05.mtx>> intoY60to63rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoY60to63rangeNis400
./mainRelativeError 5 200 60 63 4 400 bcspwr05.mtx>> intoY60to63rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoY60to63rangeNis600
./mainRelativeError 5 300 60 63 4 400 bcspwr05.mtx>> intoY60to63rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoY60to63rangeNis800
./mainRelativeError 5 400 60 63 4 400 bcspwr05.mtx>> intoY60to63rangeNis800/result_RelativeError_bcspwr05.txt
mkdir intoC60to63rangeNis200
./mainRelativeError 5 100 60 63 2 400 bcspwr05.mtx >> intoC60to63rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoC60to63rangeNis400
./mainRelativeError 5 200 60 63 2 400 bcspwr05.mtx >> intoC60to63rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoC60to63rangeNis600
./mainRelativeError 5 300 60 63 2 400 bcspwr05.mtx >> intoC60to63rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoC60to63rangeNis800
./mainRelativeError 5 400 60 63 2 400 bcspwr05.mtx >> intoC60to63rangeNis800/result_RelativeError_bcspwr05.txt
mkdir intoS60to63rangeNis200
./mainRelativeError 5 100 60 63 1 400 bcspwr05.mtx >> intoS60to63rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoS60to63rangeNis400
./mainRelativeError 5 200 60 63 1 400 bcspwr05.mtx >> intoS60to63rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoS60to63rangeNis600
./mainRelativeError 5 300 60 63 1 400 bcspwr05.mtx >> intoS60to63rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoS60to63rangeNis800
./mainRelativeError 5 400 60 63 1 400 bcspwr05.mtx >> intoS60to63rangeNis800/result_RelativeError_bcspwr05.txt
