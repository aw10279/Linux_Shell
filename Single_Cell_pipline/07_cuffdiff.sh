output_dir=./cuffdiff
ctrl_bam=./tophat2/hela_ctrl_rep1/accepted_hits_rmdup.bam,./tophat2/hela_ctrl_rep2/accepted_hits_rmdup.bam
treat_bam=./tophat2/hela_treat_rep1/accepted_hits_rmdup.bam,./tophat2/hela_treat_rep2/accepted_hits_rmdup.bam
log=./cuffdiff/cuffdiff.log
lable=hela_ctrl,hela_treat
gtf=./RefSeq_genes_hg19.gtf

mkdir -p $output_dir

/home/aw10279/softwares/cufflinks-2.2.1.Linux_x86_64/cuffdiff -o $output_dir -p 4 --labels $lable --min-reps-for-js-test 2 $gtf $ctrl_bam $treat_bam > $log 2>&1
