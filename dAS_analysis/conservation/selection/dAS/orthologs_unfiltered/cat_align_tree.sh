#!/bin/bash

for folder in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/selection/dAS/orthologs_unfiltered/*; 
do
	cd $folder
	name=$(basename "$folder")
	#cat *.fasta | mafft --auto --thread -3 | FastTree -nt >  $name".nwk"
	cat *.fasta > all.fasta
	mafft --auto --thread 3 all.fasta > aligned.fasta
	FastTree -nt aligned.fasta > $folder"_all_orthologs.nwk"
done
