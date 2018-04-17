
for target in CTCF H3K36me3 H3K4me3 H3K9me3 
do
	for index in 1 2 
	do
		sam_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19.sam
		bam_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10.bam
		samtools view -q 10 -h -b -o $bam_file -@ 3  $sam_file & 
	done
done

for target in control H3K4me1 
do
	for index in 1 
	do
		sam_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19.sam
		bam_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10.bam
		samtools view -q 10 -h -b -o $bam_file -@ 3  $sam_file & 
	done
done

# K562 cell line
for target in POL2A 
do
	for index in 1 2 
	do
		sam_file=./20170904_bam/K562-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19.sam
		bam_file=./20170904_bam/K562-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ10.bam
		samtools view -q 10 -h -b -o $bam_file -@ 3  $sam_file & 
	done
done



