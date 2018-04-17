hg19_index=/home/menghw/menghw_HD/reference/bowtie2_hg19/hg19_only_chromosome

# 
for target in CTCF H3K36me3 H3K4me3 H3K9me3 
do
	for index in 1 2 
	do
		fq_file=./raw.fastq/293-ChIP-Seq_${target}_rep${index}_R1.fastq.gz
		sam_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19.sam
		log=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19.log
		nohup bowtie2 -p 3 -x $hg19_index -U $fq_file -S $sam_file > $log 2>&1 & 
	done
done

for target in control H3K4me1 
do
	for index in 1 
	do
		fq_file=./raw.fastq/293-ChIP-Seq_${target}_rep${index}_R1.fastq.gz
		sam_file=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19.sam
		log=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19.log
		nohup bowtie2 -p 3  -x $hg19_index -U $fq_file -S $sam_file > $log 2>&1 & 
	done
done

# K562 cell line
for target in POL2A 
do
	for index in 1 2 
	do
		fq_file=./raw.fastq/K562-ChIP-Seq_${target}_rep${index}_R1.fastq.gz
		sam_file=./20170904_bam/K562-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19.sam
		log=./20170904_bam/K562-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19.log
		nohup bowtie2 -p 3  -x $hg19_index -U $fq_file -S $sam_file > $log 2>&1 & 
	done
done



