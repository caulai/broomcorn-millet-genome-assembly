#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/jellyfish-2.2.6-bin/bin/jellyfish count -t 8 -o longmi4_jellyfish_17 -m 17 -s 500M -C ../R17011683LD01_combined_R1.fastq.gz.trimmed ../R17011683LD01_combined_R2.fastq.gz.trimmed

/NAS7/home/shijunpeng/software/jellyfish-2.2.6-bin/bin/jellyfish histo -o ./longmi4_jellyfish_17.hist ./longmi4_jellyfish_17
