rmds <- dir(
  "content", 
  pattern = "*.Rmd",
  full.names = TRUE
  )

lapply(
  rmds,
  rmarkdown::render
  )

file.remove(
  dir(
    "content", 
    pattern = "*.html",
    full.names = TRUE
  )
)