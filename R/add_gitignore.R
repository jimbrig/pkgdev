add_gitignore <- function(to_add, path = ".") {

  gitignore_file <- file.path(path, ".gitignore")

  if (!file.exists(gitignore_file)) {
    writeLines("", gitignore_file)
  }

  git_ignore <- readLines(gitignore_file)

  to_ignore <- to_add[!to_add %in% git_ignore]

  if (length(to_ignore) != 0) {
    writeLines(enc2utf8(c(git_ignore, to_ignore)), gitignore_file)
  }

}
