mkdir ~/RSA_BrAD_seq_Data/kallisto_indexed_penn_cds

cd ~/RSA_BrAD_seq_Data/kallisto_indexed_penn_cds

kallisto index -k 19 -i ref_Spenn_cds.19.kai ~/RSA_BrAD_seq_Data/original_penn_CDS/ftp.solgenomics.net/genomes/Solanum_pennellii/annotations/Spenn-v2-cds-annot.fa
