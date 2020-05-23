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
Content-Length: 57727
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Sat, 23 May 2020 14:18:46 GMT

```
```json
{
    "error": null,
    "count": 496,
    "returned": 10,
    "data": [
        {
            "package": "tidyft",
            "date_updated": "2020-04-23T15:03:28.000Z",
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
                    "tinstall": 3.65,
                    "tcheck": 51.96,
                    "ttotal": 55.61,
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
                    "tinstall": 4,
                    "tcheck": 50.67,
                    "ttotal": 54.67,
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
                    "tinstall": 4,
                    "tcheck": 47.82,
                    "ttotal": 51.82,
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
            "date_updated": "2020-04-24T15:03:23.000Z",
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
                    "tinstall": 4.35,
                    "tcheck": 55.46,
                    "ttotal": 59.81,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.64,
                    "tcheck": 46.37,
                    "ttotal": 50.01,
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
                    "tinstall": 4,
                    "tcheck": 50.67,
                    "ttotal": 54.67,
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
                    "tinstall": 4,
                    "tcheck": 47.82,
                    "ttotal": 51.82,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 15,
                    "tcheck": 62,
                    "ttotal": 77,
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
                    "tinstall": 7,
                    "tcheck": 92,
                    "ttotal": 99,
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
            "date_updated": "2020-04-25T15:03:09.000Z",
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
                    "tinstall": 4.35,
                    "tcheck": 55.46,
                    "ttotal": 59.81,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 4.01,
                    "tcheck": 48.96,
                    "ttotal": 52.97,
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
                    "tinstall": 3.88,
                    "tcheck": 52.02,
                    "ttotal": 55.9,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
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
                    "tinstall": 4.67,
                    "tcheck": 52.06,
                    "ttotal": 56.73,
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
                    "tinstall": 15,
                    "tcheck": 62,
                    "ttotal": 77,
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
                    "tinstall": 7,
                    "tcheck": 92,
                    "ttotal": 99,
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
            "date_updated": "2020-04-26T15:03:08.000Z",
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
                    "tinstall": 4.35,
                    "tcheck": 55.46,
                    "ttotal": 59.81,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.78,
                    "tcheck": 46.9,
                    "ttotal": 50.68,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.47,
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
                    "tinstall": 3.88,
                    "tcheck": 52.02,
                    "ttotal": 55.9,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
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
                    "tinstall": 4.67,
                    "tcheck": 52.06,
                    "ttotal": 56.73,
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
                    "tinstall": 18,
                    "tcheck": 71,
                    "ttotal": 89,
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
                    "tinstall": 15,
                    "tcheck": 62,
                    "ttotal": 77,
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
            "date_updated": "2020-04-27T15:03:07.000Z",
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
                    "tinstall": 3.77,
                    "tcheck": 55.37,
                    "ttotal": 59.14,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.79,
                    "tcheck": 50.8,
                    "ttotal": 54.59,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.82,
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
                    "tinstall": 3.88,
                    "tcheck": 52.02,
                    "ttotal": 55.9,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/tidyft-00check.html"
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
                    "tinstall": 4.67,
                    "tcheck": 52.06,
                    "ttotal": 56.73,
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
                    "tinstall": 18,
                    "tcheck": 71,
                    "ttotal": 89,
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
                    "tinstall": 15,
                    "tcheck": 62,
                    "ttotal": 77,
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
            "date_updated": "2020-04-28T15:03:06.000Z",
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
                    "tinstall": 3.77,
                    "tcheck": 55.37,
                    "ttotal": 59.14,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.47,
                    "tcheck": 47.93,
                    "ttotal": 51.4,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.82,
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
                    "tinstall": 4.65,
                    "tcheck": 52.31,
                    "ttotal": 56.96,
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
                    "tinstall": 4,
                    "tcheck": 52.41,
                    "ttotal": 56.41,
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
                    "tinstall": 18,
                    "tcheck": 71,
                    "ttotal": 89,
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
                    "tinstall": 15,
                    "tcheck": 62,
                    "ttotal": 77,
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
            "date_updated": "2020-04-29T15:03:13.000Z",
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
                    "tinstall": 5.01,
                    "tcheck": 55.38,
                    "ttotal": 60.39,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.93,
                    "tcheck": 46.75,
                    "ttotal": 50.68,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.82,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 18,
                    "tcheck": 61,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 4.65,
                    "tcheck": 52.31,
                    "ttotal": 56.96,
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
                    "tinstall": 4,
                    "tcheck": 52.41,
                    "ttotal": 56.41,
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
                    "tinstall": 15,
                    "tcheck": 62,
                    "ttotal": 77,
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
            "date_updated": "2020-04-30T15:03:06.000Z",
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
                    "tinstall": 5.01,
                    "tcheck": 55.38,
                    "ttotal": 60.39,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.65,
                    "tcheck": 50.2,
                    "ttotal": 53.85,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.82,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 18,
                    "tcheck": 61,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.9,
                    "tcheck": 50.42,
                    "ttotal": 54.32,
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
                    "tcheck": 53,
                    "ttotal": 57.44,
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
                    "tinstall": 9,
                    "tcheck": 58,
                    "ttotal": 67,
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
            "date_updated": "2020-05-01T15:03:04.000Z",
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
                    "tinstall": 4.98,
                    "tcheck": 55.72,
                    "ttotal": 60.7,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.41,
                    "tcheck": 49.91,
                    "ttotal": 53.32,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.82,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.4.5",
                    "tinstall": 18,
                    "tcheck": 61,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/tidyft-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.4.5",
                    "tinstall": 3.9,
                    "tcheck": 50.42,
                    "ttotal": 54.32,
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
                    "tcheck": 53,
                    "ttotal": 57.44,
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
            "date_updated": "2020-05-02T15:03:15.000Z",
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
                    "tinstall": 4.98,
                    "tcheck": 55.72,
                    "ttotal": 60.7,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.4.5",
                    "tinstall": 3.75,
                    "tcheck": 49.89,
                    "ttotal": 53.64,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/tidyft-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.4.5",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.82,
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
[1] 496

$returned
[1] 30

$data
[90m# A tibble: 30 x 5[39m
   package date_updated summary$any   $ok $note $warn $error $fail checks
   [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m 1[39m tidyft  2020-04-23T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 2[39m tidyft  2020-04-24T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 3[39m tidyft  2020-04-25T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 4[39m tidyft  2020-04-26T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 5[39m tidyft  2020-04-27T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 6[39m tidyft  2020-04-28T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 7[39m tidyft  2020-04-29T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 8[39m tidyft  2020-04-30T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m 9[39m tidyft  2020-05-01T… TRUE           10     0     2      0     0 [90m<df[,[0m…
[90m10[39m tidyft  2020-05-02T… TRUE           10     0     2      0     0 [90m<df[,[0m…
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
Content-Length: 8199
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Sat, 23 May 2020 14:18:47 GMT

```
```json
{
    "error": null,
    "count": 29,
    "returned": 2,
    "data": [
        {
            "package": "aws",
            "date_updated": "2020-04-23T15:03:28.000Z",
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
                    "tinstall": 23.44,
                    "tcheck": 108.15,
                    "ttotal": 131.59,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "2.4-2",
                    "tinstall": 19.69,
                    "tcheck": 80.98,
                    "ttotal": 100.67,
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
                    "version": "2.4-2",
                    "tinstall": 22.55,
                    "tcheck": 102.09,
                    "ttotal": 124.64,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-osx-x86_64",
                    "version": "2.4-2",
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
                    "ttotal": 198.4,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/aws-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "2.4-2",
                    "tinstall": 19.74,
                    "tcheck": 95.61,
                    "ttotal": 115.35,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "2.4-2",
                    "tinstall": 62,
                    "tcheck": 123,
                    "ttotal": 185,
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
                    "version": "2.4-2",
                    "tinstall": 47,
                    "tcheck": 91,
                    "ttotal": 138,
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
        },
        {
            "package": "bayesCT",
            "date_updated": "2020-04-26T15:03:08.000Z",
            "summary": {
                "any": true,
                "ok": 6,
                "note": 4,
                "warn": 2,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.99.2",
                    "tinstall": 13.92,
                    "tcheck": 333.85,
                    "ttotal": 347.77,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/bayesCT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.99.2",
                    "tinstall": 11.09,
                    "tcheck": 226.81,
                    "ttotal": 237.9,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/bayesCT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.99.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 409.58,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/bayesCT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.99.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 357.03,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/bayesCT-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.99.2",
                    "tinstall": 43,
                    "tcheck": 315,
                    "ttotal": 358,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/bayesCT-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.99.2",
                    "tinstall": 13.51,
                    "tcheck": 321.18,
                    "ttotal": 334.69,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/bayesCT-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.99.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 554.7,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/bayesCT-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.99.2",
                    "tinstall": 12.05,
                    "tcheck": 322.16,
                    "ttotal": 334.21,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/bayesCT-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.99.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "WARN",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/bayesCT-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.99.2",
                    "tinstall": 43,
                    "tcheck": 315,
                    "ttotal": 358,
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
                    "tinstall": 30,
                    "tcheck": 282,
                    "ttotal": 312,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/bayesCT-00check.html"
                }
            ],
            "check_details": {
                "version": "0.99.2",
                "check": "re-building of vignette outputs",
                "result": "WARN",
                "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘bayesCT.Rmd’ using rmarkdown\n--- finished re-building ‘bayesCT.Rmd’\n\n--- re-building ‘binomial.Rmd’ using rmarkdown\n\nAttaching package: 'bayesCT'\n\nThe following object is masked from 'package:stats':\n\n    simulate\n\n--- finished re-building ‘binomial.Rmd’\n\n--- re-building ‘normal.Rmd’ using rmarkdown\n\nAttaching package: 'bayesCT'\n\nThe following object is masked from 'package:stats':\n\n    simulate\n\n--- finished re-building ‘normal.Rmd’\n\n--- re-building ‘time-to-event.Rmd’ using rmarkdown\n\nAttaching package: 'bayesCT'\n\nThe following object is masked from 'package:stats':\n\n    simulate\n\n\n *** caught segfault ***\naddress 0x24, cause 'memory not mapped'\nFatal error: *** recursive gc invocation\n\nSUMMARY: processing the following file failed:\n  ‘time-to-event.Rmd’\n\nError: Vignette re-building failed.\nExecution halted",
                "flavors": [
                    "r-devel-linux-x86_64-debian-gcc"
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
[1] 29

$returned
[1] 2

$data
[90m# A tibble: 2 x 5[39m
  package date_updated summary$any   $ok $note $warn $error $fail checks
  [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m1[39m aws     2020-04-23T… TRUE           12     0     0      1     0 [90m<df[,[0m…
[90m2[39m bayesCT 2020-04-26T… TRUE            6     4     2      0     0 [90m<df[,[0m…
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
Content-Length: 1199
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Sat, 23 May 2020 14:18:48 GMT

```
```json
{
    "error": null,
    "count": 29,
    "returned": 10,
    "data": [
        {
            "package": "aws",
            "date_updated": "2020-04-23T15:03:28.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bayesCT",
            "date_updated": "2020-04-26T15:03:08.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "blockmodeling",
            "date_updated": "2020-04-23T15:03:28.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bullwhipgame",
            "date_updated": "2020-04-23T15:03:28.000Z",
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
            "date_updated": "2020-04-23T15:03:28.000Z",
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
            "date_updated": "2020-04-23T15:03:28.000Z",
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
        },
        {
            "package": "envnames",
            "date_updated": "2020-04-27T15:03:08.000Z",
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
[1] 29

$returned
[1] 29

$data
[90m# A tibble: 29 x 5[39m
   package       date_updated             summary checks check_details
   [3m[90m<chr>[39m[23m         [3m[90m<chr>[39m[23m                    [3m[90m<lgl>[39m[23m   [3m[90m<lgl>[39m[23m  [3m[90m<lgl>[39m[23m        
[90m 1[39m aws           2020-04-23T15:03:28.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 2[39m bayesCT       2020-04-26T15:03:08.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 3[39m blockmodeling 2020-04-23T15:03:28.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 4[39m bullwhipgame  2020-04-23T15:03:28.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 5[39m collapse      2020-05-05T15:03:14.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 6[39m cooccurNet    2020-04-23T15:03:28.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 7[39m corr2D        2020-05-16T15:03:16.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 8[39m cusum         2020-04-23T15:03:28.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 9[39m dexterMST     2020-05-11T15:03:13.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m10[39m envnames      2020-04-27T15:03:08.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m# … with 19 more rows[39m

```
