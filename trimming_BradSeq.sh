#default trimming for SR50 reads

#first, enter the directory with fastq files
cd ~/RSA_BrAD_seq_Data 

mkdir new_trimmed_results2

#based on all the adapters and full path of the document

files=`ls J*fastq.gz | sed 's/\.fastq\.gz//g'`
for i in $files
 do
 echo $i
# trimming
 java -jar /Network/Servers/avalanche.plb.ucdavis.edu/Volumes/Mammoth/Users/xiaoyanyue/BioinformaticsPackages/Trimmomatic-0.36/trimmomatic-0.36.jar SE -phred33 ${i}.fastq.gz ${i}_trimmed.fastq.gz ILLUMINACLIP:/Network/Servers/avalanche.plb.ucdavis.edu/Volumes/Mammoth/Users/xiaoyanyue/BioinformaticsPackages/Trimmomatic-0.36/adapters/all_adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 -threads 6
done

#trimming for data from mike
#java -jar /Network/Servers/avalanche.plb.ucdavis.edu/Volumes/Mammoth/Users/xiaoyanyue/BioinformaticsPackages/Trimmomatic-0.36/trimmomatic-0.36.jar SE -phred33 ${i}.fastq.gz trimmed_results_mike/${i}_trimmed.fastq.gz CROP:50 ILLUMINACLIP:/Network/Servers/avalanche.plb.ucdavis.edu/Volumes/Mammoth/Users/xiaoyanyue/BioinformaticsPackages/Trimmomatic-0.36/adapters/all_adapters.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 -threads 6 
