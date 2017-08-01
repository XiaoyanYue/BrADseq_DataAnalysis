mkdir mapping_STAR_results
files=`ls J*fastq.gz`
for i in $files
do
echo $i
STAR --genomeDir ~/SunShade_DEgenes_2016/Index_reference_genome/lyco_starIndex/  --runThreadN 4 --readFilesIn ${i} --readFilesCommand zcat --outFileNamePrefix ~/RSA_BrAD_seq_Data/new_trimmed_results/mapping_STAR_results/${i}_STAR --outSAMtype BAM SortedByCoordinate
done
