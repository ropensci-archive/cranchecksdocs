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
: see [pagination docs](#pagination). Max of 50.


```shell
curl https://cranchecks.info/search?q=memory | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 32996
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 18 May 2020 12:36:13 GMT

```
```json
{
    "error": null,
    "count": 488,
    "returned": 10,
    "data": [
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
        },
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
Date: Mon, 18 May 2020 12:36:14 GMT

```
```json
{
    "error": null,
    "count": 30,
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
Content-Length: 1197
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 18 May 2020 12:36:15 GMT

```
```json
{
    "error": null,
    "count": 30,
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
            "date_updated": "2020-04-18T15:03:20.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "blockmodeling",
            "date_updated": "2020-04-18T15:03:20.000Z",
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
            "package": "collapse",
            "date_updated": "2020-05-05T15:03:14.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cooccurNet",
            "date_updated": "2020-04-18T15:03:20.000Z",
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
            "date_updated": "2020-04-18T15:03:20.000Z",
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
