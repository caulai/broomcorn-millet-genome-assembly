#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/busco-master-078252e00399550d7b0e8941cd4d986c8e868a83/scripts/run_BUSCO.py -c 4 -i /NAS6/shijunpeng/data/Longmi4/NextOmics/longmi.sca.formated.fasta -o Longmi4_scaffolds -l /NAS7/home/shijunpeng/software/busco-master-078252e00399550d7b0e8941cd4d986c8e868a83/data/embryophyta_odb9 -m geno
