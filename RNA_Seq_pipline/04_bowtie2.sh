rRNA_index=./rRNA_index/bowtie2_rRNA_human

for case_name in hela_ctrl_rep1 hela_ctrl_rep2 hela_treat_rep1 hela_treat_rep2
do
    R1=./raw.data/cutt_${case_name}_R1.fq.gz
    R2=./raw.data/cutt_${case_name}_R2.fq.gz

    output_dir=./bowtie2/
    sam_file=./${output_dir}/${case_name}.sam
    unmap_file=./${output_dir}${case_name}_unmap.fq.gz

    log=./bowtie2/${case_name}.log

    mkdir -p $output_dir

    bowtie2 -x $rRNA_index -1 $R1 -2 $R2 -S $sam_file -p 4 --un-conc-gz $unmap_file > $log 2>&1

done

