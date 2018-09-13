#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/interproscan-5.27-66.0/interproscan.sh -i ./Longmi_Filtered-gene.gff3.cds.protein.1.fa -f tsv -dp -T ./temp1 
