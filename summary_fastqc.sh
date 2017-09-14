mkdir summary

unzip \*_fastqc.zip -d summary

directory=`ls -d */ | grep "fastqc"`

echo $directory

for i in $directory

do

# cat summary file 

cd $i 

cat summary.txt >> ~/RSA_BrAD_seq_Data/new_trimmed_results2/fastqc_results/summary/summary_all.txt 

cd ..

done
