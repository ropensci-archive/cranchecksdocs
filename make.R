rmds <- fs::dir_ls(
  "content", 
  glob = "*.Rmd"
  )

purrr::walk(
  rmds,
  rmarkdown::render
  )

fs::file_delete(
  fs::dir_ls("content", glob = "*.html")
)