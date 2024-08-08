knitr::knit_engines$set(sage = function(options) {
  code <- paste(options$code, collapse = '\n')
  out  <- system2(
    'sage', c('-c', shQuote(code)), stdout = TRUE
  )
  knitr::engine_output(options, code, out)
})