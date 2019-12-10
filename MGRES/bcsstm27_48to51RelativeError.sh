#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY48to51rangeNis200
./mainRelativeError 5 200 48 51 4 1000 bcsstm27.mtx>> intoY48to51rangeNis200/result_RelativeError_bcsstm27.txt
mkdir intoY48to51rangeNis400
./mainRelativeError 5 400 48 51 4 1000 bcsstm27.mtx>> intoY48to51rangeNis400/result_RelativeError_bcsstm27.txt
mkdir intoY48to51rangeNis600
./mainRelativeError 5 600 48 51 4 1000 bcsstm27.mtx>> intoY48to51rangeNis600/result_RelativeError_bcsstm27.txt
mkdir intoY48to51rangeNis800
./mainRelativeError 5 800 48 51 4 1000 bcsstm27.mtx>> intoY48to51rangeNis800/result_RelativeError_bcsstm27.txt
mkdir intoC48to51rangeNis200
./mainRelativeError 5 200 48 51 2 1000 bcsstm27.mtx >> intoC48to51rangeNis200/result_RelativeError_bcsstm27.txt
mkdir intoC48to51rangeNis400
./mainRelativeError 5 400 48 51 2 1000 bcsstm27.mtx >> intoC48to51rangeNis400/result_RelativeError_bcsstm27.txt
mkdir intoC48to51rangeNis600
./mainRelativeError 5 600 48 51 2 1000 bcsstm27.mtx >> intoC48to51rangeNis600/result_RelativeError_bcsstm27.txt
mkdir intoC48to51rangeNis800
./mainRelativeError 5 800 48 51 2 1000 bcsstm27.mtx >> intoC48to51rangeNis800/result_RelativeError_bcsstm27.txt
mkdir intoS48to51rangeNis200
./mainRelativeError 5 200 48 51 1 1000 bcsstm27.mtx >> intoS48to51rangeNis200/result_RelativeError_bcsstm27.txt
mkdir intoS48to51rangeNis400
./mainRelativeError 5 400 48 51 1 1000 bcsstm27.mtx >> intoS48to51rangeNis400/result_RelativeError_bcsstm27.txt
mkdir intoS48to51rangeNis600
./mainRelativeError 5 600 48 51 1 1000 bcsstm27.mtx >> intoS48to51rangeNis600/result_RelativeError_bcsstm27.txt
mkdir intoS48to51rangeNis800
./mainRelativeError 5 800 48 51 1 1000 bcsstm27.mtx >> intoS48to51rangeNis800/result_RelativeError_bcsstm27.txt
