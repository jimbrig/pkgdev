
<!-- README.md is generated from README.Rmd. Please edit that file -->

# R Package Developer’s Toolkit - `pkgdev`

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/jimbrig/pkgdev/branch/main/graph/badge.svg)](https://app.codecov.io/gh/jimbrig/pkgdev?branch=main)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
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

`pkgdev` comes with many tools out-of-the-box for package developer’s in
R to quickly get started:

### Create a new package

To create a new R package locally, run `pkgdev::create_pkg()`:

``` r
pkgdev::create_pkg("myawesomepkg", pkgdevt_script = TRUE, github = TRUE)
```

This will perform the following steps:

1.  Create a new directory called `myawesomepkg`
2.  Initialize an RStudio project, `myawesomepkg.Rproj`, within that
    directory
3.  

------------------------------------------------------------------------

------------------------------------------------------------------------

Jimmy Briggs \| <jimmy.briggs@jimbrig.com> \| 2022

[^1]: Similarly, you can install the package using the more common
    `devtools::install_github()` and `remotes::install_github()`. If you
    need to install `pak`, install the development version using
    `install.packages("pak", repos = "https://r-lib.github.io/p/pak/devel/")`.
