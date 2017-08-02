mkdir summary

unzip \*_fastqc.zip -d summary

directory=`ls -d */ | grep "fastqc"`

echo $directory

do

# cat summary file 

cd $i 
cat summary.txt >> ~/RSA_BrAD_seq_Data/fastqc_results/summary/summary_all.txt 
cd ..
done
