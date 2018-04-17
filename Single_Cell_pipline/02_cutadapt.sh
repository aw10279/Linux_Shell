for case_name in hela_ctrl_rep1 hela_ctrl_rep2 hela_treat_rep1 hela_treat_rep2
do
    R1=./raw.data/${case_name}_R1.fq.gz
    R2=./raw.data/${case_name}_R2.fq.gz

    out_R1=./raw.data/cuta_${case_name}_R1.fq.gz
    out_R2=./raw.data/cuta_${case_name}_R2.fq.gz

    log=./raw.data/${case_name}_cuta.log

    cutadapt --times 1 -e 0.1 -O 3 --quality-cutoff 6 -m 50 -a AGATCGGAAGAGC -A AGATCGGAAGAGC -o $out_R1 -p $out_R2 $R1 $R2 > $log 2>&1 &

done
