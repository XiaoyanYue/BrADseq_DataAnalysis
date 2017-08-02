cd ~/RSA_BrAD_seq_Data/

mkdir kallisto_indexed_cds

cd ~/RSA_BrAD_seq_Data/kallisto_indexed_cds

kallisto index -k 19 -i ref_ITAG3.2_cds.19.kai ~/RSA_BrAD_seq_Data/lyco_CDS/ftp.solgenomics.net/tomato_genome/annotation/ITAG3.2_release/ITAG3.2_CDS.fasta
