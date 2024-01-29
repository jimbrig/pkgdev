# R Database Connection Helper Functions

>   Description

## Contents

[TOC]

## Overview



## Pool

### `pool_connect`

```r
pool_connect <- function(..., config = NULL, schema = NULL) {
  if (is.null(config)) {
    stopifnot(
    	'dbname' %in% names(config),
      'host' %in% names(config),
      'port' %in% names(config),
      'user' %in% names(config),
      'password' %in% names(config)
    )
  } else {
    config <- config::get("db")
  }
  
  opts <- schema
  if (!is.null(opts)) opts <- paste0("-c search_path=", schema)
  
  conn <- pool::dbPool(
    RPostgres::Postgres(),
    dbname = config$dbname,
    host = config$host,
    port = config$port,
    user = config$user,
    password = config$password,
    options = opts
  )
  
  if (!pool::dbIsValid(conn)) stop("Connection is not valid, please try again.")
  
  options(pool.conn = conn)
  
  conn
}
```

### `get_pool()`

