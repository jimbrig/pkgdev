
#' Check Package Name
#'
#' Checks the validity of a text string against the formal R Package naming
#' requirements specified in the [Writing R Extensions Manual](https://cran.r-project.org/doc/manuals/r-devel/R-exts.html).
#'
#' @details
#' "The mandatory 'Package' field gives the name of the package.
#'  This should contain only (ASCII) letters, numbers and dot, have at least
#'  two characters and start with a letter and not end in a dot." - Writing R Extensions Manual
#'
#' @param txt String - Proposed package name to check the validity of.
#'
#' @return Boolean - TRUE/FALSE
#' @export
#'
#' @examples
#' # Bad Packages
#' check_package_name("1pkg")
#' check_package_name("my_awesome_package")
#' check_package_name("a")
#'
#' # Good packages
#' check_package_name("myawesomepkg")
#' check_package_name("my.awesome.pkg")
#' check_package_name("map")
check_package_name <- function(txt) {
  grepl("^[a-zA-Z][a-zA-Z0-9.]+$", txt) && !grepl("\\.$", txt)
}
