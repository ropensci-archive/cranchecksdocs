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
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 168076
date: Tue, 22 Sep 2020 06:43:31 GMT

```
```json
{
    "error": null,
    "count": 1368,
    "returned": 10,
    "data": [
        {
            "package": "clusternor",
            "date_updated": "2020-09-19T15:03:22.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 3,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 87.06,
                    "tcheck": 34.15,
                    "ttotal": 121.21,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 66.2,
                    "tcheck": 25.11,
                    "ttotal": 91.31,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 202.91,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 154.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 190,
                    "tcheck": 65,
                    "ttotal": 255,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.36,
                    "tcheck": 31.49,
                    "ttotal": 101.85,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 138.2,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.53,
                    "tcheck": 31.56,
                    "ttotal": 102.09,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 194,
                    "tcheck": 62,
                    "ttotal": 256,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 156,
                    "tcheck": 73,
                    "ttotal": 229,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.4Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [4s/17s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-09-20T15:03:24.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 3,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 87.06,
                    "tcheck": 34.15,
                    "ttotal": 121.21,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 64.35,
                    "tcheck": 25.19,
                    "ttotal": 89.54,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 205.48,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 154.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 190,
                    "tcheck": 69,
                    "ttotal": 259,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.36,
                    "tcheck": 31.49,
                    "ttotal": 101.85,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 138.2,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.53,
                    "tcheck": 31.56,
                    "ttotal": 102.09,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 194,
                    "tcheck": 62,
                    "ttotal": 256,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 156,
                    "tcheck": 73,
                    "ttotal": 229,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.4Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [4s/17s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-09-21T15:03:23.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 3,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 87.1,
                    "tcheck": 34.23,
                    "ttotal": 121.33,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 65.18,
                    "tcheck": 25.17,
                    "ttotal": 90.35,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 205.48,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 156.82,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 190,
                    "tcheck": 69,
                    "ttotal": 259,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.36,
                    "tcheck": 31.49,
                    "ttotal": 101.85,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 138.2,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.53,
                    "tcheck": 31.56,
                    "ttotal": 102.09,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 194,
                    "tcheck": 62,
                    "ttotal": 256,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 156,
                    "tcheck": 73,
                    "ttotal": 229,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.4Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [4s/17s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-08-24T15:03:26.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 10,
                "warn": 0,
                "error": 2,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 86.32,
                    "tcheck": 33.63,
                    "ttotal": 119.95,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 65.36,
                    "tcheck": 25.28,
                    "ttotal": 90.64,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 209.5,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 155.26,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 194,
                    "tcheck": 59,
                    "ttotal": 253,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 68.79,
                    "tcheck": 31.56,
                    "ttotal": 100.35,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 133.9,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 69.34,
                    "tcheck": 31.62,
                    "ttotal": 100.96,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 199,
                    "tcheck": 71,
                    "ttotal": 270,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 157,
                    "tcheck": 71,
                    "ttotal": 228,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.4Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [0m/180m]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 18\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 1 3 1 1 3 1 1 1 1 3 1 3 1 3 3 1 3 1 3 1 3 1 1 3 3 1 1 3 3 3 1 3 3 1 3 1 3 3\n  [39] 1 3 3 3 3 3 1 3 3 3 3 3\n  \n  $size\n  [1] 21  0 29  0  0  0  0  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  ── 1. Failure: data IM compared to same (@test-fuzzy-cmeans.R#70)  ─────────────\n  `ret1` not identical to `ret2`.\n  Component \"iters\": Mean relative difference: 0.05555556\n  Component \"centers\": Mean relative difference: 2.486971e-08\n  Component \"cluster\": Mean relative difference: 6\n  Component \"size\": Mean relative difference: 2\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.627455 1.564059 1.697670 1.726563 1.792623\n  [2,] 1.640455 1.554848 1.686340 1.795149 1.731636\n  [3,] 1.640332 1.558525 1.687874 1.792366 1.730916\n  [4,] 1.640227 1.564224 1.698489 1.786850 1.727209\n  [5,] 1.640340 1.558539 1.687808 1.792612 1.730660\n  [6,] 1.640341 1.558539 1.687804 1.792626 1.730646\n  [7,] 1.640335 1.558530 1.687848 1.792461 1.730816\n  [8,] 1.640353 1.558569 1.687688 1.793057 1.730193\n  \n  $cluster\n   [1] 4 1 1 1 2 2 1 1 4 1 1 2 4 4 2 4 2 1 4 4 4 4 4 1 1 4 4 1 4 1 1 1 1 4 2 2 1 1\n  [39] 4 4 4 4 1 1 4 1 2 4 1 1\n  \n  $size\n  [1] 22  8  0 20  0  0  0  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.347940 1.296873 2.129534 1.868437 2.321944\n  [2,] 1.765333 1.462860 1.808894 1.880212 1.585905\n  [3,] 1.595230 1.563847 1.651525 1.790848 1.743272\n  [4,] 1.595236 1.563874 1.651448 1.791140 1.742960\n  [5,] 1.595235 1.563872 1.651453 1.791123 1.742979\n  [6,] 1.595236 1.563873 1.651449 1.791138 1.742963\n  [7,] 1.595232 1.563856 1.651497 1.790955 1.743158\n  [8,] 1.595244 1.563925 1.651321 1.791623 1.742440\n  \n  $cluster\n   [1] 1 1 1 1 8 8 1 1 8 1 3 2 8 1 3 2 3 1 8 1 2 1 1 1 3 8 2 1 8 3 1 3 1 8 8 3 1 1\n  [39] 8 1 3 2 1 1 8 1 8 8 1 3\n  \n  $size\n  [1] 23  5  9  0  0  0  0 13\n  \n  ── 2. Failure: data EM compared to same (@test-fuzzy-cmeans.R#76)  ─────────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.04869469\n  Component \"cluster\": Mean relative difference: 1.010101\n  Component \"size\": Mean relative difference: 0.92\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]   ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-08-25T15:03:28.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 10,
                "warn": 0,
                "error": 2,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 86.32,
                    "tcheck": 33.63,
                    "ttotal": 119.95,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 68.46,
                    "tcheck": 25.6,
                    "ttotal": 94.06,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 209.5,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 155.26,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 194,
                    "tcheck": 59,
                    "ttotal": 253,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 68.55,
                    "tcheck": 31.68,
                    "ttotal": 100.23,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 133.9,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 71.35,
                    "tcheck": 31.7,
                    "ttotal": 103.05,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 199,
                    "tcheck": 71,
                    "ttotal": 270,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 157,
                    "tcheck": 71,
                    "ttotal": 228,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.4Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [0m/180m]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 18\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 1 3 1 1 3 1 1 1 1 3 1 3 1 3 3 1 3 1 3 1 3 1 1 3 3 1 1 3 3 3 1 3 3 1 3 1 3 3\n  [39] 1 3 3 3 3 3 1 3 3 3 3 3\n  \n  $size\n  [1] 21  0 29  0  0  0  0  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  ── 1. Failure: data IM compared to same (@test-fuzzy-cmeans.R#70)  ─────────────\n  `ret1` not identical to `ret2`.\n  Component \"iters\": Mean relative difference: 0.05555556\n  Component \"centers\": Mean relative difference: 2.486971e-08\n  Component \"cluster\": Mean relative difference: 6\n  Component \"size\": Mean relative difference: 2\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.627455 1.564059 1.697670 1.726563 1.792623\n  [2,] 1.640455 1.554848 1.686340 1.795149 1.731636\n  [3,] 1.640332 1.558525 1.687874 1.792366 1.730916\n  [4,] 1.640227 1.564224 1.698489 1.786850 1.727209\n  [5,] 1.640340 1.558539 1.687808 1.792612 1.730660\n  [6,] 1.640341 1.558539 1.687804 1.792626 1.730646\n  [7,] 1.640335 1.558530 1.687848 1.792461 1.730816\n  [8,] 1.640353 1.558569 1.687688 1.793057 1.730193\n  \n  $cluster\n   [1] 4 1 1 1 2 2 1 1 4 1 1 2 4 4 2 4 2 1 4 4 4 4 4 1 1 4 4 1 4 1 1 1 1 4 2 2 1 1\n  [39] 4 4 4 4 1 1 4 1 2 4 1 1\n  \n  $size\n  [1] 22  8  0 20  0  0  0  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.347940 1.296873 2.129534 1.868437 2.321944\n  [2,] 1.765333 1.462860 1.808894 1.880212 1.585905\n  [3,] 1.595230 1.563847 1.651525 1.790848 1.743272\n  [4,] 1.595236 1.563874 1.651448 1.791140 1.742960\n  [5,] 1.595235 1.563872 1.651453 1.791123 1.742979\n  [6,] 1.595236 1.563873 1.651449 1.791138 1.742963\n  [7,] 1.595232 1.563856 1.651497 1.790955 1.743158\n  [8,] 1.595244 1.563925 1.651321 1.791623 1.742440\n  \n  $cluster\n   [1] 1 1 1 1 8 8 1 1 8 1 3 2 8 1 3 2 3 1 8 1 2 1 1 1 3 8 2 1 8 3 1 3 1 8 8 3 1 1\n  [39] 8 1 3 2 1 1 8 1 8 8 1 3\n  \n  $size\n  [1] 23  5  9  0  0  0  0 13\n  \n  ── 2. Failure: data EM compared to same (@test-fuzzy-cmeans.R#76)  ─────────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.04869469\n  Component \"cluster\": Mean relative difference: 1.010101\n  Component \"size\": Mean relative difference: 0.92\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]   ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-09-15T15:03:26.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 2,
                "fail": 1
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 89.32,
                    "tcheck": 33.9,
                    "ttotal": 123.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 67.23,
                    "tcheck": 25.46,
                    "ttotal": 92.69,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 202.91,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 154.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 190,
                    "tcheck": 65,
                    "ttotal": 255,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.05,
                    "tcheck": 31.6,
                    "ttotal": 101.65,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 138.2,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.59,
                    "tcheck": 31.42,
                    "ttotal": 102.01,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 194,
                    "tcheck": 62,
                    "ttotal": 256,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 159,
                    "tcheck": 0,
                    "ttotal": 159,
                    "status": "FAIL",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.4Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [4s/17s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "Check process probably crashed or hung up for 20 minutes ... killed\nMost likely this happened in the example checks (?),\nif not, ignore the following last lines of example output:\n\n======== End of example output (where/before crash/hang up occured ?) ========",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-09-16T15:03:25.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 2,
                "fail": 1
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 89.15,
                    "tcheck": 34.35,
                    "ttotal": 123.5,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 66.27,
                    "tcheck": 25.55,
                    "ttotal": 91.82,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 202.91,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 154.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 190,
                    "tcheck": 65,
                    "ttotal": 255,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.05,
                    "tcheck": 31.6,
                    "ttotal": 101.65,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 138.2,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.59,
                    "tcheck": 31.42,
                    "ttotal": 102.01,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 194,
                    "tcheck": 62,
                    "ttotal": 256,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 159,
                    "tcheck": 0,
                    "ttotal": 159,
                    "status": "FAIL",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.4Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [4s/17s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "Check process probably crashed or hung up for 20 minutes ... killed\nMost likely this happened in the example checks (?),\nif not, ignore the following last lines of example output:\n\n======== End of example output (where/before crash/hang up occured ?) ========",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-09-17T15:03:24.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 2,
                "fail": 1
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 89.15,
                    "tcheck": 34.35,
                    "ttotal": 123.5,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 66.29,
                    "tcheck": 25.09,
                    "ttotal": 91.38,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 202.91,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 154.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 190,
                    "tcheck": 65,
                    "ttotal": 255,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 71.11,
                    "tcheck": 31.62,
                    "ttotal": 102.73,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 138.2,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.15,
                    "tcheck": 31.99,
                    "ttotal": 102.14,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 194,
                    "tcheck": 62,
                    "ttotal": 256,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 159,
                    "tcheck": 0,
                    "ttotal": 159,
                    "status": "FAIL",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.4Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [4s/17s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "Check process probably crashed or hung up for 20 minutes ... killed\nMost likely this happened in the example checks (?),\nif not, ignore the following last lines of example output:\n\n======== End of example output (where/before crash/hang up occured ?) ========",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-09-18T15:03:25.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 2,
                "fail": 1
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 87.06,
                    "tcheck": 34.15,
                    "ttotal": 121.21,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 66.71,
                    "tcheck": 25.11,
                    "ttotal": 91.82,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 202.91,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 154.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 190,
                    "tcheck": 65,
                    "ttotal": 255,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 71.11,
                    "tcheck": 31.62,
                    "ttotal": 102.73,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 138.2,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 70.15,
                    "tcheck": 31.99,
                    "ttotal": 102.14,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 194,
                    "tcheck": 62,
                    "ttotal": 256,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 159,
                    "tcheck": 0,
                    "ttotal": 159,
                    "status": "FAIL",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.4Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [4s/17s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [2s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7 8 6 8\n  [39] 1 8 7 8 5 8 2 8 6 8 5 8\n  \n  $size\n  [1]  4  4  4  6  5  7  6 14\n  \n  Data ==> ",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "Check process probably crashed or hung up for 20 minutes ... killed\nMost likely this happened in the example checks (?),\nif not, ignore the following last lines of example output:\n\n======== End of example output (where/before crash/hang up occured ?) ========",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-08-23T15:03:28.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 3,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.01",
                    "tinstall": 3.16,
                    "tcheck": 32.76,
                    "ttotal": 35.92,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.17,
                    "tcheck": 25.81,
                    "ttotal": 27.98,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 61.96,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 42.93,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 58,
                    "ttotal": 64,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.13,
                    "tcheck": 32.38,
                    "ttotal": 35.51,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.2,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.89,
                    "tcheck": 32.41,
                    "ttotal": 35.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 48,
                    "ttotal": 54,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 4,
                    "tcheck": 53,
                    "ttotal": 57,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/allan-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "1.01",
                        "output": "Malformed Description field: should contain one or more complete sentences.",
                        "check": "DESCRIPTION meta-information",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "allanVarSelect: no visible global function definition for 'read.csv'\nfitvbiglm: no visible global function definition for 'read.csv'\nfitvbiglm: no visible global function definition for 'update'\ngetbestchunksize: no visible global function definition for 'read.csv'\ngetbestchunksize: no visible global function definition for\n  'object.size'\npredictvbiglm: no visible global function definition for 'read.csv'\npredictvbiglm: no visible global function definition for 'predict'\npredictvbiglm: no visible global function definition for\n  'weighted.mean'\nreadinbigdata : <anonymous>: no visible global function definition for\n  'read.csv'\nUndefined global functions or variables:\n  object.size predict read.csv update weighted.mean\nConsider adding\n  importFrom(\"stats\", \"predict\", \"update\", \"weighted.mean\")\n  importFrom(\"utils\", \"object.size\", \"read.csv\")\nto your NAMESPACE file.",
                        "check": "R code for possible problems",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "prepare_Rd: allan-package.Rd:49-51: Dropping empty section \\seealso\nprepare_Rd: allanVarSelect.Rd:59-60: Dropping empty section \\details\nprepare_Rd: allanVarSelect.Rd:66-67: Dropping empty section \\references\nprepare_Rd: allanVarSelect.Rd:78-79: Dropping empty section \\seealso\nprepare_Rd: fitvbiglm.Rd:38-39: Dropping empty section \\details\nprepare_Rd: fitvbiglm.Rd:49-50: Dropping empty section \\note\nprepare_Rd: fitvbiglm.Rd:43-44: Dropping empty section \\references\nprepare_Rd: fitvbiglm.Rd:53-54: Dropping empty section \\seealso\nprepare_Rd: getbestchunksize.Rd:35-36: Dropping empty section \\details\nprepare_Rd: getbestchunksize.Rd:46-47: Dropping empty section \\note\nprepare_Rd: getbestchunksize.Rd:40-41: Dropping empty section \\references\nprepare_Rd: getbestchunksize.Rd:50-51: Dropping empty section \\seealso\nprepare_Rd: predictvbiglm.Rd:44-45: Dropping empty section \\details\nprepare_Rd: predictvbiglm.Rd:56-57: Dropping empty section \\note\nprepare_Rd: predictvbiglm.Rd:50-51: Dropping empty section \\references\nprepare_Rd: predictvbiglm.Rd:60-61: Dropping empty section \\seealso\nprepare_Rd: readinbigdata.Rd:42-43: Dropping empty section \\note\nprepare_Rd: readinbigdata.Rd:45-46: Dropping empty section \\seealso",
                        "check": "Rd files",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Rd file 'allan-package.Rd':\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=smallchunk,weights=~cont0)\n\nRd file 'allanVarSelect.Rd':\n  \\usage lines wider than 90 characters:\n     allanVarSelect(BaseModel, TrnDataSetFile, ValDataSetFile, ResponseCol = 1, NumOfSteps = 10, criteria = \"AIC\", currentchunksize = -1, si ... [TRUNCATED]\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n\nRd file 'fitvbiglm.Rd':\n  \\usage lines wider than 90 characters:\n     fitvbiglm(BaseModel, filename, currentchunksize = -1, silent = TRUE, MemoryAllowed = 0.5, TestedRows = 1000, AdjFactor = 0.095)\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n\nRd file 'getbestchunksize.Rd':\n  \\usage lines wider than 90 characters:\n     getbestchunksize(filename, MemoryAllowed = 0.5, TestedRows = 1000, AdjFactor = 0.095, silent = TRUE)\n  \\examples lines wider than 100 characters:\n             #This is done by reading in a number of rows(1000 by default)and then measuring the size of the memory\n             #used.  Memory allwed is specified in Gb.  The adjfactor is a factor used to adjust memory for overhead\n\nRd file 'predictvbiglm.Rd':\n  \\usage lines wider than 90 characters:\n     predictvbiglm(BaseModel, ValFileName, currentchunksize = -1, ResponseCol = 1, silent = TRUE, MemoryAllowed = 0.5, TestedRows = 1000, Ad ... [TRUNCATED]\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n     predictvbiglm<-function(BaseModel,ValFileName,currentchunksize=-1,ResponseCol=1,silent=TRUE,MemoryAllowed=0.5,TestedRows=1000,AdjFactor ... [TRUNCATED]\n                     currentchunksize<-getbestchunksize(ValFileName,MemoryAllowed=MemoryAllowed,TestedRows=TestedRows,AdjFactor=AdjFactor,si ... [TRUNCATED]\n                             weightvector<-as.vector(eval(parse(text=paste(\"CurrentDataSet\",\"$\",weightname,sep=\"\"))))\n                     CurrentVariance=sum(((CurrentDataSet[,ResponseCol]-CurrentMean)^2)*weightvector)/sum(weightvector)\n\nRd file 'readinbigdata.Rd':\n  \\examples lines wider than 100 characters:\n             #The return value is either the next chunk of data or NULL if there is no additional data left.\n             #Additionally if a reset=TRUE flag is passed, then the data stream goes back to the beginning.\n\nThese lines will be truncated in the PDF manual.",
                        "check": "Rd line widths",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmp6zulda/RLIBS_893049cf5d6b/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmp6zulda/RLIBS_893049cf5d6b/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpkddcBj/RLIBS_2a5d0357d5358/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpkddcBj/RLIBS_2a5d0357d5358/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpQLj32w/RLIBS_1416c2898a47/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpQLj32w/RLIBS_1416c2898a47/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
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
[1] 1368

$returned
[1] 30

$data
# A tibble: 30 x 5
   package    date_updated             summary$any   $ok $note $warn $error $fail checks            check_details$details $additional_issues
   <chr>      <chr>                    <lgl>       <int> <int> <int>  <int> <int> <list>            <list>                <list>            
 1 clusternor 2020-09-19T15:03:22.000Z TRUE            0     9     0      3     0 <df[,7] [12 × 7]> <df[,4] [5 × 4]>      <list [0]>        
 2 clusternor 2020-09-20T15:03:24.000Z TRUE            0     9     0      3     0 <df[,7] [12 × 7]> <df[,4] [5 × 4]>      <list [0]>        
 3 clusternor 2020-09-21T15:03:23.000Z TRUE            0     9     0      3     0 <df[,7] [12 × 7]> <df[,4] [5 × 4]>      <list [0]>        
 4 clusternor 2020-08-24T15:03:26.000Z TRUE            0    10     0      2     0 <df[,7] [12 × 7]> <df[,4] [4 × 4]>      <list [0]>        
 5 clusternor 2020-08-25T15:03:28.000Z TRUE            0    10     0      2     0 <df[,7] [12 × 7]> <df[,4] [4 × 4]>      <list [0]>        
 6 clusternor 2020-09-15T15:03:26.000Z TRUE            0     9     0      2     1 <df[,7] [12 × 7]> <df[,4] [5 × 4]>      <list [0]>        
 7 clusternor 2020-09-16T15:03:25.000Z TRUE            0     9     0      2     1 <df[,7] [12 × 7]> <df[,4] [5 × 4]>      <list [0]>        
 8 clusternor 2020-09-17T15:03:24.000Z TRUE            0     9     0      2     1 <df[,7] [12 × 7]> <df[,4] [5 × 4]>      <list [0]>        
 9 clusternor 2020-09-18T15:03:25.000Z TRUE            0     9     0      2     1 <df[,7] [12 × 7]> <df[,4] [5 × 4]>      <list [0]>        
10 allan      2020-08-23T15:03:28.000Z TRUE            0     9     0      3     0 <df[,7] [12 × 7]> <df[,4] [7 × 4]>      <list [0]>        
# … with 20 more rows

```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&limit=2 | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 24968
date: Tue, 22 Sep 2020 06:43:41 GMT

```
```json
{
    "error": null,
    "count": 63,
    "returned": 2,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-08-23T15:03:28.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 3,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.01",
                    "tinstall": 3.16,
                    "tcheck": 32.76,
                    "ttotal": 35.92,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.17,
                    "tcheck": 25.81,
                    "ttotal": 27.98,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 61.96,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 42.93,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 58,
                    "ttotal": 64,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.13,
                    "tcheck": 32.38,
                    "ttotal": 35.51,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.2,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.89,
                    "tcheck": 32.41,
                    "ttotal": 35.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 48,
                    "ttotal": 54,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 4,
                    "tcheck": 53,
                    "ttotal": 57,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/allan-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "1.01",
                        "output": "Malformed Description field: should contain one or more complete sentences.",
                        "check": "DESCRIPTION meta-information",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "allanVarSelect: no visible global function definition for 'read.csv'\nfitvbiglm: no visible global function definition for 'read.csv'\nfitvbiglm: no visible global function definition for 'update'\ngetbestchunksize: no visible global function definition for 'read.csv'\ngetbestchunksize: no visible global function definition for\n  'object.size'\npredictvbiglm: no visible global function definition for 'read.csv'\npredictvbiglm: no visible global function definition for 'predict'\npredictvbiglm: no visible global function definition for\n  'weighted.mean'\nreadinbigdata : <anonymous>: no visible global function definition for\n  'read.csv'\nUndefined global functions or variables:\n  object.size predict read.csv update weighted.mean\nConsider adding\n  importFrom(\"stats\", \"predict\", \"update\", \"weighted.mean\")\n  importFrom(\"utils\", \"object.size\", \"read.csv\")\nto your NAMESPACE file.",
                        "check": "R code for possible problems",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "prepare_Rd: allan-package.Rd:49-51: Dropping empty section \\seealso\nprepare_Rd: allanVarSelect.Rd:59-60: Dropping empty section \\details\nprepare_Rd: allanVarSelect.Rd:66-67: Dropping empty section \\references\nprepare_Rd: allanVarSelect.Rd:78-79: Dropping empty section \\seealso\nprepare_Rd: fitvbiglm.Rd:38-39: Dropping empty section \\details\nprepare_Rd: fitvbiglm.Rd:49-50: Dropping empty section \\note\nprepare_Rd: fitvbiglm.Rd:43-44: Dropping empty section \\references\nprepare_Rd: fitvbiglm.Rd:53-54: Dropping empty section \\seealso\nprepare_Rd: getbestchunksize.Rd:35-36: Dropping empty section \\details\nprepare_Rd: getbestchunksize.Rd:46-47: Dropping empty section \\note\nprepare_Rd: getbestchunksize.Rd:40-41: Dropping empty section \\references\nprepare_Rd: getbestchunksize.Rd:50-51: Dropping empty section \\seealso\nprepare_Rd: predictvbiglm.Rd:44-45: Dropping empty section \\details\nprepare_Rd: predictvbiglm.Rd:56-57: Dropping empty section \\note\nprepare_Rd: predictvbiglm.Rd:50-51: Dropping empty section \\references\nprepare_Rd: predictvbiglm.Rd:60-61: Dropping empty section \\seealso\nprepare_Rd: readinbigdata.Rd:42-43: Dropping empty section \\note\nprepare_Rd: readinbigdata.Rd:45-46: Dropping empty section \\seealso",
                        "check": "Rd files",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Rd file 'allan-package.Rd':\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=smallchunk,weights=~cont0)\n\nRd file 'allanVarSelect.Rd':\n  \\usage lines wider than 90 characters:\n     allanVarSelect(BaseModel, TrnDataSetFile, ValDataSetFile, ResponseCol = 1, NumOfSteps = 10, criteria = \"AIC\", currentchunksize = -1, si ... [TRUNCATED]\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n\nRd file 'fitvbiglm.Rd':\n  \\usage lines wider than 90 characters:\n     fitvbiglm(BaseModel, filename, currentchunksize = -1, silent = TRUE, MemoryAllowed = 0.5, TestedRows = 1000, AdjFactor = 0.095)\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n\nRd file 'getbestchunksize.Rd':\n  \\usage lines wider than 90 characters:\n     getbestchunksize(filename, MemoryAllowed = 0.5, TestedRows = 1000, AdjFactor = 0.095, silent = TRUE)\n  \\examples lines wider than 100 characters:\n             #This is done by reading in a number of rows(1000 by default)and then measuring the size of the memory\n             #used.  Memory allwed is specified in Gb.  The adjfactor is a factor used to adjust memory for overhead\n\nRd file 'predictvbiglm.Rd':\n  \\usage lines wider than 90 characters:\n     predictvbiglm(BaseModel, ValFileName, currentchunksize = -1, ResponseCol = 1, silent = TRUE, MemoryAllowed = 0.5, TestedRows = 1000, Ad ... [TRUNCATED]\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n     predictvbiglm<-function(BaseModel,ValFileName,currentchunksize=-1,ResponseCol=1,silent=TRUE,MemoryAllowed=0.5,TestedRows=1000,AdjFactor ... [TRUNCATED]\n                     currentchunksize<-getbestchunksize(ValFileName,MemoryAllowed=MemoryAllowed,TestedRows=TestedRows,AdjFactor=AdjFactor,si ... [TRUNCATED]\n                             weightvector<-as.vector(eval(parse(text=paste(\"CurrentDataSet\",\"$\",weightname,sep=\"\"))))\n                     CurrentVariance=sum(((CurrentDataSet[,ResponseCol]-CurrentMean)^2)*weightvector)/sum(weightvector)\n\nRd file 'readinbigdata.Rd':\n  \\examples lines wider than 100 characters:\n             #The return value is either the next chunk of data or NULL if there is no additional data left.\n             #Additionally if a reset=TRUE flag is passed, then the data stream goes back to the beginning.\n\nThese lines will be truncated in the PDF manual.",
                        "check": "Rd line widths",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmp6zulda/RLIBS_893049cf5d6b/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmp6zulda/RLIBS_893049cf5d6b/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpkddcBj/RLIBS_2a5d0357d5358/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpkddcBj/RLIBS_2a5d0357d5358/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpQLj32w/RLIBS_1416c2898a47/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpQLj32w/RLIBS_1416c2898a47/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "aws",
            "date_updated": "2020-08-23T15:03:28.000Z",
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
                    "version": "2.4-3",
                    "tinstall": 23.17,
                    "tcheck": 111.98,
                    "ttotal": 135.15,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "2.4-3",
                    "tinstall": 19.31,
                    "tcheck": 81.74,
                    "ttotal": 101.05,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "2.4-3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 188.55,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "2.4-3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 156.64,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/aws-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "2.4-3",
                    "tinstall": 54,
                    "tcheck": 119,
                    "ttotal": 173,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "2.4-3",
                    "tinstall": 22.64,
                    "tcheck": 105.98,
                    "ttotal": 128.62,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "2.4-3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 195.8,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/aws-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "2.4-3",
                    "tinstall": 21.48,
                    "tcheck": 105.22,
                    "ttotal": 126.7,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "2.4-3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "2.4-3",
                    "tinstall": 63,
                    "tcheck": 137,
                    "ttotal": 200,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "2.4-3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "2.4-3",
                    "tinstall": 52,
                    "tcheck": 99,
                    "ttotal": 151,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/aws-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "2.4-3",
                        "output": "Errors in running code in vignettes:\nwhen running code in ‘aws-Example.Rnw’\n  ...\n> yhat0 <- kernsm(y1, h = 10)\n\n> yhat1 <- aws(y1, hmax = 100)\nRunning PS with lambda= 14.6  hmax= 100 number of iterations: 22  memory step OFF \nEstimated variance:  0.0845 \nProgress:step 1 hakt 1.03 \nOMP: Error #15: Initializing libomp.dylib, but found libomp.dylib already initialized.\nOMP: Hint This means that multiple copies of the OpenMP runtime have been linked into the program. That is dangerous, since it can degrade performance or cause incorrect results. The best thing to do is to ensure that only a single OpenMP runtime is linked into the process, e.g. by avoiding static linking of the OpenMP runtime in any library. As an unsafe, unsupported, undocumented workaround you can set the environment variable KMP_DUPLICATE_LIB_OK=TRUE to allow the program to continue to execute, but that may cause crashes or silently produce incorrect results. For more information, please see http://openmp.llvm.org/\n\n... incomplete output.  Crash?\n\n  ‘aws-Example.Rnw’... failed to complete the test",
                        "check": "running R code from vignettes",
                        "flavors": [
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "2.4-3",
                        "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘aws-Example.Rnw’ using Sweave\nLoading required package: awsMethods\n\nUse the function setCores() to change the number of CPU cores.\n\nOMP: Error #15: Initializing libomp.dylib, but found libomp.dylib already initialized.\nOMP: Hint This means that multiple copies of the OpenMP runtime have been linked into the program. That is dangerous, since it can degrade performance or cause incorrect results. The best thing to do is to ensure that only a single OpenMP runtime is linked into the process, e.g. by avoiding static linking of the OpenMP runtime in any library. As an unsafe, unsupported, undocumented workaround you can set the environment variable KMP_DUPLICATE_LIB_OK=TRUE to allow the program to continue to execute, but that may cause crashes or silently produce incorrect results. For more information, please see http://openmp.llvm.org/",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-oldrel-macos-x86_64"
                        ]
                    }
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
[1] 63

$returned
[1] 2

$data
# A tibble: 2 x 5
  package date_updated             summary$any   $ok $note $warn $error $fail checks            check_details$details $additional_issues
  <chr>   <chr>                    <lgl>       <int> <int> <int>  <int> <int> <list>            <list>                <list>            
1 allan   2020-08-23T15:03:28.000Z TRUE            0     9     0      3     0 <df[,7] [12 × 7]> <df[,4] [7 × 4]>      <list [0]>        
2 aws     2020-08-23T15:03:28.000Z TRUE           11     0     0      1     0 <df[,7] [12 × 7]> <df[,4] [2 × 4]>      <list [0]>        

```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&fields=package | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 1200
date: Tue, 22 Sep 2020 06:43:48 GMT

```
```json
{
    "error": null,
    "count": 63,
    "returned": 10,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-08-23T15:03:28.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "aws",
            "date_updated": "2020-08-23T15:03:28.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "BIS",
            "date_updated": "2020-08-28T15:03:32.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "blockmodeling",
            "date_updated": "2020-08-23T15:03:28.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bridgesampling",
            "date_updated": "2020-08-23T15:03:28.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cairoDevice",
            "date_updated": "2020-08-24T15:03:26.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "clusternor",
            "date_updated": "2020-09-19T15:03:22.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cooccurNet",
            "date_updated": "2020-08-23T15:03:28.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "ctsemOMX",
            "date_updated": "2020-08-25T15:03:28.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cusum",
            "date_updated": "2020-08-23T15:03:28.000Z",
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
[1] 63

$returned
[1] 30

$data
# A tibble: 30 x 5
   package        date_updated             summary checks check_details
   <chr>          <chr>                    <lgl>   <lgl>  <lgl>        
 1 allan          2020-08-23T15:03:28.000Z NA      NA     NA           
 2 aws            2020-08-23T15:03:28.000Z NA      NA     NA           
 3 BIS            2020-08-28T15:03:32.000Z NA      NA     NA           
 4 blockmodeling  2020-08-23T15:03:28.000Z NA      NA     NA           
 5 bridgesampling 2020-08-23T15:03:28.000Z NA      NA     NA           
 6 cairoDevice    2020-08-24T15:03:26.000Z NA      NA     NA           
 7 clusternor     2020-09-19T15:03:22.000Z NA      NA     NA           
 8 cooccurNet     2020-08-23T15:03:28.000Z NA      NA     NA           
 9 ctsemOMX       2020-08-25T15:03:28.000Z NA      NA     NA           
10 cusum          2020-08-23T15:03:28.000Z NA      NA     NA           
# … with 20 more rows

```
