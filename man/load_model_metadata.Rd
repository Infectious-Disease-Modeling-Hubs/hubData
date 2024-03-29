% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_model_metadata.R
\name{load_model_metadata}
\alias{load_model_metadata}
\title{Compile hub model metadata}
\usage{
load_model_metadata(hub_path, model_ids = NULL)
}
\arguments{
\item{hub_path}{Either a character string path to a local Modeling Hub directory
or an object of class \verb{<SubTreeFileSystem>} created using functions \code{\link[=s3_bucket]{s3_bucket()}}
or \code{\link[=gs_bucket]{gs_bucket()}} by providing a string S3 or GCS bucket name or path to a
Modeling Hub directory stored in the cloud.
For more details consult the
\href{https://arrow.apache.org/docs/r/articles/fs.html}{Using cloud storage (S3, GCS)}
in the \code{arrow} package.}

\item{model_ids}{A vector of character strings of models for which to load
metadata. Defaults to NULL, in which case metadata for all models is loaded.}
}
\value{
\code{tibble} with model metadata. One row for each model, one column for
each top-level field in the metadata file. For metadata files with nested structures,
this tibble may contain list-columns where the entries are lists containing the nested metadata values.
}
\description{
Loads in hub model metadata for all models or a specified subset of models
and compiles it into a tibble with one row per model.
}
\examples{
# Load in model metadata from local hub
hub_path <- system.file("testhubs/simple", package = "hubUtils")
load_model_metadata(hub_path)
load_model_metadata(hub_path, model_ids = c("hub-baseline"))
}
