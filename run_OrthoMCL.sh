## this script was used to run the OrthoMCL analysis
mysql -u orthomcl -p123456 <drop.sql

orthomclInstallSchema orthomcl.config.template install_schema.log

orthomclBlastParser ./B73_Longmi4_Pearl_millet_Sorghum_and_Yugu1_representative_proteins.blastp.m8 compliantFasta > similarSequences.txt

orthomclLoadBlast orthomcl.config.template similarSequences.txt

orthomclPairs orthomcl.config.template orthomcl_pairs.log cleanup=yes

orthomclDumpPairsFiles orthomcl.config.template

mcl mclInput --abc -I 2 -o mclOutput

orthomclMclToGroups GF 1  < mclOutput > groups.txt
