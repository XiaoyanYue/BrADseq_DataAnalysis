cd /RSA_BrAD_seq_Data/original_lyco_genome_with_annotation/

mkdir star_indexed_genome

STAR  --runMode genomeGenerate --runThreadN 4 --genomeDir ~/RSA_BrAD_seq_Data/original_lyco_genome_with_annotation/star_indexed_genome/ --genomeFastaFiles S_lycopersicum_scaffolds.2.50.fa --sjdbGTFfile ITAG3.2_gene_models.gff --sjdbGTFtagExonParentTranscript Parent --sjdbGTFfeatureExon CDS
