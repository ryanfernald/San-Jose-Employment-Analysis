#!/bin/bash

outprefix=$1
outDir=$2

prefix=EmpComp

years=("2013" "2014" 2015" "2016" "2017" "2018" "2019" "2020" "2021" "2022" 2023")

if [ -d "$outDir"]; then
	echo "directory $outDir exists"
else
	echo "creating directory $outDir"
	mkdir "$outDir"
fi

for str in ${years[@]}; do
	echo "cleaning $prefix$str.csv"
	sh clean.sh "$prefix$str.csv" "$outDir/$outprefix$str.csv"
done



