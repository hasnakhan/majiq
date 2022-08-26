#!/bin/bash

#this is currently set up to run on the alt/cons folders, comment out the first 2 for statements and comment in the third to run on models

for folder in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/*/*; 
do
	for sequence in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/*/"${folder##*/}"/*.fa; 
do

#for sequence in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/models/*_unaligned.fa; 
#	do
	echo "$sequence"
	name=$(basename "$sequence")
	trimmed=$(echo "$name" | cut -f 1 -d '.' | cut -f 1-2 -d '_')
	cp -f $sequence $sequence".old" &&
	sed 's/^\([^ACGTN]\)/>\1/' $sequence.old > $sequence
	rm $sequence".old"
	done
done 