convert_df_to_md <- function(df, center_cols = TRUE, ...) {

  cols <- as.character(names(df))

  headr <- paste0(
    c(
      "|",
      purrr::map_chr(cols, create_md_head)
    ),
    collapse = ""
  )

  sepr <- paste0(
    c(
      "|",
      purrr::map_chr(cols, create_md_sep, align = "center")
    ),
    collapse = ""
  )

  top <- paste0(c(headr, sepr), collapse = "\n")

  st <- "|"
  for (i in 1:nrow(df)) {
    for (j in 1:ncol(df)) {
      if (j %% ncol(df) == 0) {
        st <- paste0(
          st,
          as.character(df[i, j]),
          "|",
          "\n",
          "",
          "|",
          collapse = ""
        )
      } else {
        st <- paste0(st, as.character(df[i, j]), "|", collapse = "")
      }
    }
  }

  fin <- paste0(c(headr, sepr, substr(st, 1, nchar(st) - 1)), collapse = "\n")

  cat(fin)

}



create_md_head <- function(word, ...) {

  len <- nchar(word)
  if (len <= 3) {
    pref <- "  "
    suff <- "  "
  } else {
    pref <- " "
    suff <- " "
  }

  out <- paste0(pref, word, suff, collapse = "")

  if (nchar(out) < 7) {
    out <- paste0(out, rep(" ", (7 - nchar(out))), collapse = "")
  }

  out <- paste0(out, "|")

  return(out)

}

create_md_sep <- function(word, align = c("left", "right", "center")) {

  align <- match.arg(align)

  len <- nchar(word)
  len_dash <- max(3, len - 2)

  if (align == "center") {
    out <- paste0(
      ":",
      paste0(rep("-", len_dash), collapse = ""),
      ":",
      collapse = ""
    )
  } else if (align == "right") {
    out <- paste0(
      paste0(rep("-", len_dash), collapse = ""),
      ":",
      collapse = ""
    )
  } else {
    out <- paste0(rep("-", len_dash), collapse = "")
  }

  out <- paste0(" ", out, " |")

  return(out)

}
