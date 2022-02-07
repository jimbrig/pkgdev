
#  ------------------------------------------------------------------------
#
# Title : pkgdev R Package Development Script
#    By : Jimmy Briggs
#  Date : 2022-02-06
#
#  ------------------------------------------------------------------------

# library R packages ------------------------------------------------------

suppressPackageStartupMessages({

  library(devtools)
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
  library(attachment)
  library(templateeR)

})

# initialize package ------------------------------------------------------

# usethis::create_package("pkgdev")

usethis::use_namespace()
usethis::use_roxygen_md()
usethis::use_git()
usethis::use_package_doc()
usethis::use_tibble() # #' @return a [tibble][tibble::tibble-package]
usethis::use_pipe()
usethis::use_tidy_eval()
usethis::use_testthat()
devtools::document()


# github ------------------------------------------------------------------

# set description and title first so included in GH repo
desc::desc_set(
  "Description" = "Automate and expedite your package development process in R.",
  "Title" = "Suite of Helpers for the R Package Developer"
)

# package version
desc::desc_set_version("0.0.1")

desc::desc_normalize()

usethis::use_github(private = FALSE)

# github labels -----------------------------------------------------------
library(templateeR)
templateeR::use_gh_labels()

# package docs ------------------------------------------------------------

usethis::use_readme_rmd()
usethis::use_mit_license()
usethis::use_package_doc()
usethis::use_news_md()

devtools::build_readme()


# directories -------------------------------------------------------------

c(
  "inst/assets",
  "inst/scripts",
  "inst/extdata",
  # "inst/app",
  "inst/templates"
) %>%
  purrr::walk(fs::dir_create)

# functions ---------------------------------------------------------------

c(
  # add function file names here:
  "msg_helpers",
  "pkg-check-package-name",
  "utils",
  "zzz"
) |> purrr::walk(usethis::use_r, open = FALSE)


# tests -------------------------------------------------------------------

c(
  # add function test file names here:
  "check_package_name",
  "use_feedback_helpers"
) |> purrr::walk(usethis::use_test)

# data --------------------------------------------------------------------

c(
  # add data prep script names here:

) |> purrr::walk(usethis::use_data_raw)

# vignettes ---------------------------------------------------------------

c(
  # add vignette names here:
  "pkgdev"

) |> purrr::walk(usethis::use_vignette)



# pkgdown -----------------------------------------------------------------

usethis::use_pkgdown_github_pages()
# pak::pak("ropensci/chameleon")

library(chameleon)
fs::dir_create("inst/docs")
chameleon::open_pkgdown_function()
attachment::att_amend_desc()
attachment::create_dependencies_file("inst/scripts/dependencies.R")


usethis::use_coverage()
usethis::use_github_action("test-coverage")
covrpage::covrpage()

codemetar::create_codemeta()
codemetar::write_codemeta()
codemetar::give_opinions()
usethis::use_lifecycle_badge("experimental")
devtools::build_readme()

goodpractice::gp()
usethis::use_spell_check()

covr::codecov(path = "tests", token = "ea2e3089-5b2f-4ce8-ae1d-cea82bd577a8")
