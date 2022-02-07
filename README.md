
<!-- README.md is generated from README.Rmd. Please edit that file -->

# R Package Developer’s Toolkit - `pkgdev`

<!-- badges: start -->
<!-- badges: end -->

The goal of `pkgdev` is to provide the R Package Developer a suite of
tools to simplify and aid the various processes involved with creating,
developing, testing, maintaining, and overall management of their R
Packages.

## Installation

You can install the development version of `pkgdev` with `pak` like so:
[^1]

``` r
pak::pak("jimbrig/pkgdev")
```

## Usage

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

------------------------------------------------------------------------

------------------------------------------------------------------------

Jimmy Briggs \| <jimmy.briggs@jimbrig.com> \| 2022

[^1]: Similarly, you can install the package using the more common
    `devtools::install_github()` and `remotes::install_github()`. If you
    need to install `pak`, install the development version using
    `install.packages("pak", repos = "https://r-lib.github.io/p/pak/devel/")`.
