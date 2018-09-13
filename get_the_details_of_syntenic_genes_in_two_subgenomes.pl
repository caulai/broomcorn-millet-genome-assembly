#!/usr/bin/perl
use strict;
use warnings;

die usage() if @ARGV == 0;
my ($scaffold_matching_information,$Quota_Alignment_Results,$syntenic_genes_in_foxtail_millet,$output) = @ARGV;

my %hash_scaffold_matching_information;
open NEW,"$scaffold_matching_information" or die;
while(<NEW>){
	chomp;
	next if (/Fox_Millet/);
	my @array = split /\s+/;
	for(my $aa = 1;$aa < @array;$aa++){
		my @bb = split /,/,$array[$aa];
		foreach my $key(@bb){
			$hash_scaffold_matching_information{"$array[0]_$key"} = $aa;
		}
	}
}
close NEW;

my %hash_syntenic_sub1;
my %hash_syntenic_sub2;
open NEW,"$Quota_Alignment_Results" or die;
while(<NEW>){
	chomp;
	next if (/^#/);
	my @array = split /\s+/;
	my @aa = split /\|\|/,$array[1];
	my @bb = split /\|\|/,$array[5];

	if(exists $hash_scaffold_matching_information{"$aa[0]_chr$bb[0]"} and $hash_scaffold_matching_information{"$aa[0]_chr$bb[0]"} == 1){
		$hash_syntenic_sub1{$aa[3]} = 1;
	}
	if(exists $hash_scaffold_matching_information{"$aa[0]_chr$bb[0]"} and $hash_scaffold_matching_information{"$aa[0]_chr$bb[0]"} == 2){
		$hash_syntenic_sub2{$aa[3]} = 1;
	}
}
close NEW;

open NEW1,"$syntenic_genes_in_foxtail_millet" or die;
open NEW2,">$output" or die;
print NEW2 "scaffold\tgene\tsub1\tsub2\tboth\n";
while(<NEW1>){
	chomp;
	my @array = split /\s+/;
	if(exists $hash_syntenic_sub1{$array[1]} and exists $hash_syntenic_sub2{$array[1]}){
		print NEW2 "$array[0]\t$array[1]\tY\tY\tY\n";
	}
	elsif(exists $hash_syntenic_sub1{$array[1]}){
		print NEW2 "$array[0]\t$array[1]\tY\tN\tN\n";
	}
	elsif(exists $hash_syntenic_sub2{$array[1]}){
		print NEW2 "$array[0]\t$array[1]\tN\tY\tN\n";
	}
	else{
		print NEW2 "$array[0]\t$array[1]\tN\tN\tN\n";
	}
}

close NEW1;
close NEW2;


sub usage{
	my $die =<<DIE;
	usage : perl *.pl scaffold_matching_information Quota_Alignment_Results Quota_Alignment_Results.syntenic_genes_in_foxtail_millet output
DIE
}
