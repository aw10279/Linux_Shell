mkdir -p ./20170904_FastQC_result.raw

fastqc -t 10 ./raw.fastq/*.gz -o ./20170904_FastQC_result.raw -q & 
