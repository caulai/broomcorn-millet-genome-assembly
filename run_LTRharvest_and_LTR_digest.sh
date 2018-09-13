#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

##  create the suffix
#/NAS7/home/shijunpeng/software/genometools-1.5.9/bin/gt suffixerator -db /NAS6/shijunpeng/data/Longmi4/NextOmics/longmi.sca.formated.fasta -indexname ./longmi.sca.formated.fsa -tis -suf -lcp -des -ssp -sds -dna

#/NAS7/home/shijunpeng/software/genometools-1.5.9/bin/gt ltrharvest -index ./longmi.sca.formated.fsa -out ./longmi.sca.formated.fsa.fasta -outinner ./longmi.sca.formated.fsa.inner.fasta -gff3 ./longmi.sca.formated.fsa.gff3 -v -mintsd 5 -maxtsd 20 -longoutput

## to get the sorted gff file
#~/software/genometools-1.5.9/bin/gt gff3 -sort ./longmi.sca.formated.fsa.gff3 >./longmi.sca.formated.fsa.sorted.gff3

## to run the ltrdigest
~/software/genometools-1.5.9/bin/gt ltrdigest -pptlen 10 30 -pbsoffset 0 3 -trnas /NAS6/shijunpeng/data/Longmi4/NextOmics/Transposable_elements/LTRharvest/tRNA/eukaryotic-tRNAs.fa -hmms /NAS6/shijunpeng/data/Longmi4/NextOmics/Transposable_elements/LTRharvest/gydb/GyDB_collection/profiles/*.hmm -outfileprefix ./ltrdigest/longmi.sca.formated.fsa.sorted.ltrdigest ./longmi.sca.formated.fsa.sorted.gff3 ./longmi.sca.formated.fsa >./longmi.sca.formated.fsa.sorted.ltrdigest.gff3
