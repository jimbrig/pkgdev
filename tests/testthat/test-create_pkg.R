test_that("create_pkg works", {
  newpkgdir <- tempdir()
  create_pkg(newpkgdir, open = FALSE, rstudio = FALSE, check_name = FALSE)
  expect_true(
    file.exists(fs::path(newpkgdir, "inst/scripts/pkgdevt.R"))
  )
  fs::dir_delete(newpkgdir)
})
