% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_package_name.R
\name{check_package_name}
\alias{check_package_name}
\title{Check Package Name}
\usage{
check_package_name(txt)
}
\arguments{
\item{txt}{String - Proposed package name to check the validity of.}
}
\value{
Boolean - TRUE/FALSE
}
\description{
Checks the validity of a text string against the formal R Package naming
requirements specified in the \href{https://cran.r-project.org/doc/manuals/r-devel/R-exts.html}{Writing R Extensions Manual}.
}
\details{
"The mandatory 'Package' field gives the name of the package.
This should contain only (ASCII) letters, numbers and dot, have at least
two characters and start with a letter and not end in a dot." - Writing R Extensions Manual
}
\examples{
# Bad Packages
check_package_name("1pkg")
check_package_name("my_awesome_package")
check_package_name("a")

# Good packages
check_package_name("myawesomepkg")
check_package_name("my.awesome.pkg")
check_package_name("map")
}
