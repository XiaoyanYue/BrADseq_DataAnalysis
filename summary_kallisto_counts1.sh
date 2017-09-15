

mkdir ~/RSA_BrAD_seq_Data/new_trimmed_results2/kallisto_mapping_results/summary

files=`ls J*_trimmed.fastq.gz | sed 's/\_L003_R1_001_trimmed.fastq.gz//g' | sed 's/\_L004_R1_001_trimmed.fastq.gz//g'`

for i in $files

do 

cd ~/RSA_BrAD_seq_Data/new_trimmed_results2/kallisto_mapping_results/${i}_aligned/

cut -f 1,4 abundance.tsv > ${i}_cut_abundance.tsv

mv ${i}_cut_abundance.tsv ~/RSA_BrAD_seq_Data/new_trimmed_results2/kallisto_mapping_results/summary/

cd ..

done

#for combined data
#files=`ls J*_aligned | sed 's/\([A-Z]*\)\([0-9]*\).*/\1\2/'`
#for i in $files;  do cd ${i}_aligned; cut -f 1,4 abundance.tsv >> ${i}_cut_abundance.tsv; mv ${i}_cut_abundance.tsv ~/RSA_BrAD_seq_Data/trimmed_fastq_combine_reads_from_Mike/kallisto_mapping_cDNA_results/summary/; cd ..; done


