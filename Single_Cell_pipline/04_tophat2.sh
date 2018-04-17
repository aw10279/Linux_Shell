for case_name in hela_ctrl_rep1 hela_ctrl_rep2 hela_treat_rep1 hela_treat_rep2
do
    R1=./raw.data/cutt_${case_name}_R1.fq.gz
    R2=./raw.data/cutt_${case_name}_R2.fq.gz

    output_dir=./tophat2/${case_name}

    log=./tophat2/${case_name}/${case_name}.log
    hg19_index=./bowtie2.hg19/hg19_only_chromosome

    mkdir -p $output_dir

    tophat2 -p 4 -o $output_dir $hg19_index $R1 $R2 > $log 2>&1

done

