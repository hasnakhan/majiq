#!/bin/bash

#SBATCH --time=6:00:00
#SBATCH --job-name=20220819_gunzip
#SBATCH --output=20220819_gunzip.txt
#SBATCH --mail-user=hasna.khan@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load gcc/8.3.0

cd $SLURM_SUBMIT_DIR

gunzip athal.vcf.gz