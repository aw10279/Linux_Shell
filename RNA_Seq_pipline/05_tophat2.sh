hg19_index=./bowtie2.hg19/hg19_only_chromosome

for case_name in hela_ctrl_rep1 hela_ctrl_rep2 hela_treat_rep1 hela_treat_rep2
do
    R1=./bowtie2/${case_name}_unmap.fq.1.gz
    R2=./bowtie2/${case_name}_unmap.fq.2.gz

    output_dir=./tophat2/${case_name}

    log=./tophat2/${case_name}/${case_name}.log

    mkdir -p $output_dir

    tophat2 -p 4 -o $output_dir $hg19_index $R1 $R2 > $log 2>&1

done

