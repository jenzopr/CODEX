getbambed <- function(bampath, bedFile, sampnameFile, projectname, chr) {
    if ((!file.exists(bedFile)) | (!file.exists(sampnameFile)))
        stop("Please check the file directories provided. Files could not be 
            found!")
    bamFile <- list.files(bampath, pattern = "*.bam$")
    bamdir <- file.path(bampath, bamFile)
    sampname <- as.matrix(read.table(sampnameFile))
    exomtarg <- rtracklayer::import(bedFile, format = "bed")
    ref <- ranges(exomtarg)
    start(ref) <- start(ref) - 1
    if (seqlevels(exomtarg) != chr) 
        message(paste("You have provided chr = ", chr, ". Bed file has chr = ", 
                      seqlevels(exomtarg), "!", sep = ""))
    list(bamdir = bamdir, sampname = sampname, ref = ref, projectname = 
             projectname, chr = chr)
}