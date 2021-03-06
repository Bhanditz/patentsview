% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cast-pv-data.R
\name{cast_pv_data}
\alias{cast_pv_data}
\title{Cast PatentsView data}
\usage{
cast_pv_data(data)
}
\arguments{
\item{data}{The data returned by \code{\link{search_pv}}. This is the first
element of the three-element result object you got back from
\code{search_pv}. It should be a list of length 1, with one data frame
inside it. See examples.}
}
\value{
The same type of object that you passed into \code{cast_pv_data}.
}
\description{
This will cast the data fields returned by \code{\link{search_pv}} so that
they have their most appropriate data types (e.g., date, numeric, etc.).
}
\examples{
\dontrun{

fields <- c("patent_date", "patent_title", "patent_year")
res <- search_pv(query = "{\\"patent_number\\":\\"5116621\\"}", fields = fields)
cast_pv_data(data = res$data)
}

}
