#!/bin/bash

##### this script was used to classify the type of duplicated genes

#formatdb -i ./Longmi_Filtered-gene.gff3.representative.protein.fa -p T

#blastall -i ./Longmi_Filtered-gene.gff3.representative.protein.fa -d ./Longmi_Filtered-gene.gff3.representative.protein.fa -p blastp -e 1e-10 -b 5 -v 5 -m 8 -o ./Longmi4.blast -a 8

/NAS7/home/shijunpeng/software/MCScanX/duplicate_gene_classifier ./Longmi4

/NAS7/home/shijunpeng/software/MCScanX/MCScanX ./Longmi4
