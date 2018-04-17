for case_name in hela_ctrl_rep1 hela_ctrl_rep2 hela_treat_rep1 hela_treat_rep2
do
    input_bam=./tophat2/${case_name}/accepted_hits.bam
    output_bam=./tophat2/${case_name}/accepted_hits_rmdup.bam

    matrix_file=./tophat2/${case_name}/accepted_hits_rmdup.matrix

    log=./tophat2/${case_name}/accepted_hits_rmdup.log

    java -Xms16g -Xmx32g -XX:ParallelGCThreads=32 -jar picard.jar MarkDuplicates INPUT=$input_bam OUTPUT=$output_bam METRICS_FILE=$matrix_file ASSUME_SORTED=true REMOVE_DUPLICATES=true > $log 2>&1

done

