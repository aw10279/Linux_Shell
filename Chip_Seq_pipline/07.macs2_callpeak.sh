ctrl_bam=./20170904_bam/293-ChIP-Seq_control_rep1_R1_bt2_hg19_MAPQ20_sort.bam


for target in CTCF H3K36me3 H3K4me3 H3K9me3 
do
	for index in 1 2 
	do
		treat_bam=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ20_sort.bam
		macs2_log=./20170904_macs2_callpeak/293-ChIP-Seq_${target}_rep${index}_macs2.log
		macs2_name=293-ChIP-Seq_${target}_rep${index}
		out_dir=./20170904_macs2_callpeak/
		nohup macs2 callpeak -c $ctrl_bam -t $treat_bam -f BAM -g hs --outdir $out_dir  -n $macs2_name  -m 2 100 --call-summits --nomodel --shift 0   > $macs2_log  2>&1 &
	done
done

for target in H3K4me1 
do
	for index in 1 
	do
		treat_bam=./20170904_bam/293-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ20_sort.bam
		macs2_log=./20170904_macs2_callpeak/293-ChIP-Seq_${target}_rep${index}_macs2.log
		macs2_name=293-ChIP-Seq_${target}_rep${index}
		out_dir=./20170904_macs2_callpeak/
		nohup macs2 callpeak -c $ctrl_bam -t $treat_bam -f BAM -g hs --outdir $out_dir  -n $macs2_name  -m 2 100 --call-summits --nomodel --shift 0   > $macs2_log  2>&1 &
	done
done

# K562 cell line
for target in POL2A 
do
	for index in 1 2 
	do
		treat_bam=./20170904_bam/K562-ChIP-Seq_${target}_rep${index}_R1_bt2_hg19_MAPQ20_sort.bam
		macs2_log=./20170904_macs2_callpeak/K562-ChIP-Seq_${target}_rep${index}_macs2.log
		macs2_name=K562-ChIP-Seq_${target}_rep${index}
		out_dir=./20170904_macs2_callpeak/
		nohup macs2 callpeak -c $ctrl_bam -t $treat_bam -f BAM -g hs --outdir $out_dir  -n $macs2_name  -m 2 100 --call-summits --nomodel --shift 0   > $macs2_log  2>&1 &
	done
done



