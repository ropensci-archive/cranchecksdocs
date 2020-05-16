# Paths to Rmd files in content
rmds <- list.files(
  file.path(getwd(), "content"), 
  pattern = "*.Rmd",
  full.names = TRUE
  )

pwd <- getwd()
setwd("content")
# Render them all
lapply(
  rmds,
  knitr::knit
  )
setwd(pwd)
# Remove "junk" html files
# (although they're both gitignore and Hugo ignored)
file.remove(
  dir(
    "content", 
    pattern = "*.html",
    full.names = TRUE
  )
)