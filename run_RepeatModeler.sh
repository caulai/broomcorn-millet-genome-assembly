#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

## Create a Database for RepeatModeler
#/NAS7/home/shijunpeng/software/RepeatModeler-open-1.0.11/BuildDatabase -name Longmi4 -engine ncbi /NAS6/shijunpeng/data/Longmi4/NextOmics/longmi.sca.formated.fasta

#Run RepeatModeler 
/NAS7/home/shijunpeng/software/RepeatModeler-open-1.0.11/RepeatModeler -engine ncbi -pa 9 -database Longmi4 
