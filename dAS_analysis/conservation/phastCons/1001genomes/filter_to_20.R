filter_to_20 <- function(folder){
  fastas <- list.files(path = folder, pattern = "*.fa*")
  for (fasta in fastas){
    file <- as.data.frame(read.fasta(paste(folder, "/", fasta, sep="")))
    file <- filter(file, seq.name %in% subset$X1)     
    dat2fasta(file, paste(folder, "/", str_sub(basename(fasta), 1, 9), "_20snps.fasta", sep =""))
  }
}
