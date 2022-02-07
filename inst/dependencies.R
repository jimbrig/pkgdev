# No Remotes ----
# Attachments ----
to_install <-
  c("attachment",
    "cli",
    "crayon",
    "devtools",
    "fs",
    "glue",
    "here",
    "rlang",
    "usethis")
for (i in to_install) {
  message(paste("looking for ", i))
  if (!requireNamespace(i)) {
    message(paste("     installing", i))
    install.packages(i)
  }
}
