for case_name in hela_ctrl_rep1 hela_ctrl_rep2 hela_treat_rep1 hela_treat_rep2
do
    R1=./raw.data/cuta_${case_name}_R1.fq.gz
    R2=./raw.data/cuta_${case_name}_R2.fq.gz

    out_R1=./raw.data/cutt_${case_name}_R1.fq.gz
    out_R2=./raw.data/cutt_${case_name}_R2.fq.gz

    zcat $R1 | fastx_trimmer -f 11 -l 140 -z -o $out_R1
    zcat $R2 | fastx_trimmer -f 11 -l 140 -z -o $out_R2

done

