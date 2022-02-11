#' Library Package Development Packages
#'
#' @description
#' This function simply libraries package development R packages into your
#' environment. See details for which packages are loaded in.
#'
#' @details
#' The following packages get library'd:
#'   - usethis
#'   - devtools
#'   - pkgload
#'   - pkgdown
#'   - testthat
#'   - pkgdown
#'   - testthat
#'   - roxygen2
#'   - knitr
#'   - pak
#'   - purrr
#'   - desc
#'   - chameleon
#'   - attachment
#'
#' @param ... For future use.
#'
#' @return invisible
#' @export
#'
#' @importFrom cli symbol
#' @importFrom purrr walk
library_dev_packages <- function(...) {

  txt <- 'library(devtools)
  library(usethis)
  library(pkgbuild)
  library(pkgload)
  library(pkgdown)
  library(testthat)
  library(knitr)
  library(pak)
  library(purrr)
  library(desc)
  library(chameleon)
  library(attachment)'

  suppressPackageStartupMessages({ eval(parse(text = txt)) })

  msg_done("Successfully library'd the following packages:")
  purrr::walk(c("devtools", "usethis", "pkgbuild", "pkgload", "pkgdown", "testthat",
                "roxygen2", "knitr", "pak", "purrr", "desc", "chameleon", "attachment"),
              msg_bullet, bullet = cli::symbol$tick)

  invisible(0)

}

