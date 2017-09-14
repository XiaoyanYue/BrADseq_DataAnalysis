mkdir combined_fastq

files=`ls J*_trimmed.fastq.gz | sed 's/\_L003_R1_001_trimmed.fastq.gz//g' | sed 's/\_L004_R1_001_trimmed.fastq.gz//g'`

for i in $files

do
echo $i

cat ${i}_L003_R1_001_trimmed.fastq.gz ${i}_L004_R1_001_trimmed.fastq.gz > ${i}_trimmed.fastq.gz

done
