#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY56to59rangeNis200
./mainRelativeError 5 80 56 59 4 400 bp_0.mtx>> intoY56to59rangeNis200/2_result_bp_0.txt
mkdir intoY56to59rangeNis400
./mainRelativeError 5 160 56 59 4 400 bp_0.mtx>> intoY56to59rangeNis400/2_result_bp_0.txt
mkdir intoY56to59rangeNis600
./mainRelativeError 5 240 56 59 4 400 bp_0.mtx>> intoY56to59rangeNis600/2_result_bp_0.txt
mkdir intoY56to59rangeNis800
./mainRelativeError 5 320 56 59 4 400 bp_0.mtx>> intoY56to59rangeNis800/2_result_bp_0.txt
mkdir intoC56to59rangeNis200
./mainRelativeError 5 80 56 59 2 400 bp_0.mtx >> intoC56to59rangeNis200/2_result_bp_0.txt
mkdir intoC56to59rangeNis400
./mainRelativeError 5 160 56 59 2 400 bp_0.mtx >> intoC56to59rangeNis400/2_result_bp_0.txt
mkdir intoC56to59rangeNis600
./mainRelativeError 5 240 56 59 2 400 bp_0.mtx >> intoC56to59rangeNis600/2_result_bp_0.txt
mkdir intoC56to59rangeNis800
./mainRelativeError 5 320 56 59 2 400 bp_0.mtx >> intoC56to59rangeNis800/2_result_bp_0.txt
mkdir intoS56to59rangeNis200
./mainRelativeError 5 80 56 59 1 400 bp_0.mtx >> intoS56to59rangeNis200/2_result_bp_0.txt
mkdir intoS56to59rangeNis400
./mainRelativeError 5 160 56 59 1 400 bp_0.mtx >> intoS56to59rangeNis400/2_result_bp_0.txt
mkdir intoS56to59rangeNis600
./mainRelativeError 5 240 56 59 1 400 bp_0.mtx >> intoS56to59rangeNis600/2_result_bp_0.txt
mkdir intoS56to59rangeNis800
./mainRelativeError 5 320 56 59 1 400 bp_0.mtx >> intoS56to59rangeNis800/2_result_bp_0.txt
