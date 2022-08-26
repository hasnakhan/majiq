#!/bin/bash

#this is currently set up to run on the models folder, comment in the first 2 for statements to run on constitutive/alternative

#for folder in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/*/*; 
#do
	#for sequence in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/*/"${folder##*/}"/*.fa; 
	for sequence in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/models/*.fa;
do
	name=$(basename "$sequence")
	trimmed=$(echo "$name" | cut -f 1 -d '.')
	cp -f $sequence $sequence".old" &&
	cut -d "|" -f 4 <$sequence".old" >$sequence &&
	rm $sequence".old"
	done
#done