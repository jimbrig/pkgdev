#' #' Create R Package
#' #'
#' #' @description
#' #' This function is a wrapper around [usethis::create_package()] with some
#' #' added functionality listed in details below.
#' #'
#' #' @param path Path to create package
#' #' @param pkgdevt_script Boolean - Should a `pkgdevt.R` script be created?
#' #' @param open Should the new package be opened?
#' #' @param ... Passed onto [usethis::create_package()]
#' #'
#' #' @return invisibly returns 0; used for side-effects.
#' #' @export
#' #'
#' #' @importFrom rstudioapi openProject
#' #' @importFrom usethis create_package with_project
#' create_pkg <- function(path, pkgdevt_script = TRUE, open = TRUE, ...) {
#'
#'   usethis::create_package(path = path, open = FALSE, ...)
#'   if (pkgdevt_script) usethis::with_project(path = path, use_pkgdevt_script(open = FALSE))
#'   if (open) rstudioapi::openProject(path = path)
#'   invisible(0)
#'
#' }
#'
#'
#' new_pkg <- function(
#'   name,
#'   path = getwd(),
#'   description = getOption("pkgdev.description", default = getOption("usethis.description", default = NULL)),
#'   name_check = TRUE,
#'   rstudio = TRUE,
#'   roxygen = TRUE,
#'   testthat = TRUE,
#'   pkgdown = TRUE,
#'   changelog = TRUE,
#'   git = TRUE,
#'   github= TRUE,
#'   github_actions = c(),
#'   github_labels = c(),
#'   dependabot = TRUE,
#'   stale = TRUE,
#'   gitignore = TRUE,
#'   gitattributes = TRUE,
#'   devcontainer = TRUE,
#'   docker = TRUE,
#'   attachment = TRUE,
#'   papillon = TRUE,
#'   ...
#' ) {
#'
#'   # setup logging
#'   log_lvl <- Sys.getenv("LOG_LEVEL", unset = "INFO")
#'
#'
#' }
#'
#'
#'
#'   opts = list(
#'     "dev_dir" = TRUE,
#'     "pkgdevt_script" = TRUE,
#'
#'   )
#'
#'
#' )
