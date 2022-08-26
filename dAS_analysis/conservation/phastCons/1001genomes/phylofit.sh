#!/bin/bash

for sequence in /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/models/*_aligned.fasta; 
	do
	name=$(basename "$sequence")
	phyloFit --tree "(((9671,(2202,19951)),((6214,8376),((9871,9879),(765,14312)))),((6923,(544,8723)),((9524,9573),(6680,(9661,9969)))),((5831,6124),7477))" --out-root "${name##*/}" $sequence > /mnt/c/Users/hasna/Documents/MSc_project/majiq/dAS_analysis/conservation/phastCons/1001genomes/models/"${name##*/}.mod"
done
