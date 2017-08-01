summary.txt <- read.delim2("/Users/xyyue/Documents/Phosphrous_project/RNAseq_for_LateralRoots/RNAseq_data_analysis/summary_trimmed_all.txt",header = F)

#names(summary.txt) <- c("quality","items","dataset")

library(reshape2)

fastQC_summary_wide <- reshape(summary.txt, timevar="V2",idvar="V3",direction="wide")

colnames(fastQC_summary_wide) <- gsub("(V1)(.)([[:print:]]+)","\\3",colnames(fastQC_summary_wide))

fastQC_summary_wide

write.csv(fastQC_summary_wide, file = "new_fastQC_summary_trimmed_wide.csv")
