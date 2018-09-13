#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

## this script was used to annotate the transposable elements in selftrained datasets
/NAS7/home/shijunpeng/software/RepeatMasker/RepeatMasker -pa 6 -s -lib /NAS6/shijunpeng/data/Longmi4/NextOmics/Transposable_elements/Longmi4/Longmi4-families.fa -dir ./ -a -html -gff  /NAS6/shijunpeng/data/Longmi4/NextOmics/longmi.sca.formated.fasta
