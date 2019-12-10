#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY48to51rangeNis200
./mainRelativeError 5 80 48 51 4 400 bp_0.mtx>> intoY48to51rangeNis200/2_result_bp_0.txt
mkdir intoY48to51rangeNis400
./mainRelativeError 5 160 48 51 4 400 bp_0.mtx>> intoY48to51rangeNis400/2_result_bp_0.txt
mkdir intoY48to51rangeNis600
./mainRelativeError 5 240 48 51 4 400 bp_0.mtx>> intoY48to51rangeNis600/2_result_bp_0.txt
mkdir intoY48to51rangeNis800
./mainRelativeError 5 320 48 51 4 400 bp_0.mtx>> intoY48to51rangeNis800/2_result_bp_0.txt
mkdir intoC48to51rangeNis200
./mainRelativeError 5 80 48 51 2 400 bp_0.mtx >> intoC48to51rangeNis200/2_result_bp_0.txt
mkdir intoC48to51rangeNis400
./mainRelativeError 5 160 48 51 2 400 bp_0.mtx >> intoC48to51rangeNis400/2_result_bp_0.txt
mkdir intoC48to51rangeNis600
./mainRelativeError 5 240 48 51 2 400 bp_0.mtx >> intoC48to51rangeNis600/2_result_bp_0.txt
mkdir intoC48to51rangeNis800
./mainRelativeError 5 320 48 51 2 400 bp_0.mtx >> intoC48to51rangeNis800/2_result_bp_0.txt
mkdir intoS48to51rangeNis200
./mainRelativeError 5 80 48 51 1 400 bp_0.mtx >> intoS48to51rangeNis200/2_result_bp_0.txt
mkdir intoS48to51rangeNis400
./mainRelativeError 5 160 48 51 1 400 bp_0.mtx >> intoS48to51rangeNis400/2_result_bp_0.txt
mkdir intoS48to51rangeNis600
./mainRelativeError 5 240 48 51 1 400 bp_0.mtx >> intoS48to51rangeNis600/2_result_bp_0.txt
mkdir intoS48to51rangeNis800
./mainRelativeError 5 320 48 51 1 400 bp_0.mtx >> intoS48to51rangeNis800/2_result_bp_0.txt
