#!/bin/bash

for sequence in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/models/*_unaligned.fasta; 
	do
	echo "$sequence"
	name=$(basename "$sequence")
	trimmed=$(echo "$name" | cut -f 1-2 -d '_')
	mafft --auto --thread -3 --inputorder $sequence > /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/models/"${trimmed##*/}_aligned.fasta"
done
