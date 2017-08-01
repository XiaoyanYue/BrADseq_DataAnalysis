#default trimming for SR50 reads

#first, enter the directory with fastq files

files=`ls J*fastq.gz | sed 's/\.fastq\.gz//g'`
for i in $files
 do
 echo $i
# trimming
 java -jar ~/BioinformaticsPackages/Trimmomatic-0.36/trimmomatic-0.36.jar SE -phred33 ${i}.fastq.gz ${i}_trimmed.fastq.gz ILLUMINACLIP:~/BioinformaticsPackages/Trimmomatic-0.36/adapters/Bradseq_adapter.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 -threads 6
done
