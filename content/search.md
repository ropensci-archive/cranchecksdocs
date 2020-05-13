---
weight: 21
title: Search
output: 
  html_document:
    keep_md: true
---



# Search

Search package history data.
This is a full text search ONLY of the output in `check_details` field.

`GET [/search]`



Parameters:

q (string)
: full text query, e.g, q=memory

package (string)
: a package name. limit results to a single package, e.g, package=taxize

one_each (boolean)
: if true, return a single result for each package; useful if you want to find out what packages have match a particular query, and don't care which day that match happened. default: false; e.g., one_each=true

fields (string)
: comma separated string with field to return, e.g., fields=package,check_details

limit/offset
: see [pagination docs](#pagination)


```shell
curl https://cranchecks.info/search?q=memory | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 48763
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 13 May 2020 09:25:34 GMT

```
```json
{
    "error": null,
    "count": 481,
    "returned": 10,
    "data": [
        {
            "package": "tidyft",
            "date_updated": "2020-04-13T15:03:40.000Z",
            "summary": {
                "any": true,
                "ok": 5,
                "note": 0,
                "warn": 2,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.4.5",
                    "tinstall": 5.1,
                    "tcheck": 56.12,
                    "ttotal": 61.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.77,
                    "tcheck": 51.48,
                    "ttotal": 55.25,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.32,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 75.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.33,
                    "tcheck": 49.44,
                    "ttotal": 52.77,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 75636900, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179b1580, cause 'memory not mapped'\nWarning: stack imbalance in 'lazyLoadDBfetch', 111 then 113\nWarning: stack imbalance in 'lazyLoadDBfetch', 116 then 115\nQuitting from lines 92-105 (Introduction.Rmd) \n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: quiet(envir = (if (grepl(ft %>% select_fst(Species, \"\\\\.[Rr]rst$\",     file), rename(group = Species, sl = Sepal.Length, sw = Sepal.Width))) ft %>%     select_fst(Species, \"\\\\.[Rr]rst$\", file) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) else arrange(group,     sl)) %>% filter(sl > 5), quiet(encoding = enc, .keep_all = TRUE)) %>%     summarise(sw = max(sw), by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame(), names, parentenv,     handlers[[1L]])\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests-devel/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpRnaOcm/file181558bbbf1.rds\")\nAn irrecoverable exception occurred",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-04-14T15:03:39.000Z",
            "summary": {
                "any": true,
                "ok": 6,
                "note": 0,
                "warn": 2,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.4.5",
                    "tinstall": 5.1,
                    "tcheck": 56.12,
                    "ttotal": 61.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.97,
                    "tcheck": 51.12,
                    "ttotal": 55.09,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.32,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.21,
                    "tcheck": 52.2,
                    "ttotal": 56.41,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 75.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.99,
                    "tcheck": 53.13,
                    "ttotal": 57.12,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 75636900, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179b1580, cause 'memory not mapped'\nWarning: stack imbalance in 'lazyLoadDBfetch', 111 then 113\nWarning: stack imbalance in 'lazyLoadDBfetch', 116 then 115\nQuitting from lines 92-105 (Introduction.Rmd) \n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: quiet(envir = (if (grepl(ft %>% select_fst(Species, \"\\\\.[Rr]rst$\",     file), rename(group = Species, sl = Sepal.Length, sw = Sepal.Width))) ft %>%     select_fst(Species, \"\\\\.[Rr]rst$\", file) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) else arrange(group,     sl)) %>% filter(sl > 5), quiet(encoding = enc, .keep_all = TRUE)) %>%     summarise(sw = max(sw), by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame(), names, parentenv,     handlers[[1L]])\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests-devel/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpRnaOcm/file181558bbbf1.rds\")\nAn irrecoverable exception occurred",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-04-15T15:03:37.000Z",
            "summary": {
                "any": true,
                "ok": 7,
                "note": 0,
                "warn": 2,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.4.5",
                    "tinstall": 4.26,
                    "tcheck": 54.59,
                    "ttotal": 58.85,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.39,
                    "tcheck": 50.43,
                    "ttotal": 53.82,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.32,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64-gcc8",
                    "version": "0.4.5",
                    "tinstall": 11,
                    "tcheck": 68,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64-gcc8/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.21,
                    "tcheck": 52.2,
                    "ttotal": 56.41,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 75.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.99,
                    "tcheck": 53.13,
                    "ttotal": 57.12,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 75636900, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179b1580, cause 'memory not mapped'\nWarning: stack imbalance in 'lazyLoadDBfetch', 111 then 113\nWarning: stack imbalance in 'lazyLoadDBfetch', 116 then 115\nQuitting from lines 92-105 (Introduction.Rmd) \n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: quiet(envir = (if (grepl(ft %>% select_fst(Species, \"\\\\.[Rr]rst$\",     file), rename(group = Species, sl = Sepal.Length, sw = Sepal.Width))) ft %>%     select_fst(Species, \"\\\\.[Rr]rst$\", file) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) else arrange(group,     sl)) %>% filter(sl > 5), quiet(encoding = enc, .keep_all = TRUE)) %>%     summarise(sw = max(sw), by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame(), names, parentenv,     handlers[[1L]])\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests-devel/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpRnaOcm/file181558bbbf1.rds\")\nAn irrecoverable exception occurred",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-04-16T15:03:31.000Z",
            "summary": {
                "any": true,
                "ok": 8,
                "note": 0,
                "warn": 2,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.4.5",
                    "tinstall": 4.26,
                    "tcheck": 54.59,
                    "ttotal": 58.85,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.43,
                    "tcheck": 48.01,
                    "ttotal": 51.44,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.32,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 11,
                    "tcheck": 68,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.65,
                    "tcheck": 51.33,
                    "ttotal": 55.98,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 75.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.41,
                    "tcheck": 49.07,
                    "ttotal": 52.48,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 75636900, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179b1580, cause 'memory not mapped'\nWarning: stack imbalance in 'lazyLoadDBfetch', 111 then 113\nWarning: stack imbalance in 'lazyLoadDBfetch', 116 then 115\nQuitting from lines 92-105 (Introduction.Rmd) \n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: quiet(envir = (if (grepl(ft %>% select_fst(Species, \"\\\\.[Rr]rst$\",     file), rename(group = Species, sl = Sepal.Length, sw = Sepal.Width))) ft %>%     select_fst(Species, \"\\\\.[Rr]rst$\", file) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) else arrange(group,     sl)) %>% filter(sl > 5), quiet(encoding = enc, .keep_all = TRUE)) %>%     summarise(sw = max(sw), by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame(), names, parentenv,     handlers[[1L]])\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests-devel/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpRnaOcm/file181558bbbf1.rds\")\nAn irrecoverable exception occurred",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-04-17T15:03:29.000Z",
            "summary": {
                "any": true,
                "ok": 8,
                "note": 0,
                "warn": 2,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.4.5",
                    "tinstall": 4.3,
                    "tcheck": 54.18,
                    "ttotal": 58.48,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.42,
                    "tcheck": 51.16,
                    "ttotal": 54.58,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.32,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 60,
                    "ttotal": 73,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.65,
                    "tcheck": 51.33,
                    "ttotal": 55.98,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 86.8,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.41,
                    "tcheck": 49.07,
                    "ttotal": 52.48,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179b69a8, cause 'memory not mapped'\nWarning: stack imbalance in '$', 48 then 47",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-04-18T15:03:20.000Z",
            "summary": {
                "any": true,
                "ok": 8,
                "note": 0,
                "warn": 2,
                "error": 1,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.4.5",
                    "tinstall": 4.3,
                    "tcheck": 54.18,
                    "ttotal": 58.48,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.64,
                    "tcheck": 50.13,
                    "ttotal": 53.77,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.32,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 60,
                    "ttotal": 73,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.31,
                    "tcheck": 50.6,
                    "ttotal": 54.91,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 86.8,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.87,
                    "tcheck": 50.99,
                    "ttotal": 54.86,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 5,
                    "tcheck": 7,
                    "ttotal": 12,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179b69a8, cause 'memory not mapped'\nWarning: stack imbalance in '$', 48 then 47",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-04-19T15:03:26.000Z",
            "summary": {
                "any": true,
                "ok": 9,
                "note": 0,
                "warn": 2,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.4.5",
                    "tinstall": 4.3,
                    "tcheck": 54.18,
                    "ttotal": 58.48,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.66,
                    "tcheck": 48.6,
                    "ttotal": 52.26,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.29,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 60,
                    "ttotal": 73,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.31,
                    "tcheck": 50.6,
                    "ttotal": 54.91,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 86.8,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.87,
                    "tcheck": 50.99,
                    "ttotal": 54.86,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 11,
                    "tcheck": 92,
                    "ttotal": 103,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179b69a8, cause 'memory not mapped'\nWarning: stack imbalance in '$', 48 then 47",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-04-20T15:03:30.000Z",
            "summary": {
                "any": true,
                "ok": 9,
                "note": 0,
                "warn": 2,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.4.5",
                    "tinstall": 5.06,
                    "tcheck": 54.1,
                    "ttotal": 59.16,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.8,
                    "tcheck": 48.93,
                    "ttotal": 52.73,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.29,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.49,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 18,
                    "tcheck": 71,
                    "ttotal": 89,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.31,
                    "tcheck": 50.6,
                    "ttotal": 54.91,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 86.8,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.87,
                    "tcheck": 50.99,
                    "ttotal": 54.86,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 11,
                    "tcheck": 92,
                    "ttotal": 103,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179b69a8, cause 'memory not mapped'\nWarning: stack imbalance in '$', 48 then 47",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-04-21T15:03:23.000Z",
            "summary": {
                "any": true,
                "ok": 10,
                "note": 0,
                "warn": 2,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.4.5",
                    "tinstall": 5.06,
                    "tcheck": 54.1,
                    "ttotal": 59.16,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.82,
                    "tcheck": 48.29,
                    "ttotal": 52.11,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.29,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.49,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 18,
                    "tcheck": 71,
                    "ttotal": 89,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.18,
                    "tcheck": 53.06,
                    "ttotal": 57.24,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 86.8,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.14,
                    "tcheck": 47.66,
                    "ttotal": 50.8,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 12,
                    "tcheck": 90,
                    "ttotal": 102,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 11,
                    "tcheck": 92,
                    "ttotal": 103,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179b69a8, cause 'memory not mapped'\nWarning: stack imbalance in '$', 48 then 47",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-04-22T15:03:24.000Z",
            "summary": {
                "any": true,
                "ok": 10,
                "note": 0,
                "warn": 2,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.4.5",
                    "tinstall": 4.74,
                    "tcheck": 55.41,
                    "ttotal": 60.15,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.95,
                    "tcheck": 48.98,
                    "ttotal": 52.93,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.29,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.49,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 18,
                    "tcheck": 71,
                    "ttotal": 89,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.18,
                    "tcheck": 53.06,
                    "ttotal": 57.24,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 86.8,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.14,
                    "tcheck": 47.66,
                    "ttotal": 50.8,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 12,
                    "tcheck": 90,
                    "ttotal": 102,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 11,
                    "tcheck": 92,
                    "ttotal": 103,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179b69a8, cause 'memory not mapped'\nWarning: stack imbalance in '$', 48 then 47",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        }
    ]
}
```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&limit=2 | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 8083
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 13 May 2020 09:25:35 GMT

```
```json
{
    "error": null,
    "count": 29,
    "returned": 2,
    "data": [
        {
            "package": "apsimr",
            "date_updated": "2020-04-19T15:03:26.000Z",
            "summary": {
                "any": true,
                "ok": 12,
                "note": 0,
                "warn": 1,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.2",
                    "tinstall": 12.08,
                    "tcheck": 99.56,
                    "ttotal": 111.64,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/apsimr-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.2",
                    "tinstall": 9.93,
                    "tcheck": 76.2,
                    "ttotal": 86.13,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/apsimr-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 134.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/apsimr-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 132.43,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/apsimr-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.2",
                    "tinstall": 27,
                    "tcheck": 119,
                    "ttotal": 146,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/apsimr-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.2",
                    "tinstall": 10.05,
                    "tcheck": 95.08,
                    "ttotal": 105.13,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/apsimr-00check.html"
                },
                {
                    "flavor": "r-patched-osx-x86_64",
                    "version": "1.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-osx-x86_64/apsimr-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 208.6,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/apsimr-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.2",
                    "tinstall": 8.87,
                    "tcheck": 87.46,
                    "ttotal": 96.33,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/apsimr-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.2",
                    "tinstall": 21,
                    "tcheck": 126,
                    "ttotal": 147,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/apsimr-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/apsimr-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.2",
                    "tinstall": 20,
                    "tcheck": 151,
                    "ttotal": 171,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/apsimr-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/apsimr-00check.html"
                }
            ],
            "check_details": {
                "version": "1.2",
                "check": "Rd \\usage sections",
                "result": "WARN",
                "output": "Error in sub(re, \"\\\\\\\\S4method{\\\\2\\\\7}{\\\\3}\", x) : \n  invalid regular expression '(\\\\S4method\\{([._[:alnum:]]*|\\$|\\[\\[?|\\+|\\-|\\*|\\/|\\^|<=?|>=?|!=?|==|\\&|\\||\\%[[:alnum:][:punct:]]*\\%)\\}\\{((([._[:alnum:]]+|`[^`]+`),)*([._[:alnum:]]+|`[^`]+`))\\})(<-)?', reason 'Out of memory'\nCalls: <Anonymous> ... .transform_S4_method_markup -> .strip_backticks -> gsub -> sub\nExecution halted\nFunctions with \\usage entries need to have the appropriate \\alias\nentries, and all their arguments documented.\nThe \\usage entries must correspond to syntactically valid R code.\nSee chapter 'Writing R documentation files' in the 'Writing R\nExtensions' manual.",
                "flavors": [
                    "r-oldrel-windows-ix86+x86_64"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "aws",
            "date_updated": "2020-04-20T15:03:31.000Z",
            "summary": {
                "any": true,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 1,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "2.4-2",
                    "tinstall": 22.64,
                    "tcheck": 108.71,
                    "ttotal": 131.35,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "2.4-2",
                    "tinstall": 18.52,
                    "tcheck": 80.15,
                    "ttotal": 98.67,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 162.93,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 156.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/aws-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "2.4-2",
                    "tinstall": 66,
                    "tcheck": 95,
                    "ttotal": 161,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "2.4-1",
                    "tinstall": 21.37,
                    "tcheck": 101.68,
                    "ttotal": 123.05,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-osx-x86_64",
                    "version": "2.4-1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-osx-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 198.5,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/aws-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "2.4-2",
                    "tinstall": 20.38,
                    "tcheck": 95.53,
                    "ttotal": 115.91,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "2.4-1",
                    "tinstall": 47,
                    "tcheck": 92,
                    "ttotal": 139,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "2.4-1",
                    "tinstall": 48,
                    "tcheck": 115,
                    "ttotal": 163,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "2.4-1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/aws-00check.html"
                }
            ],
            "check_details": {
                "version": "2.4-2",
                "check": "running R code from vignettes",
                "result": "ERROR",
                "output": "Errors in running code in vignettes:\nwhen running code in ‘aws-Example.Rnw’\n  ...\n> yhat0 <- kernsm(y1, h = 10)\n\n> yhat1 <- aws(y1, hmax = 100)\nRunning PS with lambda= 14.6  hmax= 100 number of iterations: 22  memory step OFF \nEstimated variance:  0.0845 \nProgress:step 1 hakt 1.03 \nOMP: Error #15: Initializing libomp.dylib, but found libomp.dylib already initialized.\nOMP: Hint This means that multiple copies of the OpenMP runtime have been linked into the program. That is dangerous, since it can degrade performance or cause incorrect results. The best thing to do is to ensure that only a single OpenMP runtime is linked into the process, e.g. by avoiding static linking of the OpenMP runtime in any library. As an unsafe, unsupported, undocumented workaround you can set the environment variable KMP_DUPLICATE_LIB_OK=TRUE to allow the program to continue to execute, but that may cause crashes or silently produce incorrect results. For more information, please see http://openmp.llvm.org/\n\n... incomplete output.  Crash?\n\n  ‘aws-Example.Rnw’... failed to complete the test",
                "flavors": [
                    "r-release-osx-x86_64"
                ],
                "additional_issues": [

                ]
            }
        }
    ]
}
```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&fields=package | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 1195
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 13 May 2020 09:25:35 GMT

```
```json
{
    "error": null,
    "count": 29,
    "returned": 10,
    "data": [
        {
            "package": "apsimr",
            "date_updated": "2020-04-19T15:03:26.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "aws",
            "date_updated": "2020-04-20T15:03:31.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bayesCT",
            "date_updated": "2020-04-17T15:03:30.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "blockmodeling",
            "date_updated": "2020-04-13T15:03:40.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bullwhipgame",
            "date_updated": "2020-04-19T15:03:26.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "ChoR",
            "date_updated": "2020-04-13T15:03:40.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "collapse",
            "date_updated": "2020-05-05T15:03:14.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cooccurNet",
            "date_updated": "2020-04-13T15:03:40.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cusum",
            "date_updated": "2020-04-13T15:03:40.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "dexterMST",
            "date_updated": "2020-05-11T15:03:13.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        }
    ]
}
```
