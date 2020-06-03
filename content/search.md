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

[Function of the `cchecks` package: `cch_pkgs_search()`](https://docs.ropensci.org/cchecks/reference/cch_pkgs_search.html)

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
: see [pagination docs](#pagination). Max of 50.


```shell
curl https://cranchecks.info/search?q=memory | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 81809
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 03 Jun 2020 08:15:24 GMT

```
```json
{
    "error": null,
    "count": 505,
    "returned": 10,
    "data": [
        {
            "package": "tidyft",
            "date_updated": "2020-05-04T15:03:17.000Z",
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
                    "tinstall": 4.5,
                    "tcheck": 54.85,
                    "ttotal": 59.35,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.29,
                    "tcheck": 46.24,
                    "ttotal": 49.53,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.42,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.19,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 19,
                    "tcheck": 64,
                    "ttotal": 83,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.48,
                    "tcheck": 49.93,
                    "ttotal": 54.41,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.22,
                    "tcheck": 53.02,
                    "ttotal": 57.24,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 12,
                    "tcheck": 88,
                    "ttotal": 100,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 11,
                    "tcheck": 83,
                    "ttotal": 94,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179c1c30, cause 'memory not mapped'\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) %>% arrange(group, sl) %>%     filter(sl > 5) %>% distinct(sl, .keep_all = TRUE) %>% summarise(sw = max(sw),     by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame())\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpeXa4xL/file4abf2eef264a.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_l",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-05-05T15:03:14.000Z",
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
                    "tinstall": 4.5,
                    "tcheck": 54.85,
                    "ttotal": 59.35,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.6,
                    "tcheck": 50.08,
                    "ttotal": 53.68,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.42,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.19,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 15,
                    "tcheck": 88,
                    "ttotal": 103,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.23,
                    "tcheck": 50.99,
                    "ttotal": 55.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.44,
                    "tcheck": 50.23,
                    "ttotal": 54.67,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 80,
                    "ttotal": 93,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 11,
                    "tcheck": 83,
                    "ttotal": 94,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179c1c30, cause 'memory not mapped'\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) %>% arrange(group, sl) %>%     filter(sl > 5) %>% distinct(sl, .keep_all = TRUE) %>% summarise(sw = max(sw),     by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame())\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpeXa4xL/file4abf2eef264a.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_l",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-05-06T15:03:12.000Z",
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
                    "tinstall": 5.07,
                    "tcheck": 58.51,
                    "ttotal": 63.58,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.61,
                    "tcheck": 49.93,
                    "ttotal": 53.54,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.42,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.19,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 15,
                    "tcheck": 88,
                    "ttotal": 103,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.23,
                    "tcheck": 50.99,
                    "ttotal": 55.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.44,
                    "tcheck": 50.23,
                    "ttotal": 54.67,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 80,
                    "ttotal": 93,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 66,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179c1c30, cause 'memory not mapped'\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) %>% arrange(group, sl) %>%     filter(sl > 5) %>% distinct(sl, .keep_all = TRUE) %>% summarise(sw = max(sw),     by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame())\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpeXa4xL/file4abf2eef264a.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_l",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-05-07T15:03:15.000Z",
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
                    "tinstall": 5.07,
                    "tcheck": 58.51,
                    "ttotal": 63.58,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.82,
                    "tcheck": 48.35,
                    "ttotal": 52.17,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.42,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.19,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 15,
                    "tcheck": 88,
                    "ttotal": 103,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.79,
                    "tcheck": 51.97,
                    "ttotal": 56.76,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.88,
                    "tcheck": 51.34,
                    "ttotal": 56.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 80,
                    "ttotal": 93,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 66,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179c1c30, cause 'memory not mapped'\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) %>% arrange(group, sl) %>%     filter(sl > 5) %>% distinct(sl, .keep_all = TRUE) %>% summarise(sw = max(sw),     by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame())\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpeXa4xL/file4abf2eef264a.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_l",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-05-08T15:03:12.000Z",
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
                    "tinstall": 4.2,
                    "tcheck": 54.81,
                    "ttotal": 59.01,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.43,
                    "tcheck": 49.87,
                    "ttotal": 53.3,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.42,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.19,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 15,
                    "tcheck": 88,
                    "ttotal": 103,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.79,
                    "tcheck": 51.97,
                    "ttotal": 56.76,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.88,
                    "tcheck": 51.34,
                    "ttotal": 56.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 80,
                    "ttotal": 93,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 66,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179c1c30, cause 'memory not mapped'\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) %>% arrange(group, sl) %>%     filter(sl > 5) %>% distinct(sl, .keep_all = TRUE) %>% summarise(sw = max(sw),     by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame())\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpeXa4xL/file4abf2eef264a.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_l",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-05-09T15:03:14.000Z",
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
                    "tinstall": 4.2,
                    "tcheck": 54.81,
                    "ttotal": 59.01,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.48,
                    "tcheck": 49.94,
                    "ttotal": 53.42,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.42,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.19,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 14,
                    "tcheck": 67,
                    "ttotal": 81,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.59,
                    "tcheck": 54.36,
                    "ttotal": 58.95,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.35,
                    "tcheck": 51.87,
                    "ttotal": 56.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 80,
                    "ttotal": 93,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 66,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179c1c30, cause 'memory not mapped'\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) %>% arrange(group, sl) %>%     filter(sl > 5) %>% distinct(sl, .keep_all = TRUE) %>% summarise(sw = max(sw),     by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame())\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpeXa4xL/file4abf2eef264a.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_l",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-05-10T15:03:13.000Z",
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
                    "tinstall": 4.2,
                    "tcheck": 54.81,
                    "ttotal": 59.01,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.46,
                    "tcheck": 47.85,
                    "ttotal": 51.31,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 64.19,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 14,
                    "tcheck": 67,
                    "ttotal": 81,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.59,
                    "tcheck": 54.36,
                    "ttotal": 58.95,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.35,
                    "tcheck": 51.87,
                    "ttotal": 56.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
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
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 66,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179c1c30, cause 'memory not mapped'\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) %>% arrange(group, sl) %>%     filter(sl > 5) %>% distinct(sl, .keep_all = TRUE) %>% summarise(sw = max(sw),     by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame())\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpeXa4xL/file4abf2eef264a.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_l",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-05-11T15:03:12.000Z",
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
                    "tinstall": 4.27,
                    "tcheck": 53.84,
                    "ttotal": 58.11,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.45,
                    "tcheck": 50.97,
                    "ttotal": 54.42,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 62.68,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 14,
                    "tcheck": 67,
                    "ttotal": 81,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.59,
                    "tcheck": 54.36,
                    "ttotal": 58.95,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.35,
                    "tcheck": 51.87,
                    "ttotal": 56.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
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
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 66,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179c1c30, cause 'memory not mapped'\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) %>% arrange(group, sl) %>%     filter(sl > 5) %>% distinct(sl, .keep_all = TRUE) %>% summarise(sw = max(sw),     by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame())\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpeXa4xL/file4abf2eef264a.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_l",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-05-12T15:03:16.000Z",
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
                    "tinstall": 4.27,
                    "tcheck": 53.84,
                    "ttotal": 58.11,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.75,
                    "tcheck": 46,
                    "ttotal": 49.75,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 62.68,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 15,
                    "tcheck": 63,
                    "ttotal": 78,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.65,
                    "tcheck": 52.37,
                    "ttotal": 57.02,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.35,
                    "tcheck": 51.87,
                    "ttotal": 56.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
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
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 13,
                    "tcheck": 66,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179c1c30, cause 'memory not mapped'\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) %>% arrange(group, sl) %>%     filter(sl > 5) %>% distinct(sl, .keep_all = TRUE) %>% summarise(sw = max(sw),     by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame())\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpeXa4xL/file4abf2eef264a.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_l",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "tidyft",
            "date_updated": "2020-05-13T15:03:14.000Z",
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
                    "tinstall": 4.65,
                    "tcheck": 56.68,
                    "ttotal": 61.33,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.6,
                    "tcheck": 48.72,
                    "ttotal": 52.32,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 62.68,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 15,
                    "tcheck": 63,
                    "ttotal": 78,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.65,
                    "tcheck": 52.37,
                    "ttotal": 57.02,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.2,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.35,
                    "tcheck": 51.87,
                    "ttotal": 56.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/tidyft-00check.html"
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
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 12,
                    "tcheck": 70,
                    "ttotal": 82,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/tidyft-00check.html"
                }
            ],
            "check_details": {
                "version": "0.4.5",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘Introduction.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n\n *** caught segfault ***\naddress 0, cause 'memory not mapped'\n\n *** caught segfault ***\naddress 179c1c30, cause 'memory not mapped'\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_lhs`)), env, env)\n11: eval(quote(`_fseq`(`_lhs`)), env, env)\n12: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n13: ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>% rename(group = Species,     sl = Sepal.Length, sw = Sepal.Width) %>% arrange(group, sl) %>%     filter(sl > 5) %>% distinct(sl, .keep_all = TRUE) %>% summarise(sw = max(sw),     by = group)\n14: eval(substitute(expr), envir = parent.frame())\n15: eval(substitute(expr), envir = parent.frame())\n16: sys_time_print({    res = ft %>% select_fst(Species, Sepal.Length, Sepal.Width) %>%         rename(group = Species, sl = Sepal.Length, sw = Sepal.Width) %>%         arrange(group, sl) %>% filter(sl > 5) %>% distinct(sl,         .keep_all = TRUE) %>% summarise(sw = max(sw), by = group)})\n17: eval(expr, envir, enclos)\n18: eval(expr, envir, enclos)\n19: withVisible(eval(expr, envir, enclos))\n20: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n21: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n22: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n23: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n24: evaluate::evaluate(...)\n25: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n26: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n27: block_exec(params)\n28: call_block(x)\n29: process_group.block(group)\n30: process_group(group)\n31: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n32: process_file(text, output)\n33: knit(input, text = text, envir = envir, quiet = quiet)\n34: knit2html(..., force_v1 = TRUE)\n35: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n36: vweave(...)\n37: engine$weave(file, quiet = quiet, encoding = enc)\n38: doTryCatch(return(expr), name, parentenv, handler)\n39: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n40: tryCatchList(expr, classes, parentenv, handlers)\n41: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n42: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/tidyft.Rcheck/vign_test/tidyft\",     ser_elibs = \"/tmp/RtmpeXa4xL/file4abf2eef264a.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\n\nTraceback:\n 1: fstretrieve(file_name, columns, from, to)\n 2: read_fst(meta_info$path, j)\n 3: `[.fst_table`(ft, logical_vec)\n 4: ft[logical_vec]\n 5: setDT(ft[logical_vec])\n 6: select_fst(., Species, Sepal.Length, Sepal.Width)\n 7: function_list[[i]](value)\n 8: freduce(value, `_function_list`)\n 9: `_fseq`(`_lhs`)\n10: eval(quote(`_fseq`(`_l",
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


```r
cchecks::cch_pkgs_search(q = "memory")
```
```r
$error
NULL

$count
[1] 505

$returned
[1] 30

$data
[90m# A tibble: 30 x 5[39m
   package date_updated summary$any   $ok $note $warn $error $fail checks
   [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m 1[39m tidyft  2020-05-04T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 2[39m tidyft  2020-05-05T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 3[39m tidyft  2020-05-06T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 4[39m tidyft  2020-05-07T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 5[39m tidyft  2020-05-08T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 6[39m tidyft  2020-05-09T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 7[39m tidyft  2020-05-10T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 8[39m tidyft  2020-05-11T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 9[39m tidyft  2020-05-12T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m10[39m tidyft  2020-05-13T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m# … with 20 more rows, and 6 more variables: check_details$version [3m[90m<chr>[90m[23m,[39m
[90m#   $check [3m[90m<chr>[90m[23m, $result [3m[90m<chr>[90m[23m, $output [3m[90m<chr>[90m[23m, $flavors [3m[90m<list>[90m[23m,[39m
[90m#   $additional_issues [3m[90m<list>[90m[23m[39m

```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&limit=2 | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 12362
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 03 Jun 2020 08:15:26 GMT

```
```json
{
    "error": null,
    "count": 28,
    "returned": 2,
    "data": [
        {
            "package": "aws",
            "date_updated": "2020-05-04T15:03:17.000Z",
            "summary": {
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "2.4-2",
                    "tinstall": 20.72,
                    "tcheck": 109.08,
                    "ttotal": 129.8,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "2.4-2",
                    "tinstall": 19.13,
                    "tcheck": 81.35,
                    "ttotal": 100.48,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 162.76,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 155.6,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/aws-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "2.4-2",
                    "tinstall": 65,
                    "tcheck": 94,
                    "ttotal": 159,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "2.4-2",
                    "tinstall": 21.7,
                    "tcheck": 102.9,
                    "ttotal": 124.6,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 200.6,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/aws-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "2.4-2",
                    "tinstall": 21.85,
                    "tcheck": 103.45,
                    "ttotal": 125.3,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "2.4-2",
                    "tinstall": 50,
                    "tcheck": 101,
                    "ttotal": 151,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "2.4-2",
                    "tinstall": 62,
                    "tcheck": 123,
                    "ttotal": 185,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/aws-00check.html"
                }
            ],
            "check_details": {
                "version": "2.4-2",
                "check": "running R code from vignettes",
                "result": "ERROR",
                "output": "Errors in running code in vignettes:\nwhen running code in ‘aws-Example.Rnw’\n  ...\n> yhat0 <- kernsm(y1, h = 10)\n\n> yhat1 <- aws(y1, hmax = 100)\nRunning PS with lambda= 14.6  hmax= 100 number of iterations: 22  memory step OFF \nEstimated variance:  0.0845 \nProgress:step 1 hakt 1.03 \nOMP: Error #15: Initializing libomp.dylib, but found libomp.dylib already initialized.\nOMP: Hint This means that multiple copies of the OpenMP runtime have been linked into the program. That is dangerous, since it can degrade performance or cause incorrect results. The best thing to do is to ensure that only a single OpenMP runtime is linked into the process, e.g. by avoiding static linking of the OpenMP runtime in any library. As an unsafe, unsupported, undocumented workaround you can set the environment variable KMP_DUPLICATE_LIB_OK=TRUE to allow the program to continue to execute, but that may cause crashes or silently produce incorrect results. For more information, please see http://openmp.llvm.org/\n\n... incomplete output.  Crash?\n\n  ‘aws-Example.Rnw’... failed to complete the test",
                "flavors": [
                    "r-oldrel-osx-x86_64"
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "bayesCT",
            "date_updated": "2020-05-04T15:03:17.000Z",
            "summary": {
                "any": true,
                "ok": 5,
                "note": 4,
                "warn": 1,
                "error": 2,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.99.2",
                    "tinstall": 13.63,
                    "tcheck": 336.64,
                    "ttotal": 350.27,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/bayesCT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.99.2",
                    "tinstall": 11.38,
                    "tcheck": 256.08,
                    "ttotal": 267.46,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/bayesCT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.99.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 406.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/bayesCT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.99.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 410.08,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/bayesCT-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.99.2",
                    "tinstall": 40,
                    "tcheck": 430,
                    "ttotal": 470,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/bayesCT-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.99.2",
                    "tinstall": 12.65,
                    "tcheck": 314.22,
                    "ttotal": 326.87,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/bayesCT-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.99.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 518.9,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/bayesCT-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.99.2",
                    "tinstall": 11.41,
                    "tcheck": 320.31,
                    "ttotal": 331.72,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/bayesCT-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.99.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/bayesCT-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.99.2",
                    "tinstall": 30,
                    "tcheck": 320,
                    "ttotal": 350,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/bayesCT-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.99.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/bayesCT-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.99.2",
                    "tinstall": 24,
                    "tcheck": 422,
                    "ttotal": 446,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/bayesCT-00check.html"
                }
            ],
            "check_details": {
                "version": "0.99.2",
                "check": "tests",
                "result": "ERROR",
                "output": "  Running 'testthat.R' [10s/12s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"bayesCT\")\n  Loading required package: bayesCT\n  \n  Attaching package: 'bayesCT'\n  \n  The following object is masked from 'package:stats':\n  \n      simulate\n  \n  \n   *** caught segfault ***\n  address 0x200000069, cause 'memory not mapped'\n  \n  Traceback:\n   1: regroup(attr(out, \"groups\"), environment())\n   2: filter.tbl_df(., subject_enrolled)\n   3: filter(., subject_enrolled)\n   4: function_list[[i]](value)\n   5: freduce(value, `_function_list`)\n   6: `_fseq`(`_lhs`)\n   7: eval(quote(`_fseq`(`_lhs`)), env, env)\n   8: eval(quote(`_fseq`(`_lhs`)), env, env)\n   9: withVisible(eval(quote(`_fseq`(`_lhs`)), env, env))\n  10: data_success_impute %>% filter(subject_enrolled) %>% ungroup() %>%     select(time, event, treatment)\n  11: (function (hazard_treatment, cutpoint = NULL, hazard_control = NULL,     N_total, breaks = NULL, time0 = NULL, treatment0 = NULL,     event0 = NULL, lambda = 0.3, lambda_time = NULL, interim_look = NULL,     EndofStudy, prior = c(0.1, 0.1), block = 2, rand_ratio = c(1,         1), prop_loss_to_followup = 0.1, alternative = \"greater\",     h0 = 0, futility_prob = 0.05, expected_success_prob = 0.9,     prob_ha = 0.95, N_impute = 10, number_mcmc = 10000, discount_function = \"identity\",     alpha_max = 1, fix_alpha = FALSE, weibull_scale = 0.135,     weibull_shape = 3, method = \"fixed\") {    if (!is.null(interim_look)) {        stopifnot(all(N_total > interim_look))    }    if (!is.null(time0)) {        data0 <- data.frame(cbind(time = time0, event = event0,             treatment = treatment0))    }    else {        data0 <- NULL    }    if (alternative != \"two-sided\" & alternative != \"greater\" &         alternative != \"less\") {        stop(\"The input for alternative is wrong!\")    }    if (!is.null(cutpoint)) {        breaks <- cutpoint    }    if (!is.null(breaks)) {        stopifnot(any(breaks < EndofStudy))    }    if (is.null(hazard_control) & h0 == 0) {        h0 <- 0.5    }    analysis_at_enrollnumber <- c(interim_look, N_total)    enrollment <- enrollment(param = lambda, N_total = N_total,         time = lambda_time)    if (!is.null(hazard_control)) {        group <- randomization(N_total = N_total, block = block,             allocation = rand_ratio)    }    else {        group <- rep(1, N_total)    }    time <- rep(NA, length = N_total)    event <- rep(NA, length = N_total)    if (!is.null(hazard_control)) {        sim_control <- pw_exp_sim(hazard = hazard_control, n = sum(!group),             maxtime = EndofStudy, cutpoint = cutpoint)        time[which(!group)] <- sim_control$time        event[which(!group)] <- sim_control$event    }    sim_treatment <- pw_exp_sim(hazard = hazard_treatment, n = sum(group),         maxtime = EndofStudy, cutpoint = cutpoint)    time[which(!!group)] <- sim_treatment$time    event[which(!!group)] <- sim_treatment$event    if (is.null(breaks)) {        breaks <- mean(time)    }    n_loss_to_fu <- ceiling(prop_loss_to_followup * N_total)    loss_to_fu <- rep(FALSE, N_total)    loss_to_fu[sample(1:N_total, n_loss_to_fu)] <- TRUE    data_total <- data.frame(time = time, treatment = group,         event = event, enrollment = enrollment, id = 1:N_total,         loss_to_fu = loss_to_fu)    data_total$time[data_total$loss_to_fu] <- runif(n_loss_to_fu,         0, data_total$time[data_total$loss_to_fu])    data_total$event[data_total$loss_to_fu] <- rep(0, n_loss_to_fu)    stop_futility <- 0    stop_expected_success <- 0    if (length(analysis_at_enrollnumber) > 1) {        for (i in 1:(length(analysis_at_enrollnumber) - 1)) {            data_interim <- data_total %>% mutate(subject_enrolled = id <=                 analysis_at_enrollnumber[i], subject_impute_futility = !subject_enrolled) %>%                 group_by(subject_enrolled) %>% mutate(subject_impute_success = event *                 (enrollment[analysis_at_enrollnumber[i]] - enrollment <=                   EndofStudy & subject_enrolled) | (1 - event) *                 (enrollment[analysis_at_enrollnumber[i]] - enrollment <=                   time & subject_enrolled) | (subject_enrolled &                 loss_to_fu)) %>% mutate(real_time = ifelse(event *                 (enrollment[analysis_at_enrollnumber[i]] - enrollment <=                   EndofStudy & subject_enrolled) | (1 - event) *                 (enrollment[analysis_at_enrollnumber[i]] - enrollment <=                   time & subject_enrolled), enrollment[analysis_at_enrollnumber[i]] -                 enrollment + sd(time)/10000, time)) %>% mutate(real_event = ifelse(event *                 (enrollment[analysis_at_enrollnumber[i]] - enrollment <=                   EndofStudy & subject_enrolled) | (1 - event) *                 (enrollment[analysis_at_enrollnumber[i]] - enrollment <=                   time & subject_enrolled), 0, event))            data_interim <- data_interim %>% mutate(time = real_time,         ",
                "flavors": [
                    "r-devel-linux-x86_64-debian-clang"
                ],
                "additional_issues": [

                ]
            }
        }
    ]
}
```


```r
cchecks::cch_pkgs_search(q = "memory", one_each = TRUE, limit = 2)
```
```r
$error
NULL

$count
[1] 28

$returned
[1] 2

$data
[90m# A tibble: 2 x 5[39m
  package date_updated summary$any   $ok $note $warn $error $fail checks
  [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m1[39m aws     2020-05-04T… TRUE           11     0     0      1     0 [90m<df[,[0m…
[90m2[39m bayesCT 2020-05-04T… TRUE            5     4     1      2     0 [90m<df[,[0m…
[90m# … with 6 more variables: check_details$version [3m[90m<chr>[90m[23m, $check [3m[90m<chr>[90m[23m,[39m
[90m#   $result [3m[90m<chr>[90m[23m, $output [3m[90m<chr>[90m[23m, $flavors [3m[90m<list>[90m[23m, $additional_issues [3m[90m<list>[90m[23m[39m

```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&fields=package | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 1197
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 03 Jun 2020 08:15:27 GMT

```
```json
{
    "error": null,
    "count": 28,
    "returned": 10,
    "data": [
        {
            "package": "aws",
            "date_updated": "2020-05-04T15:03:17.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bayesCT",
            "date_updated": "2020-05-04T15:03:17.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bigsparser",
            "date_updated": "2020-05-28T15:03:12.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "blockmodeling",
            "date_updated": "2020-05-04T15:03:17.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bvpSolve",
            "date_updated": "2020-05-28T15:03:12.000Z",
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
            "date_updated": "2020-05-04T15:03:17.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "corr2D",
            "date_updated": "2020-05-16T15:03:16.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cusum",
            "date_updated": "2020-05-04T15:03:17.000Z",
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


```r
cchecks::cch_pkgs_search(q = "memory", one_each = TRUE, fields = "package")
```
```r
$error
NULL

$count
[1] 28

$returned
[1] 28

$data
[90m# A tibble: 28 x 5[39m
   package       date_updated             summary checks check_details
   [3m[90m<chr>[39m[23m         [3m[90m<chr>[39m[23m                    [3m[90m<lgl>[39m[23m   [3m[90m<lgl>[39m[23m  [3m[90m<lgl>[39m[23m        
[90m 1[39m aws           2020-05-04T15:03:17.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 2[39m bayesCT       2020-05-04T15:03:17.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 3[39m bigsparser    2020-05-28T15:03:12.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 4[39m blockmodeling 2020-05-04T15:03:17.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 5[39m bvpSolve      2020-05-28T15:03:12.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 6[39m collapse      2020-05-05T15:03:14.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 7[39m cooccurNet    2020-05-04T15:03:17.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 8[39m corr2D        2020-05-16T15:03:16.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 9[39m cusum         2020-05-04T15:03:17.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m10[39m dexterMST     2020-05-11T15:03:13.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m# … with 18 more rows[39m

```
