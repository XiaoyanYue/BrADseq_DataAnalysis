files=`ls J*_001.fastq.gz`
for i in $files
 do
 zcat ${i} | echo $i $((`wc -l`/4))
 done
