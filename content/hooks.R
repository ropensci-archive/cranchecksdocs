# Options to have images saved in the post folder
# And to disable symbols before output
knitr::opts_chunk$set(fig.path = "", comment = "")


# knitr hooks
knitr::knit_hooks$set(
  source = function(x, options) {
    if(options$results == "asis") {
      paste0(
        "```shell\n",
        paste("curl",
              gsub(",", "",
              gsub('\\"\\)*', "",
                   gsub('args <- c\\(\\"', "", x[1])
              )
              )
        ),
        " | jq .\n```\n"
      )
    } else {
      paste0("\n```r\n",
             x,
             "\n```\n")
    }
  }
)

knitr::knit_hooks$set(
  output = function(x, options) {
    x <- gsub(Sys.getenv("CCHKS_TOKEN"), "***", x)
    
    if(options$results == "asis") {
      x
    } else {
      paste0(
        "```r\n",
        x,
        "\n```\n"
      ) 
    }
  }
  
)

get_and_show <- function(args) {
    curl_output <- processx::run(
      "curl", 
      c("-i", args)
    )$stdout
    
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
      output <- paste0(curl_output_l[(limit + 1):length(curl_output_l)], collapse = "\n")
    }
    
    cat(
    paste0(
        headers,
        "```", lang(output),"\n",
        paste0(
          capture.output(transform_output(output)),
        collapse = "\n"),
        "\n```\n"
      )
      )
    
}