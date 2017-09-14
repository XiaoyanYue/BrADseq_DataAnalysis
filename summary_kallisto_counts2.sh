cut -f 1 JILM1_S82_cut_abundance.tsv > all.tsv
 
files=`ls J*_abundance.tsv | sed 's/\_cut_abundance.tsv//g'`

for i in $files

do

join all.tsv ${i}_cut_abundance.tsv > tmpf.tsv

mv tmpf.tsv all.tsv

done

mv all.tsv summary.tsv
