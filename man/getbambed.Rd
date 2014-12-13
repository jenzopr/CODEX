\name{getbambed}
\alias{getbambed}
\title{
Get bam file directories, sample names, and exonic positions
}
\description{
Gets bam file directories, sample names from .txt file, and exonic positions 
from .bed file.
}
\usage{
getbambed(bampath,bedFile,sampnameFile,projectname,chr)
}
\arguments{
    \item{bampath}{
        Path to directory where .bam files are stored.
    }
    \item{bedFile}{
        Path to bed file specifying exonic targets. Is of type character.
    }
    \item{sampnameFile}{
        Path to file containing sample names. Is of type character. No headers 
        allowed.
    }
    \item{projectname}{
        String specifying the name of the project. Data will be saved using this
        as prefix.
    }
    \item{chr}{
        Chromosome.
    }
}
\value{
    \item{bamdir}{Bam directories}
    \item{sampname}{Sample names}
    \item{ref}{IRanges object specifying exonic positions}
    \item{projectname}{String specifying the name of the project.}
    \item{chr}{Chromosome}
}
\references{
Lawrence M, Huber W, Pages H, Aboyoun P, Carlson M, Gentleman R, Morgan M and
Carey V (2013). "Software for Computing and Annotating Genomic Ranges." PLoS
Computational Biology, 9.
}
\author{
Yuchao Jiang \email{yuchaoj@wharton.upenn.edu}
}
\seealso{
    \code{\link{getcoverage}}
}
\examples{
library(WES.1KG.WUGSC)
dirPath <- system.file("extdata", package = "WES.1KG.WUGSC")
chr <- 22
bambedObj <- getbambed(bampath = dirPath, bedFile = file.path(dirPath, 
    "chr22_400_to_500.bed"), sampnameFile = file.path(dirPath, "sampname"),
    projectname = "CODEX_demo", chr)
bamdir <- bambedObj$bamdir
sampname <- bambedObj$sampname
ref <- bambedObj$ref
projectname <- bambedObj$projectname
chr <- bambedObj$chr
}
\keyword{ package }