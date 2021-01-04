---
weight: 12
title: Packages
output: 
  html_document:
    keep_md: true
---



# Packages

Get packages based checks.

[Function of the `cchecks` R package: `cch_pkgs()`](https://docs.ropensci.org/cchecks/reference/cch_pkgs.html).


## Packages

Get checks data for all packages.

`GET [/pkgs]`
Default [limit](#pagination) of 10, max of 1000. 

> Example with [custom offset and limit](#pagination).

```shell
curl https://cranchecks.info/pkgs/?offset=5&limit=2 | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 6793
date: Mon, 04 Jan 2021 13:12:10 GMT

```
```json
{
    "found": 18114,
    "count": 2,
    "offset": 5,
    "error": null,
    "data": [
        {
            "package": "ibb",
            "url": "https://cloud.r-project.org/web/checks/check_results_ibb.html",
            "date_updated": "2021-01-04T12:05:00.475Z",
            "summary": {
                "any": true,
                "ok": 7,
                "note": 5,
                "warn": 0,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0.1",
                    "tinstall": 3.55,
                    "tcheck": 35.44,
                    "ttotal": 38.99,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0.1",
                    "tinstall": 2.65,
                    "tcheck": 26.88,
                    "ttotal": 29.53,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 55.85,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 45.21,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0.1",
                    "tinstall": 9,
                    "tcheck": 52,
                    "ttotal": 61,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0.1",
                    "tinstall": 3.54,
                    "tcheck": 33.93,
                    "ttotal": 37.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ibb-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0.1",
                    "tinstall": 3.61,
                    "tcheck": 33.88,
                    "ttotal": 37.49,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0.1",
                    "tinstall": 10,
                    "tcheck": 52,
                    "ttotal": 62,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0.1",
                    "tinstall": 6,
                    "tcheck": 51,
                    "ttotal": 57,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ibb-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0.1",
                        "output": "Namespace in Imports field not imported from: ‘xml2’\n  All declared Imports should be used.",
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
                        "version": "0.0.1",
                        "output": "  Note: found 359 marked UTF-8 strings",
                        "check": "data for non-ASCII characters",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86",
                            "r-release-macos-x86_64",
                            "r-oldrel-macos-x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "ChIPtest",
            "url": "https://cloud.r-project.org/web/checks/check_results_ChIPtest.html",
            "date_updated": "2021-01-04T12:05:00.475Z",
            "summary": {
                "any": true,
                "ok": 10,
                "note": 2,
                "warn": 0,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.0",
                    "tinstall": 3.46,
                    "tcheck": 25.71,
                    "ttotal": 29.17,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.0",
                    "tinstall": 2.3,
                    "tcheck": 19.98,
                    "ttotal": 22.28,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 45.46,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 34.9,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.0",
                    "tinstall": 9,
                    "tcheck": 54,
                    "ttotal": 63,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.0",
                    "tinstall": 2.75,
                    "tcheck": 24.8,
                    "ttotal": 27.55,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 56.7,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.0",
                    "tinstall": 2.74,
                    "tcheck": 25.13,
                    "ttotal": 27.87,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.0",
                    "tinstall": 8,
                    "tcheck": 53,
                    "ttotal": 61,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.0",
                    "tinstall": 16,
                    "tcheck": 63,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ChIPtest-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "1.0",
                        "output": "File ‘ChIPtest/libs/ChIPtest.so’:\n  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’\n\nIt is good practice to register native routines and to disable symbol\nsearch.\n\nSee ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.",
                        "check": "compiled code",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    }
                ],
                "additional_issues": null
            }
        }
    ]
}
```


```r
cchecks::cch_pkgs(
  limit = 2, 
  offset = 5
  )
```
```r
$found
[1] 18114

$count
[1] 2

$offset
[1] 5

$error
NULL

$data
   package                                                                url
1      ibb      https://cloud.r-project.org/web/checks/check_results_ibb.html
2 ChIPtest https://cloud.r-project.org/web/checks/check_results_ChIPtest.html
              date_updated summary.any summary.ok summary.note summary.warn
1 2021-01-04T12:05:00.475Z        TRUE          7            5            0
2 2021-01-04T12:05:00.475Z        TRUE         10            2            0
  summary.error summary.fail
1             0            0
2             0            0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         checks
1                            r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-macos-x86_64, r-release-windows-ix86+x86_64, r-oldrel-macos-x86_64, r-oldrel-windows-ix86+x86_64, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 3.55, 2.65, 0, 0, 9, 3.54, 0, 3.61, 0, 10, 0, 6, 35.44, 26.88, 0, 0, 52, 33.93, 0, 33.88, 0, 52, 0, 51, 38.99, 29.53, 55.85, 45.21, 61, 37.47, 68.3, 37.49, 0, 62, 0, 57, OK, OK, NOTE, NOTE, OK, OK, NOTE, OK, NOTE, OK, NOTE, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ibb-00check.html
2 r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-macos-x86_64, r-release-windows-ix86+x86_64, r-oldrel-macos-x86_64, r-oldrel-windows-ix86+x86_64, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 3.46, 2.3, 0, 0, 9, 2.75, 0, 2.74, 0, 8, 0, 16, 25.71, 19.98, 0, 0, 54, 24.8, 0, 25.13, 0, 53, 0, 63, 29.17, 22.28, 45.46, 34.9, 63, 27.55, 56.7, 27.87, 0, 61, 0, 79, OK, OK, NOTE, NOTE, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ChIPtest-00check.html
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          check_details.details
1 0.0.1, 0.0.1, Namespace in Imports field not imported from: ‘xml2’\n  All declared Imports should be used.,   Note: found 359 marked UTF-8 strings, dependencies in R code, data for non-ASCII characters, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-patched-solaris-x86, r-release-macos-x86_64, r-oldrel-macos-x86_64, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-patched-solaris-x86, r-release-macos-x86_64, r-oldrel-macos-x86_64
2                                                                                                                                        1.0, File ‘ChIPtest/libs/ChIPtest.so’:\n  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’\n\nIt is good practice to register native routines and to disable symbol\nsearch.\n\nSee ‘Writing portable packages’ in the ‘Writing R Extensions’ manual., compiled code, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc
  check_details.additional_issues
1                              NA
2                              NA

```

## Packages by name

Get checks summary by package name.

[Function of the `cchecks` package: `cch_pkgs_history()`](https://docs.ropensci.org/cchecks/reference/cch_pkgs_history.html)

`GET [/pkgs/{package}]`

```shell
curl https://cranchecks.info/pkgs/rhub | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 2844
date: Mon, 04 Jan 2021 13:12:11 GMT

```
```json
{
    "error": null,
    "data": {
        "package": "rhub",
        "url": "https://cloud.r-project.org/web/checks/check_results_rhub.html",
        "date_updated": "2021-01-04T12:05:00.702Z",
        "summary": {
            "any": false,
            "ok": 12,
            "note": 0,
            "warn": 0,
            "error": 0,
            "fail": 0
        },
        "checks": [
            {
                "flavor": "r-devel-linux-x86_64-debian-clang",
                "version": "1.1.1",
                "tinstall": 7.38,
                "tcheck": 50.25,
                "ttotal": 57.63,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-debian-gcc",
                "version": "1.1.1",
                "tinstall": 5.84,
                "tcheck": 39.03,
                "ttotal": 44.87,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-fedora-clang",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 78.8,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-fedora-gcc",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 81.92,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
            },
            {
                "flavor": "r-devel-windows-ix86+x86_64",
                "version": "1.1.1",
                "tinstall": 15,
                "tcheck": 70,
                "ttotal": 85,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-patched-linux-x86_64",
                "version": "1.1.1",
                "tinstall": 6.81,
                "tcheck": 47.72,
                "ttotal": 54.53,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-patched-solaris-x86",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 98.5,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
            },
            {
                "flavor": "r-release-linux-x86_64",
                "version": "1.1.1",
                "tinstall": 7.7,
                "tcheck": 48.3,
                "ttotal": 56,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-release-macos-x86_64",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 0,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-release-windows-ix86+x86_64",
                "version": "1.1.1",
                "tinstall": 15,
                "tcheck": 71,
                "ttotal": 86,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-oldrel-macos-x86_64",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 0,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-oldrel-windows-ix86+x86_64",
                "version": "1.1.1",
                "tinstall": 10,
                "tcheck": 76,
                "ttotal": 86,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
            }
        ],
        "check_details": null
    }
}
```


```r
cchecks::cch_pkgs(x = "rhub")
```
```r
$error
NULL

$data
$data$package
[1] "rhub"

$data$url
[1] "https://cloud.r-project.org/web/checks/check_results_rhub.html"

$data$date_updated
[1] "2021-01-04T12:05:00.702Z"

$data$summary
$data$summary$any
[1] FALSE

$data$summary$ok
[1] 12

$data$summary$note
[1] 0

$data$summary$warn
[1] 0

$data$summary$error
[1] 0

$data$summary$fail
[1] 0


$data$checks
                              flavor version tinstall tcheck ttotal status
1  r-devel-linux-x86_64-debian-clang   1.1.1     7.38  50.25  57.63     OK
2    r-devel-linux-x86_64-debian-gcc   1.1.1     5.84  39.03  44.87     OK
3  r-devel-linux-x86_64-fedora-clang   1.1.1     0.00   0.00  78.80     OK
4    r-devel-linux-x86_64-fedora-gcc   1.1.1     0.00   0.00  81.92     OK
5        r-devel-windows-ix86+x86_64   1.1.1    15.00  70.00  85.00     OK
6             r-patched-linux-x86_64   1.1.1     6.81  47.72  54.53     OK
7              r-patched-solaris-x86   1.1.1     0.00   0.00  98.50     OK
8             r-release-linux-x86_64   1.1.1     7.70  48.30  56.00     OK
9             r-release-macos-x86_64   1.1.1     0.00   0.00   0.00     OK
10     r-release-windows-ix86+x86_64   1.1.1    15.00  71.00  86.00     OK
11             r-oldrel-macos-x86_64   1.1.1     0.00   0.00   0.00     OK
12      r-oldrel-windows-ix86+x86_64   1.1.1    10.00  76.00  86.00     OK
                                                                                     check_url
1  https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html
2    https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html
3  https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html
4    https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html
5        https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html
6             https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html
7              https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html
8             https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html
9             https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html
10     https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html
11             https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html
12      https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html

$data$check_details
NULL

```

## Packages by name (history)

Get checks history by package name.

`GET [/pkgs]`
Default [limit](#pagination) of 10, max of 50.

`GET [/pkgs/{package}/history]`

```shell
curl https://cranchecks.info/pkgs/rhub/history | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 27405
date: Mon, 04 Jan 2021 13:12:13 GMT

```
```json
{
    "error": null,
    "data": {
        "package": "rhub",
        "history": [
            {
                "date_updated": "2021-01-03T15:03:53.000Z",
                "summary": {
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0,
                    "fail": 0
                },
                "checks": [
                    {
                        "flavor": "r-devel-linux-x86_64-debian-clang",
                        "version": "1.1.1",
                        "tinstall": 6.3,
                        "tcheck": 51.21,
                        "ttotal": 57.51,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.78,
                        "tcheck": 38.9,
                        "ttotal": 44.68,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 78.8,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 85.03,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 15,
                        "tcheck": 70,
                        "ttotal": 85,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.81,
                        "tcheck": 47.72,
                        "ttotal": 54.53,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 98.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.7,
                        "tcheck": 48.3,
                        "ttotal": 56,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 15,
                        "tcheck": 71,
                        "ttotal": 86,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 9,
                        "tcheck": 50,
                        "ttotal": 59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2021-01-02T15:03:53.000Z",
                "summary": {
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0,
                    "fail": 0
                },
                "checks": [
                    {
                        "flavor": "r-devel-linux-x86_64-debian-clang",
                        "version": "1.1.1",
                        "tinstall": 6.3,
                        "tcheck": 51.21,
                        "ttotal": 57.51,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 6.19,
                        "tcheck": 39.28,
                        "ttotal": 45.47,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 77.87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 85.03,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 15,
                        "tcheck": 70,
                        "ttotal": 85,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.72,
                        "tcheck": 48.73,
                        "ttotal": 56.45,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 98.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.7,
                        "tcheck": 48.3,
                        "ttotal": 56,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 15,
                        "tcheck": 71,
                        "ttotal": 86,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 9,
                        "tcheck": 50,
                        "ttotal": 59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2021-01-01T15:03:53.000Z",
                "summary": {
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0,
                    "fail": 0
                },
                "checks": [
                    {
                        "flavor": "r-devel-linux-x86_64-debian-clang",
                        "version": "1.1.1",
                        "tinstall": 7.64,
                        "tcheck": 50.25,
                        "ttotal": 57.89,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.51,
                        "tcheck": 38.94,
                        "ttotal": 44.45,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 77.87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 85.03,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 13,
                        "tcheck": 74,
                        "ttotal": 87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.72,
                        "tcheck": 48.73,
                        "ttotal": 56.45,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 98.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.07,
                        "tcheck": 48.48,
                        "ttotal": 55.55,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 58,
                        "ttotal": 72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 9,
                        "tcheck": 50,
                        "ttotal": 59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-12-31T15:03:53.000Z",
                "summary": {
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0,
                    "fail": 0
                },
                "checks": [
                    {
                        "flavor": "r-devel-linux-x86_64-debian-clang",
                        "version": "1.1.1",
                        "tinstall": 7.64,
                        "tcheck": 50.25,
                        "ttotal": 57.89,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.42,
                        "tcheck": 38.63,
                        "ttotal": 44.05,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 77.87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 85.03,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 13,
                        "tcheck": 74,
                        "ttotal": 87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.89,
                        "tcheck": 48.27,
                        "ttotal": 56.16,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 98.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.07,
                        "tcheck": 48.48,
                        "ttotal": 55.55,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 58,
                        "ttotal": 72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 9,
                        "tcheck": 50,
                        "ttotal": 59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-12-30T15:03:57.000Z",
                "summary": {
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0,
                    "fail": 0
                },
                "checks": [
                    {
                        "flavor": "r-devel-linux-x86_64-debian-clang",
                        "version": "1.1.1",
                        "tinstall": 6.75,
                        "tcheck": 49.51,
                        "ttotal": 56.26,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 6,
                        "tcheck": 39.2,
                        "ttotal": 45.2,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 77.87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 85.03,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 13,
                        "tcheck": 74,
                        "ttotal": 87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.89,
                        "tcheck": 48.27,
                        "ttotal": 56.16,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 98.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.31,
                        "tcheck": 48.39,
                        "ttotal": 55.7,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 58,
                        "ttotal": 72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 9,
                        "tcheck": 50,
                        "ttotal": 59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-12-29T15:03:56.000Z",
                "summary": {
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0,
                    "fail": 0
                },
                "checks": [
                    {
                        "flavor": "r-devel-linux-x86_64-debian-clang",
                        "version": "1.1.1",
                        "tinstall": 6.75,
                        "tcheck": 49.51,
                        "ttotal": 56.26,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 4.69,
                        "tcheck": 38.94,
                        "ttotal": 43.63,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 77.87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 85.03,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 13,
                        "tcheck": 74,
                        "ttotal": 87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.6,
                        "tcheck": 46.8,
                        "ttotal": 53.4,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 98.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.31,
                        "tcheck": 48.39,
                        "ttotal": 55.7,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 58,
                        "ttotal": 72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 9,
                        "tcheck": 50,
                        "ttotal": 59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-12-28T15:03:53.000Z",
                "summary": {
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0,
                    "fail": 0
                },
                "checks": [
                    {
                        "flavor": "r-devel-linux-x86_64-debian-clang",
                        "version": "1.1.1",
                        "tinstall": 6.75,
                        "tcheck": 49.51,
                        "ttotal": 56.26,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 6.22,
                        "tcheck": 39.27,
                        "ttotal": 45.49,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 77.87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 85.03,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 13,
                        "tcheck": 74,
                        "ttotal": 87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.6,
                        "tcheck": 46.8,
                        "ttotal": 53.4,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 98.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.19,
                        "tcheck": 47.07,
                        "ttotal": 54.26,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 58,
                        "ttotal": 72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 9,
                        "tcheck": 50,
                        "ttotal": 59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-12-27T15:03:49.000Z",
                "summary": {
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0,
                    "fail": 0
                },
                "checks": [
                    {
                        "flavor": "r-devel-linux-x86_64-debian-clang",
                        "version": "1.1.1",
                        "tinstall": 6.75,
                        "tcheck": 49.51,
                        "ttotal": 56.26,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.68,
                        "tcheck": 38.47,
                        "ttotal": 44.15,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 77.87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 84.55,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 13,
                        "tcheck": 74,
                        "ttotal": 87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.6,
                        "tcheck": 46.8,
                        "ttotal": 53.4,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 98.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.19,
                        "tcheck": 47.07,
                        "ttotal": 54.26,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 58,
                        "ttotal": 72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 9,
                        "tcheck": 50,
                        "ttotal": 59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-12-26T15:03:50.000Z",
                "summary": {
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0,
                    "fail": 0
                },
                "checks": [
                    {
                        "flavor": "r-devel-linux-x86_64-debian-clang",
                        "version": "1.1.1",
                        "tinstall": 6.48,
                        "tcheck": 48.8,
                        "ttotal": 55.28,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.9,
                        "tcheck": 38.39,
                        "ttotal": 44.29,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 78.47,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 84.55,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 13,
                        "tcheck": 74,
                        "ttotal": 87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.95,
                        "tcheck": 46.96,
                        "ttotal": 53.91,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 98.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.19,
                        "tcheck": 47.07,
                        "ttotal": 54.26,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 58,
                        "ttotal": 72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 9,
                        "tcheck": 50,
                        "ttotal": 59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-12-25T15:03:55.000Z",
                "summary": {
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0,
                    "fail": 0
                },
                "checks": [
                    {
                        "flavor": "r-devel-linux-x86_64-debian-clang",
                        "version": "1.1.1",
                        "tinstall": 6.48,
                        "tcheck": 48.8,
                        "ttotal": 55.28,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 4.73,
                        "tcheck": 38.68,
                        "ttotal": 43.41,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 78.47,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 84.55,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 13,
                        "tcheck": 74,
                        "ttotal": 87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.95,
                        "tcheck": 46.96,
                        "ttotal": 53.91,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 98.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.44,
                        "tcheck": 46.91,
                        "ttotal": 54.35,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 58,
                        "ttotal": 72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-macos-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 9,
                        "tcheck": 50,
                        "ttotal": 59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            }
        ]
    }
}
```


```r
cchecks::cch_pkgs_history(x = "rhub")
```
```r
$error
NULL

$data
$data$package
[1] "rhub"

$data$history
[90m# A tibble: 30 x 4[39m
   date_updated  summary$any   $ok $note $warn $error $fail checks check_details
   [3m[90m<chr>[39m[23m         [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m [3m[90m<lgl>[39m[23m        
[90m 1[39m 2021-01-03T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 2[39m 2021-01-02T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 3[39m 2021-01-01T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 4[39m 2020-12-31T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 5[39m 2020-12-30T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 6[39m 2020-12-29T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 7[39m 2020-12-28T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 8[39m 2020-12-27T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 9[39m 2020-12-26T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m10[39m 2020-12-25T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m# … with 20 more rows[39m

```

For historical data _across packages_ see the [history endpoint](#history).
