cd ~/RSA_BrAD_seq_Data/new_trimmed_results2

mkdir ~/RSA_BrAD_seq_Data/new_trimmed_results2/kallisto_mapping_penn_results/summary

files=`ls J*_trimmed.fastq.gz | sed 's/\_L003_R1_001_trimmed.fastq.gz//g' | sed 's/\_L004_R1_001_trimmed.fastq.gz//g'`

for i in $files

do

cd ~/RSA_BrAD_seq_Data/new_trimmed_results2/kallisto_mapping_penn_results/${i}_penn_aligned/

cut -f 1,4 abundance.tsv > ${i}_cut_abundance.tsv

mv ${i}_cut_abundance.tsv ~/RSA_BrAD_seq_Data/new_trimmed_results2/kallisto_mapping_penn_results/summary/

cd ..

done
