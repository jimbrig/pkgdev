c(
  "HOME", # ~
  "LANGUAGE", # en-US
  "LC_ALL",
  "MAKEINDEX",
  "R_BATCH",
  "R_BROWSER",
  "R_COMPLETION",
  "R_DEFAULT_PACKAGES",
  "R_DOC_DIR",
  "R_ENVIRON",
  "R_GSCMD", # GhostScript (dev2bitmap, bitmap, embedFonts)
  "R_HISTFILE",
  "R_HISTSIZE",
  "R_HOME"
) |> purrr::map_chr(Sys.getenv)

Sys.getlocale() # "LC_COLLATE=English_United States.utf8;LC_CTYPE=English_United States.utf8;LC_MONETARY=English_United States.utf8;LC_NUMERIC=C;LC_TIME=English_United States.utf8"
