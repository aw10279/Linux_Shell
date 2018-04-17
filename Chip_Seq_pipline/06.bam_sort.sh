
for target in CTCF H3K36me3 H3K4me3 H3K9me3 
do
	for index in 1 2 
	do
		bam_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10.bam
		sort_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10_sort.bam
		temp_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10_sort.bam.temp
		samtools sort -@ 3 -m 2G -T $temp_file -o $sort_file $bam_file & 
	done
done

for target in control H3K4me1 
do
	for index in 1 
	do
		bam_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10.bam
		sort_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10_sort.bam
		temp_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10_sort.bam.temp
		samtools sort -@ 3 -m 2G -T $temp_file -o $sort_file $bam_file & 
	done
done

# K562 cell line
for target in POL2A 
do
	for index in 1 2 
	do
		bam_file=./20170904_bam/K562-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10.bam
		sort_file=./20170904_bam/K562-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10_sort.bam
		temp_file=./20170904_bam/K562-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10_sort.bam.temp
		samtools sort -@ 3 -m 2G -T $temp_file -o $sort_file $bam_file & 
	done
done



