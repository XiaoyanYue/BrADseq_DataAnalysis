IFS=$'\n'
for i in $(cat new_lib.txt)
do
a=1
files=`ls ${i}_*_trimmed.fastq.gz`

for j in $files
 
do

names=$(echo $j | sed 's/\_R1_001_trimmed.fastq.gz//g')

new=$(printf "%04d" "$a")

neww=$i-$new

mv $j ${j//$names/$neww}
 
let a=a+1

done

done
