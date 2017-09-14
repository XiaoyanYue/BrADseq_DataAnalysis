mkdir kallisto_mapping_results

files=`ls J*_trimmed.fastq.gz | sed 's/\_L003_R1_001_trimmed.fastq.gz//g' | sed 's/\_L004_R1_001_trimmed.fastq.gz//g'`

#files=`ls J*_trimmed.fastq.gz | sed 's/\([A-Z]*\)\([0-9]*\).*/\1\2/'` #for combine_new_and_old_lib

for i in $files

do
echo $i

kallisto quant --single --plaintext -l 250 -s 50 -t 8 -i ~/RSA_BrAD_seq_Data/kallisto_indexed_cds/ref_ITAG3.2_cds.19.kai -o ~/RSA_BrAD_seq_Data/new_trimmed_results2/kallisto_mapping_results/${i}_aligned ${i}_L003_R1_001_trimmed.fastq.gz ${i}_L004_R1_001_trimmed.fastq.gz

done

#kallisto quant --single --plaintext -l 250 -s 50 -t 8 -i ~/RSA_BrAD_seq_Data/kallisto_indexed_cDNA/ref_ITAG3.2_cdna.19.kai -o ~/RSA_BrAD_seq_Data/new_trimmed_results2/kallisto_mapping_cDNA_results/${i}_aligned ${i}_L003_R1_001_trimmed.fastq.gz ${i}_L004_R1_001_trimmed.fastq.gz

#kallisto quant --single --plaintext -l 250 -s 50 -t 8 -i ~/RSA_BrAD_seq_Data/kallisto_indexed_cDNA2/ref_ITAG3.2_cdna.31.kai -o ~/RSA_BrAD_seq_Data/new_trimmed_results2/kallisto_mapping_cDNA2_results/${i}_aligned ${i}_L003_R1_001_trimmed.fastq.gz ${i}_L004_R1_001_trimmed.fastq.gz

#kallisto quant --single --plaintext -l 250 -s 50 -t 8 -i ~/RSA_BrAD_seq_Data/kallisto_indexed_cDNA/ref_ITAG3.2_cdna.19.kai -o ~/RSA_BrAD_seq_Data/trimmed_fastq_combine_reads_from_Mike/kallisto_mapping_cDNA_results/${i}_aligned ${i}_*_R1_001_trimmed.fastq.gz #for combined_new_and_old_lib
