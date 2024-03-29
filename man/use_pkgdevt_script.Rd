% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_pkgdevt_script.R
\name{use_pkgdevt_script}
\alias{use_pkgdevt_script}
\title{Use a \code{pkgdevt.R} script}
\usage{
use_pkgdevt_script(
  package_name = basename(getwd()),
  package_author = Sys.getenv("FULLNAME", ""),
  package_description = "My awesome description.",
  package_title = "My awesome title",
  github_private_repo = FALSE,
  open = TRUE,
  ...
)
}
\arguments{
\item{package_name}{Name of your package}

\item{package_author}{Author}

\item{package_description}{Description}

\item{package_title}{Title}

\item{github_private_repo}{Logical}

\item{open}{Should the file be opened?}

\item{...}{if necessary}
}
\value{
Invisible
}
\description{
This function adds a script to \code{inst/scripts/pkgdevt.R} to keep track of the
various steps applied setting up your R package.
}
\details{
For details see this package's \code{pkgdevt.R} script by running:

\code{file.edit(fs::path_package("pkgdev", "scripts/pkgdevt.R"))}.
}
\examples{
\dontrun{
use_pkgdevt_script("testPackage",
                   package_description = "My awesome description.",
                   package_title = "package title",
                   github_private_repo = FALSE)
}

}
\seealso{
\url{https://github.com/jimbrig/pkgdev/blob/main/inst/scripts/pkgdevt.R}
}
