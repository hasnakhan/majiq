#!/bin/bash

for folder in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/*/*; 
do
	for sequence in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/*/"${folder##*/}"/minus/*.fa; 
	do
	name=$(basename "$sequence")
	trimmed=$(echo "$name" | cut -f 1 -d '.')
	seqtk seq -r $sequence > $sequence"_rev.fa"
	done
done 