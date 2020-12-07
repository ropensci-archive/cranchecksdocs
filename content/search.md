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
content-length: 177412
date: Mon, 07 Dec 2020 12:54:00 GMT

```
```json
{
    "error": null,
    "count": 1424,
    "returned": 10,
    "data": [
        {
            "package": "clusternor",
            "date_updated": "2020-11-21T15:03:28.000Z",
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
                    "tinstall": 115.41,
                    "tcheck": 34.85,
                    "ttotal": 150.26,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 124.01,
                    "tcheck": 26.07,
                    "ttotal": 150.08,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 205.19,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 152.6,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 190,
                    "tcheck": 55,
                    "ttotal": 245,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 189.77,
                    "tcheck": 33.39,
                    "ttotal": 223.16,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 132.9,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 189.14,
                    "tcheck": 34,
                    "ttotal": 223.14,
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
                    "tinstall": 157,
                    "tcheck": 59,
                    "ttotal": 216,
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
                    "tinstall": 150,
                    "tcheck": 52,
                    "ttotal": 202,
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
                        "output": "  installed size is  7.3Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [0m/180m]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  ── FAILURE (test-fuzzy-cmeans.R:65:15): Data in-mem compared to same ───────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.4412906\n  Component \"cluster\": Mean relative difference: 1\n  Component \"size\": Mean relative difference: 0.06451613\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873928 1.811176 1.829112 1.705413\n  [2,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [3,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [4,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [5,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [6,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [7,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [8,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  \n  $cluster\n   [1] 1 3 1 1 3 1 1 1 1 3 1 3 1 3 3 1 3 1 3 1 3 1 1 3 3 1 1 3 3 3 1 3 3 1 3 1 3 3\n  [39] 1 3 3 3 3 3 1 3 3 3 3 3\n  \n  $size\n  [1] 21  0 29  0  0  0  0  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [2,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [3,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [4,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [5,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [6,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [7,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [8,] 1.944146 1.873190 1.812506 1.827033 1.706816\n  \n  $cluster\n   [1] 8 2 8 8 2 8 8 8 8 2 8 2 8 3 2 8 2 8 2 8 2 8 8 2 8 8 8 3 2 2 8 2 2 7 2 8 2 2\n  [39] 8 2 2 2 2 2 8 2 8 2 2 8\n  \n  $size\n  [1]  0 24  2  0  0  0  1 23\n  \n  ── FAILURE (test-fuzzy-cmeans.R:70:15): data IM compared to same ───────────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.0001503612\n  Component \"cluster\": Mean relative difference: 1.813725\n  Component \"size\": Mean relative difference: 1.92\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.642514 1.558093 1.687896 1.796400 1.725578\n  [2,] 1.642514 1.558094 1.687897 1.796398 1.725580\n  [3,] 1.612397 1.567911 1.701209 1.712948 1.806670\n  [4,] 1.640636 1.558215 1.691796 1.777121 1.745306\n  [5,] 1.642521 1.558125 1.687746 1.796934 1.725020\n  [6,] 1.642517 1.558104 1.687841 1.796596 1.725374\n  [7,] 3.285028 3.116189 3.375782 3.592836 3.451118\n  [8,] 1.642522 1.558140 1.687696 1.797113 1.724830\n  \n  $cluster\n   [1] 4 3 3 3 8 8 3 3 8 3 4 8 8 4 4 8 1 3 8 4 8 8 2 3 3 8 2 3 8 3 3 3 3 8 8 1 3 3\n  [39] 8 4 8 8 3 3 8 4 8 8 3 3\n  \n  $size\n  [1]  2  2 20  7  0  0  0 19\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.642494 1.558368 1.686505 1.797907 1.723900\n  [2,] 1.642493 1.558366 1.686515 1.797869 1.723940\n  [3,] 1.642493 1.558362 1.686536 1.797792 1.724021\n  [4,] 1.606360 1.563749 1.711082 1.680072 1.834862\n  [5,] 1.642499 1.558429 1.686218 1.798925 1.722834\n  [6,] 1.642495 1.558377 1.686463 1.798055 1.723745\n  [7,] 1.642494 1.558367 1.686510 1.797889 1.723919\n  [8,] 1.642497 1.558409 1.686342 1.798490 1.723283\n  \n  $cluster\n   [1] 3 4 4 4 5 5 4 4 5 4 4 5 5 4 3 5 3 4 5 3 5 5 3 4 4 5 3 4 5 4 4 4 4 5 5 3 4 4\n  [39] 5 3 5 5 4 4 5 3 5 5 4 4\n  \n  $size\n  [1]  0  0  9 22 19  0  0  0\n  \n  ── FAILURE (test-fuzzy-cmeans.R:76:15): data EM compared to same ───────────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.1176461\n  Component \"cluster\": Mean relative difference: 0.3697479\n  Component \"size\": Mean relative difference: 1.36\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [1s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Warning: stack imbalance in '{', 55 then 56\n  Warning: stack imbalance in '<-', 50 then 51\n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-11-22T15:03:27.000Z",
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
                    "tinstall": 114.22,
                    "tcheck": 34.99,
                    "ttotal": 149.21,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 124.46,
                    "tcheck": 26.35,
                    "ttotal": 150.81,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 203.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 152.6,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 190,
                    "tcheck": 55,
                    "ttotal": 245,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 189.77,
                    "tcheck": 33.39,
                    "ttotal": 223.16,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 132.9,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 189.14,
                    "tcheck": 34,
                    "ttotal": 223.14,
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
                    "tinstall": 157,
                    "tcheck": 59,
                    "ttotal": 216,
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
                    "tinstall": 150,
                    "tcheck": 52,
                    "ttotal": 202,
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
                        "output": "  installed size is  7.3Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [0m/180m]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  ── FAILURE (test-fuzzy-cmeans.R:65:15): Data in-mem compared to same ───────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.4412906\n  Component \"cluster\": Mean relative difference: 1\n  Component \"size\": Mean relative difference: 0.06451613\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873928 1.811176 1.829112 1.705413\n  [2,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [3,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [4,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [5,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [6,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [7,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [8,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  \n  $cluster\n   [1] 1 3 1 1 3 1 1 1 1 3 1 3 1 3 3 1 3 1 3 1 3 1 1 3 3 1 1 3 3 3 1 3 3 1 3 1 3 3\n  [39] 1 3 3 3 3 3 1 3 3 3 3 3\n  \n  $size\n  [1] 21  0 29  0  0  0  0  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [2,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [3,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [4,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [5,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [6,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [7,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [8,] 1.944146 1.873190 1.812506 1.827033 1.706816\n  \n  $cluster\n   [1] 8 2 8 8 2 8 8 8 8 2 8 2 8 3 2 8 2 8 2 8 2 8 8 2 8 8 8 3 2 2 8 2 2 7 2 8 2 2\n  [39] 8 2 2 2 2 2 8 2 8 2 2 8\n  \n  $size\n  [1]  0 24  2  0  0  0  1 23\n  \n  ── FAILURE (test-fuzzy-cmeans.R:70:15): data IM compared to same ───────────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.0001503612\n  Component \"cluster\": Mean relative difference: 1.813725\n  Component \"size\": Mean relative difference: 1.92\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.642514 1.558093 1.687896 1.796400 1.725578\n  [2,] 1.642514 1.558094 1.687897 1.796398 1.725580\n  [3,] 1.612397 1.567911 1.701209 1.712948 1.806670\n  [4,] 1.640636 1.558215 1.691796 1.777121 1.745306\n  [5,] 1.642521 1.558125 1.687746 1.796934 1.725020\n  [6,] 1.642517 1.558104 1.687841 1.796596 1.725374\n  [7,] 3.285028 3.116189 3.375782 3.592836 3.451118\n  [8,] 1.642522 1.558140 1.687696 1.797113 1.724830\n  \n  $cluster\n   [1] 4 3 3 3 8 8 3 3 8 3 4 8 8 4 4 8 1 3 8 4 8 8 2 3 3 8 2 3 8 3 3 3 3 8 8 1 3 3\n  [39] 8 4 8 8 3 3 8 4 8 8 3 3\n  \n  $size\n  [1]  2  2 20  7  0  0  0 19\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.642494 1.558368 1.686505 1.797907 1.723900\n  [2,] 1.642493 1.558366 1.686515 1.797869 1.723940\n  [3,] 1.642493 1.558362 1.686536 1.797792 1.724021\n  [4,] 1.606360 1.563749 1.711082 1.680072 1.834862\n  [5,] 1.642499 1.558429 1.686218 1.798925 1.722834\n  [6,] 1.642495 1.558377 1.686463 1.798055 1.723745\n  [7,] 1.642494 1.558367 1.686510 1.797889 1.723919\n  [8,] 1.642497 1.558409 1.686342 1.798490 1.723283\n  \n  $cluster\n   [1] 3 4 4 4 5 5 4 4 5 4 4 5 5 4 3 5 3 4 5 3 5 5 3 4 4 5 3 4 5 4 4 4 4 5 5 3 4 4\n  [39] 5 3 5 5 4 4 5 3 5 5 4 4\n  \n  $size\n  [1]  0  0  9 22 19  0  0  0\n  \n  ── FAILURE (test-fuzzy-cmeans.R:76:15): data EM compared to same ───────────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.1176461\n  Component \"cluster\": Mean relative difference: 0.3697479\n  Component \"size\": Mean relative difference: 1.36\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [1s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Warning: stack imbalance in '{', 55 then 56\n  Warning: stack imbalance in '<-', 50 then 51\n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-11-23T15:03:32.000Z",
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
                    "tinstall": 114.22,
                    "tcheck": 34.99,
                    "ttotal": 149.21,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 125.1,
                    "tcheck": 26.94,
                    "ttotal": 152.04,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 203.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 153.84,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 190,
                    "tcheck": 55,
                    "ttotal": 245,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 189.77,
                    "tcheck": 33.39,
                    "ttotal": 223.16,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 132.9,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 147.67,
                    "tcheck": 33.03,
                    "ttotal": 180.7,
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
                    "tinstall": 157,
                    "tcheck": 59,
                    "ttotal": 216,
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
                    "tinstall": 165,
                    "tcheck": 62,
                    "ttotal": 227,
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
                        "output": "  installed size is  7.3Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [0m/180m]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  ── FAILURE (test-fuzzy-cmeans.R:65:15): Data in-mem compared to same ───────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.4412906\n  Component \"cluster\": Mean relative difference: 1\n  Component \"size\": Mean relative difference: 0.06451613\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873928 1.811176 1.829112 1.705413\n  [2,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [3,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [4,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [5,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [6,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [7,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [8,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  \n  $cluster\n   [1] 1 3 1 1 3 1 1 1 1 3 1 3 1 3 3 1 3 1 3 1 3 1 1 3 3 1 1 3 3 3 1 3 3 1 3 1 3 3\n  [39] 1 3 3 3 3 3 1 3 3 3 3 3\n  \n  $size\n  [1] 21  0 29  0  0  0  0  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [2,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [3,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [4,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [5,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [6,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [7,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [8,] 1.944146 1.873190 1.812506 1.827033 1.706816\n  \n  $cluster\n   [1] 8 2 8 8 2 8 8 8 8 2 8 2 8 3 2 8 2 8 2 8 2 8 8 2 8 8 8 3 2 2 8 2 2 7 2 8 2 2\n  [39] 8 2 2 2 2 2 8 2 8 2 2 8\n  \n  $size\n  [1]  0 24  2  0  0  0  1 23\n  \n  ── FAILURE (test-fuzzy-cmeans.R:70:15): data IM compared to same ───────────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.0001503612\n  Component \"cluster\": Mean relative difference: 1.813725\n  Component \"size\": Mean relative difference: 1.92\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.642514 1.558093 1.687896 1.796400 1.725578\n  [2,] 1.642514 1.558094 1.687897 1.796398 1.725580\n  [3,] 1.612397 1.567911 1.701209 1.712948 1.806670\n  [4,] 1.640636 1.558215 1.691796 1.777121 1.745306\n  [5,] 1.642521 1.558125 1.687746 1.796934 1.725020\n  [6,] 1.642517 1.558104 1.687841 1.796596 1.725374\n  [7,] 3.285028 3.116189 3.375782 3.592836 3.451118\n  [8,] 1.642522 1.558140 1.687696 1.797113 1.724830\n  \n  $cluster\n   [1] 4 3 3 3 8 8 3 3 8 3 4 8 8 4 4 8 1 3 8 4 8 8 2 3 3 8 2 3 8 3 3 3 3 8 8 1 3 3\n  [39] 8 4 8 8 3 3 8 4 8 8 3 3\n  \n  $size\n  [1]  2  2 20  7  0  0  0 19\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.642494 1.558368 1.686505 1.797907 1.723900\n  [2,] 1.642493 1.558366 1.686515 1.797869 1.723940\n  [3,] 1.642493 1.558362 1.686536 1.797792 1.724021\n  [4,] 1.606360 1.563749 1.711082 1.680072 1.834862\n  [5,] 1.642499 1.558429 1.686218 1.798925 1.722834\n  [6,] 1.642495 1.558377 1.686463 1.798055 1.723745\n  [7,] 1.642494 1.558367 1.686510 1.797889 1.723919\n  [8,] 1.642497 1.558409 1.686342 1.798490 1.723283\n  \n  $cluster\n   [1] 3 4 4 4 5 5 4 4 5 4 4 5 5 4 3 5 3 4 5 3 5 5 3 4 4 5 3 4 5 4 4 4 4 5 5 3 4 4\n  [39] 5 3 5 5 4 4 5 3 5 5 4 4\n  \n  $size\n  [1]  0  0  9 22 19  0  0  0\n  \n  ── FAILURE (test-fuzzy-cmeans.R:76:15): data EM compared to same ───────────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.1176461\n  Component \"cluster\": Mean relative difference: 0.3697479\n  Component \"size\": Mean relative difference: 1.36\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [1s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Warning: stack imbalance in '{', 55 then 56\n  Warning: stack imbalance in '<-', 50 then 51\n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-11-24T15:03:29.000Z",
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
                    "tinstall": 114.22,
                    "tcheck": 34.99,
                    "ttotal": 149.21,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 122.36,
                    "tcheck": 26.17,
                    "ttotal": 148.53,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 203.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 153.84,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 193,
                    "tcheck": 83,
                    "ttotal": 276,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 188.71,
                    "tcheck": 32.96,
                    "ttotal": 221.67,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 132.9,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 147.67,
                    "tcheck": 33.03,
                    "ttotal": 180.7,
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
                    "tinstall": 157,
                    "tcheck": 59,
                    "ttotal": 216,
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
                    "tinstall": 165,
                    "tcheck": 62,
                    "ttotal": 227,
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
                        "output": "  installed size is  7.3Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [0m/180m]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  ── FAILURE (test-fuzzy-cmeans.R:65:15): Data in-mem compared to same ───────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.4412906\n  Component \"cluster\": Mean relative difference: 1\n  Component \"size\": Mean relative difference: 0.06451613\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873928 1.811176 1.829112 1.705413\n  [2,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [3,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [4,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [5,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [6,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [7,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  [8,] 1.944158 1.873934 1.811168 1.829129 1.705400\n  \n  $cluster\n   [1] 1 3 1 1 3 1 1 1 1 3 1 3 1 3 3 1 3 1 3 1 3 1 1 3 3 1 1 3 3 3 1 3 3 1 3 1 3 3\n  [39] 1 3 3 3 3 3 1 3 3 3 3 3\n  \n  $size\n  [1] 21  0 29  0  0  0  0  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [2,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [3,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [4,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [5,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [6,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [7,] 1.944159 1.874036 1.810984 1.829416 1.705205\n  [8,] 1.944146 1.873190 1.812506 1.827033 1.706816\n  \n  $cluster\n   [1] 8 2 8 8 2 8 8 8 8 2 8 2 8 3 2 8 2 8 2 8 2 8 8 2 8 8 8 3 2 2 8 2 2 7 2 8 2 2\n  [39] 8 2 2 2 2 2 8 2 8 2 2 8\n  \n  $size\n  [1]  0 24  2  0  0  0  1 23\n  \n  ── FAILURE (test-fuzzy-cmeans.R:70:15): data IM compared to same ───────────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.0001503612\n  Component \"cluster\": Mean relative difference: 1.813725\n  Component \"size\": Mean relative difference: 1.92\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.642514 1.558093 1.687896 1.796400 1.725578\n  [2,] 1.642514 1.558094 1.687897 1.796398 1.725580\n  [3,] 1.612397 1.567911 1.701209 1.712948 1.806670\n  [4,] 1.640636 1.558215 1.691796 1.777121 1.745306\n  [5,] 1.642521 1.558125 1.687746 1.796934 1.725020\n  [6,] 1.642517 1.558104 1.687841 1.796596 1.725374\n  [7,] 3.285028 3.116189 3.375782 3.592836 3.451118\n  [8,] 1.642522 1.558140 1.687696 1.797113 1.724830\n  \n  $cluster\n   [1] 4 3 3 3 8 8 3 3 8 3 4 8 8 4 4 8 1 3 8 4 8 8 2 3 3 8 2 3 8 3 3 3 3 8 8 1 3 3\n  [39] 8 4 8 8 3 3 8 4 8 8 3 3\n  \n  $size\n  [1]  2  2 20  7  0  0  0 19\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.642494 1.558368 1.686505 1.797907 1.723900\n  [2,] 1.642493 1.558366 1.686515 1.797869 1.723940\n  [3,] 1.642493 1.558362 1.686536 1.797792 1.724021\n  [4,] 1.606360 1.563749 1.711082 1.680072 1.834862\n  [5,] 1.642499 1.558429 1.686218 1.798925 1.722834\n  [6,] 1.642495 1.558377 1.686463 1.798055 1.723745\n  [7,] 1.642494 1.558367 1.686510 1.797889 1.723919\n  [8,] 1.642497 1.558409 1.686342 1.798490 1.723283\n  \n  $cluster\n   [1] 3 4 4 4 5 5 4 4 5 4 4 5 5 4 3 5 3 4 5 3 5 5 3 4 4 5 3 4 5 4 4 4 4 5 5 3 4 4\n  [39] 5 3 5 5 4 4 5 3 5 5 4 4\n  \n  $size\n  [1]  0  0  9 22 19  0  0  0\n  \n  ── FAILURE (test-fuzzy-cmeans.R:76:15): data EM compared to same ───────────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.1176461\n  Component \"cluster\": Mean relative difference: 0.3697479\n  Component \"size\": Mean relative difference: 1.36\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running 'testthat.R' [1s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Warning: stack imbalance in '{', 55 then 56\n  Warning: stack imbalance in '<-', 50 then 51\n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 3.064769 2.934908 2.738242 3.298497 2.844551\n  [2,] 3.015320 3.013633 2.770685 2.955266 3.051938\n  [3,] 4.513284 3.880610 4.156640 4.325825 3.100727\n  [4,] 2.849448 2.974869 2.946936 2.447302 3.327008\n  [5,] 2.491785 2.790580 3.414452 1.913792 3.267746\n  [6,] 3.096226 2.912256 2.765275 3.344278 2.809726\n  [7,] 2.887287 3.006538 2.990962 2.472479 3.301115\n  [8,] 3.248763 4.155510 1.973610 3.654074 2.660320\n  \n  $cluster\n   [1] 2 1 5 5 8 5 5 4 4 6 7 8 5 8 6 2 6 7 8 5 8 5 5 3 5 5 5 2 3 1 4 6 6 8 8 5 1 3\n  [39] 4 3 8 3 8 3 5 8 3 3 6 3\n  \n  $size\n  [1]  3  3  9  4 13  6  2 10\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.977810 2.870101 3.038839 3.304946 3.270245\n  [2,] 2.977707 2.870096 3.038940 3.304566 3.270613\n  [3,] 2.977625 2.870094 3.039058 3.304200 3.270973\n  [4,] 2.977839 2.870101 3.038744 3.305169 3.270018\n  [5,] 2.977842 2.870101 3.038733 3.305195 3.269992\n  [6,] 2.977807 2.870099 3.038780 3.305043 3.270142\n  [7,] 2.977696 2.870096 3.038949 3.304530 3.270648\n  [8,] 2.977984 2.870108 3.038509 3.305866 3.269326\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 8 8 8 3 8 3 8 8 8 3 3 8 8 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 8 8 8 3 3\n  \n  $size\n  [1]  0  0 25  0  0  0  0 25\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2.867364\n  [7,] 3.815225 4.217887 1.862281 2.514782 2.702868\n  [8,] 3.703079 4.045515 3.700746 3.861883 2.418166\n  \n  $cluster\n   [1] 1 6 3 4 7 4 3 3 2 6 3 8 2 7 6 7 6 7 5 4 5 1 4 8 8 4 4 8 8 5 1 6 8 2 7",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-11-07T15:03:34.000Z",
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
                    "tinstall": 2.38,
                    "tcheck": 34.18,
                    "ttotal": 36.56,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.38,
                    "tcheck": 27.07,
                    "ttotal": 29.45,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.69,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 42.18,
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
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.66,
                    "tcheck": 31.82,
                    "ttotal": 34.48,
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
                    "tcheck": 55,
                    "ttotal": 60,
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
                    "tinstall": 5,
                    "tcheck": 41,
                    "ttotal": 46,
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
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
            "package": "allan",
            "date_updated": "2020-11-08T15:03:31.000Z",
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
                    "tinstall": 2.36,
                    "tcheck": 33.67,
                    "ttotal": 36.03,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.33,
                    "tcheck": 26.63,
                    "ttotal": 28.96,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.68,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 42.18,
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
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.66,
                    "tcheck": 31.82,
                    "ttotal": 34.48,
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
                    "tcheck": 55,
                    "ttotal": 60,
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
                    "tinstall": 5,
                    "tcheck": 41,
                    "ttotal": 46,
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
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
            "package": "allan",
            "date_updated": "2020-11-09T15:03:27.000Z",
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
                    "tinstall": 2.36,
                    "tcheck": 33.67,
                    "ttotal": 36.03,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.39,
                    "tcheck": 26.34,
                    "ttotal": 28.73,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.68,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 42.09,
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
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.51,
                    "tcheck": 32,
                    "ttotal": 34.51,
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
                    "tcheck": 55,
                    "ttotal": 60,
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
                    "tinstall": 5,
                    "tcheck": 41,
                    "ttotal": 46,
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
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
            "package": "allan",
            "date_updated": "2020-11-10T15:03:32.000Z",
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
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.03,
                    "tcheck": 26.5,
                    "ttotal": 28.53,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.68,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 42.09,
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
                    "tinstall": 2.73,
                    "tcheck": 32.2,
                    "ttotal": 34.93,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.51,
                    "tcheck": 32,
                    "ttotal": 34.51,
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
                    "tcheck": 55,
                    "ttotal": 60,
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
                    "tinstall": 5,
                    "tcheck": 41,
                    "ttotal": 46,
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
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
            "package": "allan",
            "date_updated": "2020-11-11T15:03:28.000Z",
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
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.29,
                    "tcheck": 26.32,
                    "ttotal": 28.61,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.68,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 42.09,
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
                    "tinstall": 2.73,
                    "tcheck": 32.2,
                    "ttotal": 34.93,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.96,
                    "tcheck": 32.02,
                    "ttotal": 34.98,
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
                    "tcheck": 55,
                    "ttotal": 60,
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
                    "tinstall": 5,
                    "tcheck": 41,
                    "ttotal": 46,
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
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
            "package": "allan",
            "date_updated": "2020-11-12T15:03:27.000Z",
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
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.3,
                    "tcheck": 26.37,
                    "ttotal": 28.67,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.68,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 42.09,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 48,
                    "ttotal": 54,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.48,
                    "tcheck": 31.65,
                    "ttotal": 34.13,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.96,
                    "tcheck": 32.02,
                    "ttotal": 34.98,
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
                    "tcheck": 55,
                    "ttotal": 60,
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
                    "tinstall": 5,
                    "tcheck": 41,
                    "ttotal": 46,
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpue7QNA/RLIBS_485861175db1/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpue7QNA/RLIBS_485861175db1/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
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
[1] 1424

$returned
[1] 30

$data
[90m# A tibble: 30 x 5[39m
   package date_updated summary$any   $ok $note $warn $error $fail checks
   [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m 1[39m cluste… 2020-11-21T… TRUE            0    10     0      2     0 [90m<df[,[0m…
[90m 2[39m cluste… 2020-11-22T… TRUE            0    10     0      2     0 [90m<df[,[0m…
[90m 3[39m cluste… 2020-11-23T… TRUE            0    10     0      2     0 [90m<df[,[0m…
[90m 4[39m cluste… 2020-11-24T… TRUE            0    10     0      2     0 [90m<df[,[0m…
[90m 5[39m allan   2020-11-07T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 6[39m allan   2020-11-08T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 7[39m allan   2020-11-09T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 8[39m allan   2020-11-10T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 9[39m allan   2020-11-11T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m10[39m allan   2020-11-12T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m# … with 20 more rows, and 2 more variables: check_details$details [3m[90m<list>[90m[23m,[39m
[90m#   $additional_issues [3m[90m<list>[90m[23m[39m

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
content-length: 56773
date: Mon, 07 Dec 2020 12:54:16 GMT

```
```json
{
    "error": null,
    "count": 63,
    "returned": 2,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-11-07T15:03:34.000Z",
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
                    "tinstall": 2.38,
                    "tcheck": 34.18,
                    "ttotal": 36.56,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.38,
                    "tcheck": 27.07,
                    "ttotal": 29.45,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.69,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 42.18,
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
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 66.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.66,
                    "tcheck": 31.82,
                    "ttotal": 34.48,
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
                    "tcheck": 55,
                    "ttotal": 60,
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
                    "tinstall": 5,
                    "tcheck": 41,
                    "ttotal": 46,
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpGGnrop/RLIBS_2cf0c1b71e26/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpg7JUDc/RLIBS_7cbc5e3f238/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuOCDsK/RLIBS_adac704f3f05/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
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
            "package": "antaresViz",
            "date_updated": "2020-11-09T15:03:27.000Z",
            "summary": {
                "any": true,
                "ok": 2,
                "note": 0,
                "warn": 0,
                "error": 10,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.15.2",
                    "tinstall": 22.95,
                    "tcheck": 198.28,
                    "ttotal": 221.23,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/antaresViz-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.15.2",
                    "tinstall": 19.2,
                    "tcheck": 148.17,
                    "ttotal": 167.37,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/antaresViz-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.15.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 269.68,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/antaresViz-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.15.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 262.76,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/antaresViz-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.15.2",
                    "tinstall": 65,
                    "tcheck": 271,
                    "ttotal": 336,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.15.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.15.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 388.5,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/antaresViz-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.15.2",
                    "tinstall": 22.57,
                    "tcheck": 180.01,
                    "ttotal": 202.58,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.15.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.15.2",
                    "tinstall": 63,
                    "tcheck": 272,
                    "ttotal": 335,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.15.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.15.2",
                    "tinstall": 34,
                    "tcheck": 182,
                    "ttotal": 216,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/antaresViz-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.15.2",
                        "output": "  Running 'testthat.R' [16s/15s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.8.1-CAPI-1.13.3 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  -- Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`) ----\n  'memory.limit()' is Windows-specific\n  \n  -- ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`) -----\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-exchangesStack.R:16:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-exchangesStack.R:26:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-exchangesStack.R:27:4\n  \n  -- ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`) -------------\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-plotMap.R:3:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-plotMap.R:17:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-plotMap.R:18:4\n  \n  -- ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`) -----------\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-prodStack.R:3:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-prodStack.R:12:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-prodStack.R:13:4\n  \n  -- ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`) -------------\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-ts_plot.R:3:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-ts_plot.R:21:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-ts_plot.R:22:4\n  \n  == testthat results  ===========================================================\n  Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`)\n  ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`)\n  \n  [ FAIL 4 | WARN 1 | SKIP 0 | PASS 122 ]\n  Error: Test failures\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang"
                        ]
                    },
                    {
                        "version": "0.15.2",
                        "output": "  Running ‘testthat.R’ [10s/16s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.8.1-CAPI-1.13.3 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  ── Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`) ────\n  'memory.limit()' is Windows-specific\n  \n  ── ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`) ─────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-exchangesStack.R:16:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-exchangesStack.R:26:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-exchangesStack.R:27:4\n  \n  ── ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-plotMap.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-plotMap.R:17:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-plotMap.R:18:4\n  \n  ── ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`) ───────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-prodStack.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-prodStack.R:12:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-prodStack.R:13:4\n  \n  ── ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-ts_plot.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-ts_plot.R:21:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-ts_plot.R:22:4\n  \n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`)\n  ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`)\n  \n  [ FAIL 4 | WARN 1 | SKIP 0 | PASS 122 ]\n  Error: Test failures\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-gcc"
                        ]
                    },
                    {
                        "version": "0.15.2",
                        "output": "  Running ‘testthat.R’ [16s/18s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.8.1-CAPI-1.13.3 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  ── Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`) ────\n  'memory.limit()' is Windows-specific\n  \n  ── ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`) ─────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-exchangesStack.R:16:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-exchangesStack.R:26:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-exchangesStack.R:27:4\n  \n  ── ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-plotMap.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-plotMap.R:17:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-plotMap.R:18:4\n  \n  ── ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`) ───────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-prodStack.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-prodStack.R:12:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-prodStack.R:13:4\n  \n  ── ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-ts_plot.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-ts_plot.R:21:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-ts_plot.R:22:4\n  \n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`)\n  ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`)\n  \n  [ FAIL 4 | WARN 1 | SKIP 0 | PASS 122 ]\n  Error: Test failures\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "0.15.2",
                        "output": "  Running ‘testthat.R’ [15s/18s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.8.1-CAPI-1.13.3 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  ── Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`) ────\n  'memory.limit()' is Windows-specific\n  \n  ── ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`) ─────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-exchangesStack.R:16:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-exchangesStack.R:26:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-exchangesStack.R:27:4\n  \n  ── ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-plotMap.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-plotMap.R:17:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-plotMap.R:18:4\n  \n  ── ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`) ───────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-prodStack.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-prodStack.R:12:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-prodStack.R:13:4\n  \n  ── ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-ts_plot.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-ts_plot.R:21:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-ts_plot.R:22:4\n  \n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`)\n  ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`)\n  \n  [ FAIL 4 | WARN 1 | SKIP 0 | PASS 122 ]\n  Error: Test failures\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "0.15.2",
                        "output": "  Running 'testthat.R' [18s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.8.0-CAPI-1.13.1 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  -- ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`) -----\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-exchangesStack.R:16:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-exchangesStack.R:26:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-exchangesStack.R:27:4\n  \n  -- ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`) -------------\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-plotMap.R:3:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-plotMap.R:17:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-plotMap.R:18:4\n  \n  -- ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`) -----------\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-prodStack.R:3:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-prodStack.R:12:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-prodStack.R:13:4\n  \n  -- ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`) -------------\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-ts_plot.R:3:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-ts_plot.R:21:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-ts_plot.R:22:4\n  \n  == testthat results  ===========================================================\n  ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`)\n  ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`)\n  \n  [ FAIL 4 | WARN 0 | SKIP 0 | PASS 122 ]\n  Error: Test failures\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64",
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.15.2",
                        "output": "  Running ‘testthat.R’ [13s/14s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.8.1-CAPI-1.13.3 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  ── Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`) ────\n  'memory.limit()' is Windows-specific\n  \n  ── ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`) ─────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-exchangesStack.R:16:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-exchangesStack.R:26:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-exchangesStack.R:27:4\n  \n  ── ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-plotMap.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-plotMap.R:17:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-plotMap.R:18:4\n  \n  ── ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`) ───────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-prodStack.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-prodStack.R:12:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-prodStack.R:13:4\n  \n  ── ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-ts_plot.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-ts_plot.R:21:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-ts_plot.R:22:4\n  \n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`)\n  ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`)\n  \n  [ FAIL 4 | WARN 1 | SKIP 0 | PASS 122 ]\n  Error: Test failures\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.15.2",
                        "output": "  Running ‘testthat.R’ [27s/35s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.6.4-CAPI-1.10.4 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  ── Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`) ────\n  'memory.limit()' is Windows-specific\n  \n  ── ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`) ─────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-exchangesStack.R:16:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-exchangesStack.R:26:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-exchangesStack.R:27:4\n  \n  ── ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-plotMap.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-plotMap.R:17:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-plotMap.R:18:4\n  \n  ── ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`) ───────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-prodStack.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-prodStack.R:12:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-prodStack.R:13:4\n  \n  ── ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-ts_plot.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-ts_plot.R:21:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-ts_plot.R:22:4\n  \n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`)\n  ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`)\n  \n  [ FAIL 4 | WARN 1 | SKIP 0 | PASS 122 ]\n  Error: Test failures\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.15.2",
                        "output": "  Running ‘testthat.R’ [13s/15s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.8.1-CAPI-1.13.3 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  ── Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`) ────\n  'memory.limit()' is Windows-specific\n  \n  ── ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`) ─────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-exchangesStack.R:16:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-exchangesStack.R:26:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-exchangesStack.R:27:4\n  \n  ── ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-plotMap.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-plotMap.R:17:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-plotMap.R:18:4\n  \n  ── ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`) ───────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-prodStack.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-prodStack.R:12:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-prodStack.R:13:4\n  \n  ── ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`) ─────────────\n  Error: `desc` must be a string\n  Backtrace:\n      █\n   1. └─testthat::describe(...) test-ts_plot.R:3:0\n   2.   └─base::eval(substitute(code), describe_environment)\n   3.     └─base::eval(substitute(code), describe_environment)\n   4.       └─base::lapply(...) test-ts_plot.R:21:2\n   5.         └─antaresViz:::FUN(X[[i]], ...)\n   6.           └─testthat::test_that(...) test-ts_plot.R:22:4\n  \n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  Warning (test-exchangesStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`)\n  ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`)\n  \n  [ FAIL 4 | WARN 1 | SKIP 0 | PASS 122 ]\n  Error: Test failures\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.15.2",
                        "output": "  Running 'testthat.R' [12s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.8.0-CAPI-1.13.1 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  -- ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`) -----\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-exchangesStack.R:16:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-exchangesStack.R:26:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-exchangesStack.R:27:4\n  \n  -- ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`) -------------\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-plotMap.R:3:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-plotMap.R:17:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-plotMap.R:18:4\n  \n  -- ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`) -----------\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-prodStack.R:3:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-prodStack.R:12:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-prodStack.R:13:4\n  \n  -- ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`) -------------\n  Error: `desc` must be a string\n  Backtrace:\n      x\n   1. \\-testthat::describe(...) test-ts_plot.R:3:0\n   2.   \\-base::eval(substitute(code), describe_environment)\n   3.     \\-base::eval(substitute(code), describe_environment)\n   4.       \\-base::lapply(...) test-ts_plot.R:21:2\n   5.         \\-antaresViz:::FUN(X[[i]], ...)\n   6.           \\-testthat::test_that(...) test-ts_plot.R:22:4\n  \n  == testthat results  ===========================================================\n  ERROR (test-exchangesStack.R:16:1): (code run outside of `test_that()`)\n  ERROR (test-plotMap.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-prodStack.R:3:1): (code run outside of `test_that()`)\n  ERROR (test-ts_plot.R:3:1): (code run outside of `test_that()`)\n  \n  [ FAIL 4 | WARN 0 | SKIP 0 | PASS 122 ]\n  Error: Test failures\n  Execution halted",
                        "check": "tests",
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
[90m# A tibble: 2 x 5[39m
  package date_updated summary$any   $ok $note $warn $error $fail checks
  [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m1[39m allan   2020-11-07T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m2[39m antare… 2020-11-09T… TRUE            2     0     0     10     0 [90m<df[,[0m…
[90m# … with 2 more variables: check_details$details [3m[90m<list>[90m[23m,[39m
[90m#   $additional_issues [3m[90m<list>[90m[23m[39m

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
content-length: 1197
date: Mon, 07 Dec 2020 12:54:29 GMT

```
```json
{
    "error": null,
    "count": 63,
    "returned": 10,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-11-07T15:03:34.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "antaresViz",
            "date_updated": "2020-11-09T15:03:27.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "aws",
            "date_updated": "2020-11-07T15:03:34.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "baseflow",
            "date_updated": "2020-12-02T15:03:32.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "batchtools",
            "date_updated": "2020-12-06T15:03:35.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "blockmodeling",
            "date_updated": "2020-11-09T15:03:27.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bssm",
            "date_updated": "2020-11-07T15:03:33.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "clusternor",
            "date_updated": "2020-11-21T15:03:28.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cmfrec",
            "date_updated": "2020-11-23T15:03:32.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cooccurNet",
            "date_updated": "2020-11-07T15:03:33.000Z",
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
[90m# A tibble: 30 x 5[39m
   package       date_updated             summary checks check_details
   [3m[90m<chr>[39m[23m         [3m[90m<chr>[39m[23m                    [3m[90m<lgl>[39m[23m   [3m[90m<lgl>[39m[23m  [3m[90m<lgl>[39m[23m        
[90m 1[39m allan         2020-11-07T15:03:34.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 2[39m antaresViz    2020-11-09T15:03:27.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 3[39m aws           2020-11-07T15:03:34.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 4[39m baseflow      2020-12-02T15:03:32.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 5[39m batchtools    2020-12-06T15:03:35.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 6[39m blockmodeling 2020-11-09T15:03:27.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 7[39m bssm          2020-11-07T15:03:33.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 8[39m clusternor    2020-11-21T15:03:28.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 9[39m cmfrec        2020-11-23T15:03:32.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m10[39m cooccurNet    2020-11-07T15:03:33.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m# … with 20 more rows[39m

```
