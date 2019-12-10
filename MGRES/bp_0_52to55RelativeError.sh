#!/bin/bash
#SBATCH --time=23:59:00
mkdir intoY52to55rangeNis200
./mainRelativeError 5 80 52 55 4 400 bp_0.mtx>> intoY52to55rangeNis200/2_result_bp_0.txt
mkdir intoY52to55rangeNis400
./mainRelativeError 5 160 52 55 4 400 bp_0.mtx>> intoY52to55rangeNis400/2_result_bp_0.txt
mkdir intoY52to55rangeNis600
./mainRelativeError 5 240 52 55 4 400 bp_0.mtx>> intoY52to55rangeNis600/2_result_bp_0.txt
mkdir intoY52to55rangeNis800
./mainRelativeError 5 320 52 55 4 400 bp_0.mtx>> intoY52to55rangeNis800/2_result_bp_0.txt
mkdir intoC52to55rangeNis200
./mainRelativeError 5 80 52 55 2 400 bp_0.mtx >> intoC52to55rangeNis200/2_result_bp_0.txt
mkdir intoC52to55rangeNis400
./mainRelativeError 5 160 52 55 2 400 bp_0.mtx >> intoC52to55rangeNis400/2_result_bp_0.txt
mkdir intoC52to55rangeNis600
./mainRelativeError 5 240 52 55 2 400 bp_0.mtx >> intoC52to55rangeNis600/2_result_bp_0.txt
mkdir intoC52to55rangeNis800
./mainRelativeError 5 320 52 55 2 400 bp_0.mtx >> intoC52to55rangeNis800/2_result_bp_0.txt
mkdir intoS52to55rangeNis200
./mainRelativeError 5 80 52 55 1 400 bp_0.mtx >> intoS52to55rangeNis200/2_result_bp_0.txt
mkdir intoS52to55rangeNis400
./mainRelativeError 5 160 52 55 1 400 bp_0.mtx >> intoS52to55rangeNis400/2_result_bp_0.txt
mkdir intoS52to55rangeNis600
./mainRelativeError 5 240 52 55 1 400 bp_0.mtx >> intoS52to55rangeNis600/2_result_bp_0.txt
mkdir intoS52to55rangeNis800
./mainRelativeError 5 320 52 55 1 400 bp_0.mtx >> intoS52to55rangeNis800/2_result_bp_0.txt
