cd ~/RSA_BrAD_seq_Data/new_trimmed_results

mkdir mapping_kallisto_results

files=`ls J*_trimmed.fastq.gz | sed 's/\_L003_R1_001_trimmed.fastq.gz//g' | sed 's/\_L004_R1_001_trimmed.fastq.gz//g'`

for i in $files

do
echo $i

kallisto quant --single --plaintext -l 250 -s 50 -t 8 -i ~/RSA_BrAD_seq_Data/kallisto_indexed_cds/ref_ITAG3.2_cds.19.kai -o ~/RSA_BrAD_seq_Data/new_trimmed_results/kallisto_mapping_results/${i}_aligned ${i}_L003_R1_001_trimmed.fastq.gz ${i}_L004_R1_001_trimmed.fastq.gz

done

