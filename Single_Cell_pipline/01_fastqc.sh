mkdir -p ./fastqc
fastqc -q -t 4 ./raw.data/*.fq.gz -o ./fastqc
