% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download.R
\name{hpaDownload}
\alias{hpaDownload}
\title{Download datasets}
\usage{
hpaDownload(downloadList = "histology", version = "latest")
}
\arguments{
\item{downloadList}{A vector or string indicate which datasets to download.
  Possible value:
  \itemize{
    \item \code{'Normal tissue'}
    \item \code{'Pathology'}
    \item \code{'Subcellular location'}
    \item \code{'RNA consensus tissue'}
    \item \code{'RNA HPA tissue'}
    \item \code{'RNA GTEx tissue'}
    \item \code{'RNA FANTOM tissue'}
    \item \code{'RNA single cell type'}
    \item \code{'RNA single cell type tissue cluster'}
    \item \code{'RNA GTEx brain region'}
    \item \code{'RNA FANTOM brain region'}
    \item \code{'RNA pig brain region'}
    \item \code{'RNA pig brain subregion sample'}
    \item \code{'RNA mouse brain region'}
    \item \code{'RNA mouse brain subregion sample'}
    \item \code{'RNA Allen mouse brain region'}
    \item \code{'RNA HPA immune cell'}
    \item \code{'RNA HPA immune cell sample'}
    \item \code{'RNA Monaco immune cell'}
    \item \code{'RNA Schmiedel immune cell'}
    \item \code{'RNA HPA blood cell'} (version 21.1)
    \item \code{'RNA HPA blood cell sample'} (version 21.1)
    \item \code{'RNA Monaco blood cell'} (version 21.1)
    \item \code{'RNA Schmiedel blood cell'} (version 21.1)
    \item \code{'RNA HPA cell line cancer'}
    \item \code{'RNA HPA cell line'}
    \item \code{'RNA TCGA cancer sample'}
    \item \code{'RNA transcript tissue'}
    \item \code{'RNA transcript GTEx retina'}
    \item \code{'RNA transcript immune cells'}
    \item \code{'RNA transcript cell line'} (version 21.1)
    \item \code{'RNA transcript pig brain'}
    \item \code{'RNA transcript mouse brain'}
    }

  You can also use the following shortcuts:
  \itemize{
    \item \code{'all'}: download everything
    \item \code{'histology'}: same as \code{c('Normal tissue', 'Pathology',
    'Subcellular location')}
    \item \code{'rna tissue'}: same as \code{c('RNA consensus tissue', 'RNA
    HPA tissue', 'RNA GTEx tissue', 'RNA FANTOM tissue')}
    \item \code{'rna cell type'}: same as \code{c('RNA single cell
    type', 'RNA single cell type tissue cluster')}
    \item \code{'rna brain region'}: same as \code{c('RNA GTEx brain region',
    'RNA FANTOM brain region', 'RNA pig brain region', 'RNA pig brain
    subregion sample', 'RNA mouse brain region', 'RNA mouse brain subregion
    sample', 'RNA Allen mouse brain region')}
    \item \code{'rna immune cell'}: same as \code{c('RNA HPA immune
    cell', 'RNA HPA immune cell sample', 'RNA Monaco immune cell', 'RNA
    Schmiedel immune cell')}
    \item \code{'rna blood cell'}: same as \code{c('RNA HPA blood
    cell', 'RNA HPA blood cell sample', 'RNA Monaco blood cell', 'RNA
    Schmiedel blood cell')}
    \item \code{'isoform'}: same as \code{c('RNA transcript tissue', 'RNA 
    transcript GTEx retina', 'RNA transcript immune cells', 'RNA
    transcript cell line', 'RNA transcript pig brain', 'RNA transcript mouse
    brain')}
  }
  See \url{https://www.proteinatlas.org/about/download} for more information.}

\item{version}{A string indicate which version to be downloaded. Possible
value:
\itemize{
  \item \code{'latest'}: Download latest version. Certain legacy datasets
  will be downloaded with the highest version available. Require Internet
  connection. This is the default option.
  \item \code{'example'} or \code{'built-in'}: Load the built-in histology
  dataset from 'HPAanalyze' ('hpa_histology_data'). Do not require internet
  connection.
}}
}
\value{
This function will return a list of tibbles corresponding to
  requested datasets.
}
\description{
Download the latest version of HPA datasets and import them in R. It is
recommended to only download the datasets you need, as some of them may be
very big.
}
\examples{
  histologyData <- hpaDownload(downloadList='histology', version='example')
  # tissueTranscriptData <- hpaDownload('RNA transcript tissue')

}
\seealso{
\code{\link{hpaDownload}} \code{\link{hpa_histology_data}}

Other downloadable datasets functions: 
\code{\link{hpaExport}()},
\code{\link{hpaSubset}()}
}
\concept{downloadable datasets functions}
