add_rbuildignore <- function(to_add, path = ".") {

  build_file <- file.path(path, ".Rbuildignore")

  if (!file.exists(build_file)) {
    writeLines("", build_file)
  }

  build_ignore <- readLines(build_file)

  to_ignore <- paste0("^", gsub("[.]", "\\\\.", to_add), "$")

  to_ignore <- to_ignore[!to_ignore %in% build_ignore]

  if (length(to_ignore) != 0) {
    writeLines(enc2utf8(c(build_ignore, to_ignore)), build_file)
  }

}
