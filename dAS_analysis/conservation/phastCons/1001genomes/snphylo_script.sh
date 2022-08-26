#!/bin/bash

#SBATCH --time=24:00:00
#SBATCH --job-name=20220818_snphylo
#SBATCH --output=20220818_snphylo.txt
#SBATCH --mail-user=hasna.khan@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load gcc/8.3.0
module load r/4.1.2
module load muscle

cd $SLURM_SUBMIT_DIR

export PATH=$PATH:/scratch/n/nprovart/khanha55/snphylo/phylip/phylip-3.697/exe/dnaml

bash snphylo_edited.sh -v /scratch/n/nprovart/khanha55/snphylo/athal.vcf -a 5 -t 80 -P "athal_snphylo"