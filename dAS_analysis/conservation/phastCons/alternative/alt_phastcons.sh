#!/bin/bash

for folder in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/alternative/*; 
do
	for sequence in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/alternative/"${folder##*/}"/*.fasta; 
	do
	name=$(basename "$sequence")
	#echo "$folder"
	#echo "$sequence"
	phastCons --estimate-trees $folder/trees/$name $sequence phyloFit.mod > $folder/"${name##*/}.wig"
	done
done
