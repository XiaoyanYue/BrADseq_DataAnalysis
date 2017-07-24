cd /Network/Servers/avalanche.plb.ucdavis.edu/Volumes/Mammoth/Users/xiaoyanyue/RSA_BrAD_seq_Data/

files=`ls J*fastq.gz | sed 's/\.fastq\.gz//g'`
for i in $files
 do
 echo $i
# trimming
 java -jar ~/BioinformaticsPackages/Trimmomatic-0.36/trimmomatic-0.36.jar SE -phred33 ${i}.fastq.gz ${i}_trimmed.fastq.gz ILLUMINACLIP:~/BioinformaticsPackages/Trimmomatic-0.36/adapters/Bradseq_adapter.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:50 -threads 6
done
