#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY60to63rangeNis200
./mainRelativeError 5 80 60 63 4 400 bp_0.mtx>> intoY60to63rangeNis200/2_result_bp_0.txt
mkdir intoY60to63rangeNis400
./mainRelativeError 5 160 60 63 4 400 bp_0.mtx>> intoY60to63rangeNis400/2_result_bp_0.txt
mkdir intoY60to63rangeNis600
./mainRelativeError 5 240 60 63 4 400 bp_0.mtx>> intoY60to63rangeNis600/2_result_bp_0.txt
mkdir intoY60to63rangeNis800
./mainRelativeError 5 320 60 63 4 400 bp_0.mtx>> intoY60to63rangeNis800/2_result_bp_0.txt
mkdir intoC60to63rangeNis200
./mainRelativeError 5 80 60 63 2 400 bp_0.mtx >> intoC60to63rangeNis200/2_result_bp_0.txt
mkdir intoC60to63rangeNis400
./mainRelativeError 5 160 60 63 2 400 bp_0.mtx >> intoC60to63rangeNis400/2_result_bp_0.txt
mkdir intoC60to63rangeNis600
./mainRelativeError 5 240 60 63 2 400 bp_0.mtx >> intoC60to63rangeNis600/2_result_bp_0.txt
mkdir intoC60to63rangeNis800
./mainRelativeError 5 320 60 63 2 400 bp_0.mtx >> intoC60to63rangeNis800/2_result_bp_0.txt
mkdir intoS60to63rangeNis200
./mainRelativeError 5 80 60 63 1 400 bp_0.mtx >> intoS60to63rangeNis200/2_result_bp_0.txt
mkdir intoS60to63rangeNis400
./mainRelativeError 5 160 60 63 1 400 bp_0.mtx >> intoS60to63rangeNis400/2_result_bp_0.txt
mkdir intoS60to63rangeNis600
./mainRelativeError 5 240 60 63 1 400 bp_0.mtx >> intoS60to63rangeNis600/2_result_bp_0.txt
mkdir intoS60to63rangeNis800
./mainRelativeError 5 320 60 63 1 400 bp_0.mtx >> intoS60to63rangeNis800/2_result_bp_0.txt
