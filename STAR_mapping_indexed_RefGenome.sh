files=`ls J*_trimmed.fastq.gz | sed 's/\_trimmed.fastq.gz//g' | sed 's/\_trimmed.fastq.gz//g'`

for i in $files

do

echo $i

STAR --genomeDir ~/RSA_BrAD_seq_Data/original_lyco_genome_with_annotation/star_indexed_genome/ --readFilesIn ${i}_trimmed.fastq.gz --outFileNamePrefix ~/RSA_BrAD_seq_Data/new_trimmed_results2/combined_fastq/${i}_genome_with_annotation_STARsorted --outSAMtype BAM SortedByCoordinate --sjdbGTFfile ~/RSA_BrAD_seq_Data/original_lyco_genome_with_annotation/ITAG3.2_gene_models.gff --quantMode TranscriptomeSAM GeneCounts --twopassMode Basic --alignIntronMax 15000 --outFilterIntronMotifs RemoveNoncanonical --runThreadN 4 --sjdbGTFtagExonParentTranscript Parent --sjdbGTFfeatureExon CDS --outReadsUnmapped fastx

done
