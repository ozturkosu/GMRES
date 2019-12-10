#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY48to51rangeNis200
./mainRelativeError 5 100 48 51 4 400 bcspwr05.mtx>> intoY48to51rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoY48to51rangeNis400
./mainRelativeError 5 200 48 51 4 400 bcspwr05.mtx>> intoY48to51rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoY48to51rangeNis600
./mainRelativeError 5 300 48 51 4 400 bcspwr05.mtx>> intoY48to51rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoY48to51rangeNis800
./mainRelativeError 5 400 48 51 4 400 bcspwr05.mtx>> intoY48to51rangeNis800/result_RelativeError_bcspwr05.txt
mkdir intoC48to51rangeNis200
./mainRelativeError 5 100 48 51 2 400 bcspwr05.mtx >> intoC48to51rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoC48to51rangeNis400
./mainRelativeError 5 200 48 51 2 400 bcspwr05.mtx >> intoC48to51rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoC48to51rangeNis600
./mainRelativeError 5 300 48 51 2 400 bcspwr05.mtx >> intoC48to51rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoC48to51rangeNis800
./mainRelativeError 5 400 48 51 2 400 bcspwr05.mtx >> intoC48to51rangeNis800/result_RelativeError_bcspwr05.txt
mkdir intoS48to51rangeNis200
./mainRelativeError 5 100 48 51 1 400 bcspwr05.mtx >> intoS48to51rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoS48to51rangeNis400
./mainRelativeError 5 200 48 51 1 400 bcspwr05.mtx >> intoS48to51rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoS48to51rangeNis600
./mainRelativeError 5 300 48 51 1 400 bcspwr05.mtx >> intoS48to51rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoS48to51rangeNis800
./mainRelativeError 5 400 48 51 1 400 bcspwr05.mtx >> intoS48to51rangeNis800/result_RelativeError_bcspwr05.txt
