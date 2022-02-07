create_test_pkg <- function(dir = fs::file_temp(pattern = "testpkg")) {

  old_project <- usethis:::proj_get_()
  old_wd <- getwd()

  withr::defer(
    {
      msg_done("Deleting temporary project: {msg_path(dir)}")
      fs::dir_delete(dir)
    },
    envir = parent.frame()
  )

  withr::with_options(list(usethis.quiet = TRUE), {
    usethis::create_package(dir, rstudio = FALSE, open = FALSE, check_name = FALSE)
  })

  withr::defer(usethis::proj_set(old_project, force = TRUE), envir = parent.frame())
  usethis::proj_set(dir)

  withr::defer(
    {
      msg_done("Restoring original working directory and project: {msg_path(old_wd)}.")
      setwd(old_wd)
    },
    envir = parent.frame()
  )

  setwd(usethis::proj_get())
  invisible(usethis::proj_get())

}
