#' Create R Package
#'
#' @description
#' This function is a wrapper around [usethis::create_package()] with some
#' added functionality listed in details below.
#'
#' @param path Path to create package
#' @param pkgdevt_script Boolean - Should a `pkgdevt.R` script be created?
#' @param ... Passed onto [usethis::create_package()]
#'
#' @return invisibly returns 0; used for side-effects.
#' @export
#'
#' @importFrom rstudioapi openProject
#' @importFrom usethis create_package with_project
create_pkg <- function(path, pkgdevt_script = TRUE, open = TRUE, ...) {

  usethis::create_package(path = path, open = FALSE, ...)
  if (pkgdevt_script) usethis::with_project(path = path, use_pkgdevt_script())
  if (open) rstudioapi::openProject(path = path)
  invisible(0)

}
