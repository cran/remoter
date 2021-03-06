% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s2c.r
\name{s2c}
\alias{s2c}
\title{Server-to-Client Object Transfer}
\usage{
s2c(object, newname, env = .GlobalEnv)
}
\arguments{
\item{object}{A remote R object.}

\item{newname}{The name the object should take when it is stored on the local
client's R session. Must be the form of a character string.
If left blank, the local name will be the same as the original
(remote) object's name.}

\item{env}{The environment into which the assignment will take place. The
default is the global environment.}
}
\value{
Returns \code{TRUE} invisibly on successful exit.
}
\description{
This function allows you to pass an object from the server to
the local R session behind the client.
}
\details{
Localize R objects.


A \code{newname}, if specified, must be passed as a string
(not a literal; i.e., \code{"mynewname"}, not \code{mynewname}).
The name must also be syntactically valid (see \code{?make.names}).
}
\examples{
\dontrun{
### Prompts are listed to clarify when something is eval'd locally vs remotely
> library(remoter)
> y
###  Error: object 'y' not found
> remoter::connect("my.remote.server")
remoter> x
### Error: object 'x' not found
remoter> x <- "some data"
remoter> x
###  [1] "some data" 
remoter> s2c(x, "y")
remoter> q()
> y
###  [1] "some data"
}

}
