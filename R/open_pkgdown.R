#' Open pkgdown site of the package
#'
#' @importFrom utils browseURL
#'
#' @export
#'
#' @examples
#' \dontrun{
#' open_pkgdown()
#' }
open_pkgdown <- function() {
      guide_path <- system.file('docs/index.html', package = 'pkgdev') # nocov
      browseURL(paste0('file://', guide_path))
}
