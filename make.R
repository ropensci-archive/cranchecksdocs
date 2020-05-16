# Paths to Rmd files in content
rmds <- dir(
  "content", 
  pattern = "*.Rmd",
  full.names = TRUE
  )

# Render them all
lapply(
  rmds,
  knitr::knit
  )

# Remove "junk" html files
# (although they're both gitignore and Hugo ignored)
file.remove(
  dir(
    "content", 
    pattern = "*.html",
    full.names = TRUE
  )
)