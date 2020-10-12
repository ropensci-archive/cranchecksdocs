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
Content-Length: 176936
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 12 Oct 2020 12:47:24 GMT

```
```json
{
    "error": null,
    "count": 1354,
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
            "date_updated": "2020-09-22T15:03:20.000Z",
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
                    "tinstall": 65.42,
                    "tcheck": 25.51,
                    "ttotal": 90.93,
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
                    "tinstall": 69.75,
                    "tcheck": 31.33,
                    "ttotal": 101.08,
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
                    "tinstall": 69.59,
                    "tcheck": 31.81,
                    "ttotal": 101.4,
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
            "package": "testComplexity",
            "date_updated": "2020-09-24T15:03:19.000Z",
            "summary": {
                "any": true,
                "ok": 2,
                "note": 2,
                "warn": 0,
                "error": 7,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.1.0",
                    "tinstall": 4.43,
                    "tcheck": 142.07,
                    "ttotal": 146.5,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.1.0",
                    "tinstall": 3.81,
                    "tcheck": 108.93,
                    "ttotal": 112.74,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 125.27,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 141.14,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 11,
                    "tcheck": 233,
                    "ttotal": 244,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.51,
                    "tcheck": 139.71,
                    "ttotal": 144.22,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 254.8,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.35,
                    "tcheck": 141.42,
                    "ttotal": 145.77,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 7,
                    "tcheck": 199,
                    "ttotal": 206,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/testComplexity-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.1.0",
                        "output": "Running examples in 'testComplexity-Ex.R' failed\nThe error most likely occurred in:\n\n> base::assign(\".ptime\", proc.time(), pos = \"CheckExEnv\")\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running 'testthat.R' [90s/101s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  -- 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  -- 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  == testthat results  ===========================================================\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [69s/94s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"log\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Namespace in Imports field not imported from: ‘utils’\n  All declared Imports should be used.",
                        "check": "dependencies in R code",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Running examples in ‘testComplexity-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [61s/62s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"quadratic\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"linear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [80s/81s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [91s/99s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"constant\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [163s/171s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [92s/100s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-release-linux-x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "testComplexity",
            "date_updated": "2020-09-25T15:03:22.000Z",
            "summary": {
                "any": true,
                "ok": 2,
                "note": 2,
                "warn": 0,
                "error": 7,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.1.0",
                    "tinstall": 4.67,
                    "tcheck": 141.91,
                    "ttotal": 146.58,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.1.0",
                    "tinstall": 3.6,
                    "tcheck": 108.02,
                    "ttotal": 111.62,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 125.27,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 141.14,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 11,
                    "tcheck": 233,
                    "ttotal": 244,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.51,
                    "tcheck": 139.71,
                    "ttotal": 144.22,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 254.8,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.35,
                    "tcheck": 141.42,
                    "ttotal": 145.77,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 7,
                    "tcheck": 199,
                    "ttotal": 206,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/testComplexity-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.1.0",
                        "output": "Running examples in 'testComplexity-Ex.R' failed\nThe error most likely occurred in:\n\n> base::assign(\".ptime\", proc.time(), pos = \"CheckExEnv\")\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running 'testthat.R' [90s/99s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  -- 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  -- 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  == testthat results  ===========================================================\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [68s/97s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"linear\"\n  ── 1. Failure: PeakSegOptimal::PeakSegPDPA function test (@test-testsforConstrai\n  Complexity mismatch: Expected loglinear complexity, instead of the predicted linear complexity from asymptoticTimeComplexityClass(timings.df).\n  \n  [1] \"log\"\n  ── 2. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 3. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"log\"\n  [1] \"linear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 25 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 3 ]\n  1. Failure: PeakSegOptimal::PeakSegPDPA function test (@test-testsforConstrainedchangepointmodelalgos.R#5) \n  2. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  3. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Namespace in Imports field not imported from: ‘utils’\n  All declared Imports should be used.",
                        "check": "dependencies in R code",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Running examples in ‘testComplexity-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [61s/62s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"quadratic\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"linear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [80s/81s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [91s/99s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"constant\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [163s/171s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [92s/100s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-release-linux-x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "testComplexity",
            "date_updated": "2020-09-26T15:03:19.000Z",
            "summary": {
                "any": true,
                "ok": 3,
                "note": 2,
                "warn": 0,
                "error": 7,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.1.0",
                    "tinstall": 4.67,
                    "tcheck": 141.91,
                    "ttotal": 146.58,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.1.0",
                    "tinstall": 3.86,
                    "tcheck": 108.61,
                    "ttotal": 112.47,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 125.27,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 141.14,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 11,
                    "tcheck": 233,
                    "ttotal": 244,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.78,
                    "tcheck": 140.81,
                    "ttotal": 145.59,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 254.8,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.59,
                    "tcheck": 141.62,
                    "ttotal": 146.21,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 9,
                    "tcheck": 209,
                    "ttotal": 218,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 7,
                    "tcheck": 199,
                    "ttotal": 206,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/testComplexity-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.1.0",
                        "output": "Running examples in 'testComplexity-Ex.R' failed\nThe error most likely occurred in:\n\n> base::assign(\".ptime\", proc.time(), pos = \"CheckExEnv\")\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running 'testthat.R' [90s/99s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  -- 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  -- 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  == testthat results  ===========================================================\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [68s/100s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"linear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Namespace in Imports field not imported from: ‘utils’\n  All declared Imports should be used.",
                        "check": "dependencies in R code",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Running examples in ‘testComplexity-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [61s/62s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"quadratic\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"linear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [80s/81s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [92s/100s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [163s/171s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [92s/101s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"quadratic\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-release-linux-x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "testComplexity",
            "date_updated": "2020-09-27T15:03:19.000Z",
            "summary": {
                "any": true,
                "ok": 3,
                "note": 2,
                "warn": 0,
                "error": 7,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.1.0",
                    "tinstall": 4.67,
                    "tcheck": 141.91,
                    "ttotal": 146.58,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.1.0",
                    "tinstall": 3.48,
                    "tcheck": 107.75,
                    "ttotal": 111.23,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 188.61,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 141.14,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 11,
                    "tcheck": 233,
                    "ttotal": 244,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.78,
                    "tcheck": 140.81,
                    "ttotal": 145.59,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 288.9,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.59,
                    "tcheck": 141.62,
                    "ttotal": 146.21,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 9,
                    "tcheck": 209,
                    "ttotal": 218,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 7,
                    "tcheck": 199,
                    "ttotal": 206,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/testComplexity-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.1.0",
                        "output": "Running examples in 'testComplexity-Ex.R' failed\nThe error most likely occurred in:\n\n> base::assign(\".ptime\", proc.time(), pos = \"CheckExEnv\")\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running 'testthat.R' [90s/99s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  -- 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  -- 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  == testthat results  ===========================================================\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [68s/95s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"linear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Namespace in Imports field not imported from: ‘utils’\n  All declared Imports should be used.",
                        "check": "dependencies in R code",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Running examples in ‘testComplexity-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [106s/281s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"linear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [80s/81s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [92s/100s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [184s/187s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"constant\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"linear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [92s/101s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"quadratic\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-release-linux-x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "testComplexity",
            "date_updated": "2020-09-28T15:03:22.000Z",
            "summary": {
                "any": true,
                "ok": 3,
                "note": 2,
                "warn": 0,
                "error": 7,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.1.0",
                    "tinstall": 4.73,
                    "tcheck": 141.96,
                    "ttotal": 146.69,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.1.0",
                    "tinstall": 3.7,
                    "tcheck": 108.53,
                    "ttotal": 112.23,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 94.27,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 93.36,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 11,
                    "tcheck": 233,
                    "ttotal": 244,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.78,
                    "tcheck": 140.81,
                    "ttotal": 145.59,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 288.9,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.59,
                    "tcheck": 141.62,
                    "ttotal": 146.21,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 9,
                    "tcheck": 209,
                    "ttotal": 218,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 7,
                    "tcheck": 199,
                    "ttotal": 206,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/testComplexity-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.1.0",
                        "output": "Running examples in 'testComplexity-Ex.R' failed\nThe error most likely occurred in:\n\n> base::assign(\".ptime\", proc.time(), pos = \"CheckExEnv\")\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running 'testthat.R' [90s/101s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  -- 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  -- 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"linear\"\n  == testthat results  ===========================================================\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [69s/95s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Namespace in Imports field not imported from: ‘utils’\n  All declared Imports should be used.",
                        "check": "dependencies in R code",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Running examples in ‘testComplexity-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [51s/52s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"quadratic\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [55s/56s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [92s/100s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [184s/187s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"constant\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"linear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [92s/101s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"quadratic\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-release-linux-x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "testComplexity",
            "date_updated": "2020-09-29T15:03:25.000Z",
            "summary": {
                "any": true,
                "ok": 3,
                "note": 2,
                "warn": 0,
                "error": 7,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.1.0",
                    "tinstall": 4.73,
                    "tcheck": 141.96,
                    "ttotal": 146.69,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.1.0",
                    "tinstall": 3.6,
                    "tcheck": 108.49,
                    "ttotal": 112.09,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 94.27,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 93.36,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/testComplexity-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 12,
                    "tcheck": 201,
                    "ttotal": 213,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.32,
                    "tcheck": 140.05,
                    "ttotal": 144.37,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 288.9,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.1.0",
                    "tinstall": 4.84,
                    "tcheck": 140.19,
                    "ttotal": 145.03,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 9,
                    "tcheck": 209,
                    "ttotal": 218,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/testComplexity-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.1.0",
                    "tinstall": 7,
                    "tcheck": 199,
                    "ttotal": 206,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/testComplexity-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.1.0",
                        "output": "Running examples in 'testComplexity-Ex.R' failed\nThe error most likely occurred in:\n\n> base::assign(\".ptime\", proc.time(), pos = \"CheckExEnv\")\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running 'testthat.R' [90s/101s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  -- 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  -- 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"linear\"\n  == testthat results  ===========================================================\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [68s/95s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"constant\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Namespace in Imports field not imported from: ‘utils’\n  All declared Imports should be used.",
                        "check": "dependencies in R code",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "Running examples in ‘testComplexity-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: asymptoticMemoryComplexityClass\n> ### Title: Asymptotic Memory Complexity Classifying function\n> ### Aliases: asymptoticMemoryComplexityClass\n> \n> ### ** Examples\n> \n> # Allocating a square matrix of N*N dimensions against a set of increasing input data sizes:\n> input.sizes = 10^seq(1, 3, by = 0.1)\n> memory.usage.data <- asymptoticMemoryUsage(matrix(data = N:N, nrow = N, ncol = N), input.sizes)\nError: Memory profiling not available in this version of R\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [51s/52s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"quadratic\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [55s/56s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [91s/98s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"linear\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"quadratic\"\n  [1] \"loglinear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [184s/187s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"constant\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"linear\"\n  [1] \"linear\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.1.0",
                        "output": "  Running ‘testthat.R’ [91s/99s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testComplexity)\n  > \n  > if(require(testthat))\n  +   test_check(\"testComplexity\")\n  Loading required package: testthat\n  [1] \"loglinear\"\n  [1] \"log\"\n  ── 1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComp\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(rpois(N, 10), data.sizes = 10)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  ── 2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsf\n  Memory profiling not available in this version of R\n  Backtrace:\n   1. testComplexity::asymptoticMemoryUsage(...)\n   2. base::lapply(...)\n   3. testComplexity:::FUN(X[[i]], ...)\n   4. bench::bench_memory(fun.obj(data.sizes[i]))\n  \n  [1] \"loglinear\"\n  [1] \"log\"\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 26 | SKIPPED: 1 | WARNINGS: 802 | FAILED: 2 ]\n  1. Error: Return value test for asymptoticMemoryUsage (@test-testsfortestComplexity.R#72) \n  2. Error: Return value test for asymptoticMemoryComplexityClass (@test-testsfortestComplexity.R#85) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-release-linux-x86_64"
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
[1] 1354

$returned
[1] 30

$data
[90m# A tibble: 30 x 5[39m
   package date_updated summary$any   $ok $note $warn $error $fail checks
   [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m 1[39m cluste… 2020-09-19T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 2[39m cluste… 2020-09-20T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 3[39m cluste… 2020-09-21T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 4[39m cluste… 2020-09-22T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 5[39m testCo… 2020-09-24T… TRUE            2     2     0      7     0 [90m<df[,[0m…
[90m 6[39m testCo… 2020-09-25T… TRUE            2     2     0      7     0 [90m<df[,[0m…
[90m 7[39m testCo… 2020-09-26T… TRUE            3     2     0      7     0 [90m<df[,[0m…
[90m 8[39m testCo… 2020-09-27T… TRUE            3     2     0      7     0 [90m<df[,[0m…
[90m 9[39m testCo… 2020-09-28T… TRUE            3     2     0      7     0 [90m<df[,[0m…
[90m10[39m testCo… 2020-09-29T… TRUE            3     2     0      7     0 [90m<df[,[0m…
[90m# … with 20 more rows, and 2 more variables: check_details$details [3m[90m<list>[90m[23m,[39m
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
Content-Length: 24965
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 12 Oct 2020 12:47:33 GMT

```
```json
{
    "error": null,
    "count": 66,
    "returned": 2,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-09-12T15:03:21.000Z",
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
                    "tinstall": 2.76,
                    "tcheck": 33.07,
                    "ttotal": 35.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.29,
                    "tcheck": 25.81,
                    "ttotal": 28.1,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.04,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 42.54,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 44,
                    "ttotal": 50,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.77,
                    "tcheck": 32.22,
                    "ttotal": 34.99,
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
                    "tinstall": 2.66,
                    "tcheck": 32.02,
                    "ttotal": 34.68,
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
                    "tinstall": 5,
                    "tcheck": 57,
                    "ttotal": 62,
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
                    "tcheck": 55,
                    "ttotal": 59,
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpKEeFMH/RLIBS_1fc063f22562/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpKEeFMH/RLIBS_1fc063f22562/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpAHVsmP/RLIBS_142e42397a99/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpAHVsmP/RLIBS_142e42397a99/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpG2wJtE/RLIBS_32d64176971bf/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpG2wJtE/RLIBS_32d64176971bf/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
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
            "date_updated": "2020-09-12T15:03:21.000Z",
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
                    "tinstall": 26.6,
                    "tcheck": 111.3,
                    "ttotal": 137.9,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "2.4-3",
                    "tinstall": 18.79,
                    "tcheck": 81.9,
                    "ttotal": 100.69,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "2.4-3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 177.38,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "2.4-3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 164.49,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/aws-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "2.4-3",
                    "tinstall": 59,
                    "tcheck": 112,
                    "ttotal": 171,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "2.4-3",
                    "tinstall": 22.91,
                    "tcheck": 105.46,
                    "ttotal": 128.37,
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
                    "tinstall": 22.48,
                    "tcheck": 105.25,
                    "ttotal": 127.73,
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
[1] 66

$returned
[1] 2

$data
[90m# A tibble: 2 x 5[39m
  package date_updated summary$any   $ok $note $warn $error $fail checks
  [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m1[39m allan   2020-09-12T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m2[39m aws     2020-09-12T… TRUE           11     0     0      1     0 [90m<df[,[0m…
[90m# … with 2 more variables: check_details$details [3m[90m<list>[90m[23m,[39m
[90m#   $additional_issues [3m[90m<list>[90m[23m[39m

```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&fields=package | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 1186
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 12 Oct 2020 12:47:39 GMT

```
```json
{
    "error": null,
    "count": 66,
    "returned": 10,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-09-12T15:03:21.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "aws",
            "date_updated": "2020-09-12T15:03:21.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "BIS",
            "date_updated": "2020-10-02T15:03:24.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "blockmodeling",
            "date_updated": "2020-09-12T15:03:21.000Z",
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
            "date_updated": "2020-09-12T15:03:21.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "ctsemOMX",
            "date_updated": "2020-10-03T15:03:22.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cusum",
            "date_updated": "2020-09-12T15:03:21.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "CVXR",
            "date_updated": "2020-09-12T15:03:21.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "dqshiny",
            "date_updated": "2020-09-12T15:03:21.000Z",
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
[1] 66

$returned
[1] 30

$data
[90m# A tibble: 30 x 5[39m
   package       date_updated             summary checks check_details
   [3m[90m<chr>[39m[23m         [3m[90m<chr>[39m[23m                    [3m[90m<lgl>[39m[23m   [3m[90m<lgl>[39m[23m  [3m[90m<lgl>[39m[23m        
[90m 1[39m allan         2020-09-12T15:03:21.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 2[39m aws           2020-09-12T15:03:21.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 3[39m BIS           2020-10-02T15:03:24.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 4[39m blockmodeling 2020-09-12T15:03:21.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 5[39m clusternor    2020-09-19T15:03:22.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 6[39m cooccurNet    2020-09-12T15:03:21.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 7[39m ctsemOMX      2020-10-03T15:03:22.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 8[39m cusum         2020-09-12T15:03:21.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 9[39m CVXR          2020-09-12T15:03:21.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m10[39m dqshiny       2020-09-12T15:03:21.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m# … with 20 more rows[39m

```
