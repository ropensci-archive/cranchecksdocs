# Options to have images saved in the post folder
# And to disable symbols before output
knitr::opts_chunk$set(fig.path = "", comment = "")

# knitr message hook
knitr::knit_hooks$set(message = function(x, options) { 
  paste0(
    "```r\n",
    paste("#", x),
    "```\n",
    collapse = "\n"
  )
})

# knitr hook to render source code
# differently when it's shell code (results == "asis")
# vs R code
knitr::knit_hooks$set(
  source = function(x, options) {

    if(options$results == "asis") {
      eval(parse(text = x[1]))
      args <- gsub(Sys.getenv("CCHECKS_TOKEN"), "***", args)
      if(any(args %in% c("https://cranchecks.info/docs", "-XDELETE")) || any(grepl("badges", args))) {
        paste0(
          "```shell\n",
          paste("curl",
                paste0(args, collapse = " ")
          ),
          "\n```\n"
        )
      } else {
        paste0(
          "```shell\n",
          paste("curl",
                paste0(args, collapse = " ")
          ),
          " | jq .\n```\n"
        )
      }
    } else {
      if(grepl("engine", options$params.src)) {
        engine <- "shell"
      } else{
        engine <- "r"
      }
      paste0("\n```", engine,"\n",
             x,
             "\n```\n")
    }
  }
)

# knitr hook to render output differently when it's R code
# vs shell code (results == "asis")
knitr::knit_hooks$set(
  output = function(x, options) {
    
    if(options$results == "asis") {
      x
    } else {
      if(grepl("engine", options$params.src)) {
        engine <- "shell"
      } else{
        engine <- "r"
      }
      paste0(
        "```", engine, "\n",
        x,
        "\n```\n"
      ) 
    }
  }
  
)

# Helper function to run shell code based on args given
get_and_show <- function(args) {
   args <- gsub('^"', "", args)
   args <- gsub('"$', "", args)
   args <- gsub("^'", "", args)
   args <- gsub("'$", "", args)
   args <- args[args != "\\\n"]
    curl_output <- processx::run(
      "curl",
      c("-i", "--http2", args) # -i to get headers
    )$stdout
    
    # String manipulation to separate headers from JSON/XML output
    curl_output_l  <- unlist(strsplit(curl_output, "\n"))
    limit <- which(curl_output_l == "\r")
    
    headers <- paste0(
        "```yaml\n",
        paste0(curl_output_l[1:limit], collapse = "\n"),
        "\n```\n"
      )
      
    if (limit == length(curl_output_l)) {
      return(cat(headers))
    }
    
    lang <- function(output) {
      if (grepl("^<svg", output)) {
        return("xml")
      }
      
      return("json")
    }
    
    transform_output <- function(output) {
      if (grepl("^<svg", output)) {
        cat(as.character(xml2::read_xml(output)))
      } else {
        print(jqr::jq(output, "."))
      }
    }
    
    if (limit+1 == length(curl_output_l)) {
      
      output <- curl_output_l[limit + 1]
      
    } else {
      
      output <- paste0(
        curl_output_l[(limit + 1):length(curl_output_l)], 
        collapse = "\n"
        )
    }
    
    cat(
      paste0(
          headers,
          "```", 
          lang(output),
          "\n",
          paste0(
            capture.output(
              transform_output(
                output
                )
              ),
          collapse = "\n"
          ),
          "\n```\n"
          )
    )
    
}