#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY56to59rangeNis200
./mainRelativeError 5 100 56 59 4 400 bcspwr05.mtx>> intoY56to59rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoY56to59rangeNis400
./mainRelativeError 5 200 56 59 4 400 bcspwr05.mtx>> intoY56to59rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoY56to59rangeNis600
./mainRelativeError 5 300 56 59 4 400 bcspwr05.mtx>> intoY56to59rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoY56to59rangeNis800
./mainRelativeError 5 400 56 59 4 400 bcspwr05.mtx>> intoY56to59rangeNis800/result_RelativeError_bcspwr05.txt
mkdir intoC56to59rangeNis200
./mainRelativeError 5 100 56 59 2 400 bcspwr05.mtx >> intoC56to59rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoC56to59rangeNis400
./mainRelativeError 5 200 56 59 2 400 bcspwr05.mtx >> intoC56to59rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoC56to59rangeNis600
./mainRelativeError 5 300 56 59 2 400 bcspwr05.mtx >> intoC56to59rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoC56to59rangeNis800
./mainRelativeError 5 400 56 59 2 400 bcspwr05.mtx >> intoC56to59rangeNis800/result_RelativeError_bcspwr05.txt
mkdir intoS56to59rangeNis200
./mainRelativeError 5 100 56 59 1 400 bcspwr05.mtx >> intoS56to59rangeNis200/result_RelativeError_bcspwr05.txt
mkdir intoS56to59rangeNis400
./mainRelativeError 5 200 56 59 1 400 bcspwr05.mtx >> intoS56to59rangeNis400/result_RelativeError_bcspwr05.txt
mkdir intoS56to59rangeNis600
./mainRelativeError 5 300 56 59 1 400 bcspwr05.mtx >> intoS56to59rangeNis600/result_RelativeError_bcspwr05.txt
mkdir intoS56to59rangeNis800
./mainRelativeError 5 400 56 59 1 400 bcspwr05.mtx >> intoS56to59rangeNis800/result_RelativeError_bcspwr05.txt
