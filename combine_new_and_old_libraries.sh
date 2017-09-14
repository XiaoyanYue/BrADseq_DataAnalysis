cd ~/RSA_BrAD_seq_Data/fastq_mike/2017-08-27/trimmed_results_mike

#files=`ls J*_trimmed.fastq.gz | sed 's/\([A-Z]*\).*/\1/'`

files=`ls J*_trimmed.fastq.gz | sed 's/\([A-Z]*\)\([0-9]*\).*/\1\2/'`

for i in $files
do
echo $i >> new_lib_list.txt
done

sort new_lib_list.txt | uniq | tee new_lib.txt
#remove the repeat items in new_lib_list.txt 

cd ~/RSA_BrAD_seq_Data/new_trimmed_results2/

mkdir tmpfiles

cp ~/RSA_BrAD_seq_Data/fastq_mike/2017-08-27/trimmed_results_mike/new_lib.txt ~/RSA_BrAD_seq_Data/new_trimmed_results2/

IFS=$'\n'
for i in $(cat new_lib.txt)
do
echo $i
cp ${i}* tmpfiles
done

mv tmpfiles/ ~/RSA_BrAD_seq_Data/

cd ~/RSA_BrAD_seq_Data/fastq_mike/2017-08-27/trimmed_results_mike

IFS=$'\n'
for i in $(cat new_lib.txt)
do
echo $i
cp ${i}* ~/RSA_BrAD_seq_Data/tmpfiles
done

cd ~/RSA_BrAD_seq_Data/

mv tmpfiles/ trimmed_fastq_combine_reads_from_Mike/
