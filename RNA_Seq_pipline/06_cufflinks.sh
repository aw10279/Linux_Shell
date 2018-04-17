gtf=./RefSeq_genes_hg19.gtf

for case_name in hela_ctrl_rep1 hela_ctrl_rep2 hela_treat_rep1 hela_treat_rep2
do
    output_dir=./cufflinks/${case_name}
    bam_file=./tophat2/${case_name}/accepted_hits.bam
    log=./cufflinks/${case_name}/${case_name}.log

    mkdir -p $output_dir

    /home/aw10279/softwares/cufflinks-2.2.1.Linux_x86_64/cufflinks -o $output_dir -p 4 -G $gtf $bam_file > $log 2>&1

done

