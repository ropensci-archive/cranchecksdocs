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
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 6789
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 10 Aug 2020 12:39:24 GMT

```
```json
{
    "found": 17167,
    "count": 2,
    "offset": 5,
    "error": null,
    "data": [
        {
            "package": "ibb",
            "url": "https://cloud.r-project.org/web/checks/check_results_ibb.html",
            "date_updated": "2020-08-10T12:04:14.642Z",
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
                    "tinstall": 3.59,
                    "tcheck": 33.8,
                    "ttotal": 37.39,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0.1",
                    "tinstall": 2.9,
                    "tcheck": 26.75,
                    "ttotal": 29.65,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.89,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 43.28,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0.1",
                    "tinstall": 11,
                    "tcheck": 65,
                    "ttotal": 76,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0.1",
                    "tinstall": 3.77,
                    "tcheck": 33.1,
                    "ttotal": 36.87,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 65.8,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ibb-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0.1",
                    "tinstall": 3.32,
                    "tcheck": 32.91,
                    "ttotal": 36.23,
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
                    "tinstall": 18,
                    "tcheck": 55,
                    "ttotal": 73,
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
                    "tinstall": 9,
                    "tcheck": 47,
                    "ttotal": 56,
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
                "additional_issues": [

                ]
            }
        },
        {
            "package": "ChIPtest",
            "url": "https://cloud.r-project.org/web/checks/check_results_ChIPtest.html",
            "date_updated": "2020-08-10T12:04:14.642Z",
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
                    "tinstall": 3.19,
                    "tcheck": 23.94,
                    "ttotal": 27.13,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.0",
                    "tinstall": 2.34,
                    "tcheck": 18.39,
                    "ttotal": 20.73,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 41.69,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 31.47,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.0",
                    "tinstall": 12,
                    "tcheck": 62,
                    "ttotal": 74,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.0",
                    "tinstall": 2.99,
                    "tcheck": 23.6,
                    "ttotal": 26.59,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 50,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.0",
                    "tinstall": 2.78,
                    "tcheck": 23.2,
                    "ttotal": 25.98,
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
                    "tinstall": 9,
                    "tcheck": 43,
                    "ttotal": 52,
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
                "additional_issues": [

                ]
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
[1] 17167

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
1 2020-08-10T12:04:14.642Z        TRUE          7            5            0
2 2020-08-10T12:04:14.642Z        TRUE         10            2            0
  summary.error summary.fail
1             0            0
2             0            0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         checks
1                              r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-macos-x86_64, r-release-windows-ix86+x86_64, r-oldrel-macos-x86_64, r-oldrel-windows-ix86+x86_64, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 3.59, 2.9, 0, 0, 11, 3.77, 0, 3.32, 0, 18, 0, 9, 33.8, 26.75, 0, 0, 65, 33.1, 0, 32.91, 0, 55, 0, 47, 37.39, 29.65, 52.89, 43.28, 76, 36.87, 65.8, 36.23, 0, 73, 0, 56, OK, OK, NOTE, NOTE, OK, OK, NOTE, OK, NOTE, OK, NOTE, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ibb-00check.html
2 r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-macos-x86_64, r-release-windows-ix86+x86_64, r-oldrel-macos-x86_64, r-oldrel-windows-ix86+x86_64, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 3.19, 2.34, 0, 0, 12, 2.99, 0, 2.78, 0, 9, 0, 16, 23.94, 18.39, 0, 0, 62, 23.6, 0, 23.2, 0, 43, 0, 63, 27.13, 20.73, 41.69, 31.47, 74, 26.59, 50, 25.98, 0, 52, 0, 79, OK, OK, NOTE, NOTE, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ChIPtest-00check.html
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          check_details.details
1 0.0.1, 0.0.1, Namespace in Imports field not imported from: ‘xml2’\n  All declared Imports should be used.,   Note: found 359 marked UTF-8 strings, dependencies in R code, data for non-ASCII characters, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-patched-solaris-x86, r-release-macos-x86_64, r-oldrel-macos-x86_64, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-patched-solaris-x86, r-release-macos-x86_64, r-oldrel-macos-x86_64
2                                                                                                                                        1.0, File ‘ChIPtest/libs/ChIPtest.so’:\n  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’\n\nIt is good practice to register native routines and to disable symbol\nsearch.\n\nSee ‘Writing portable packages’ in the ‘Writing R Extensions’ manual., compiled code, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc
  check_details.additional_issues
1                            NULL
2                            NULL

```

## Packages by name

Get checks summary by package name.

[Function of the `cchecks` package: `cch_pkgs_history()`](https://docs.ropensci.org/cchecks/reference/cch_pkgs_history.html)

`GET [/pkgs/{package}]`

```shell
curl https://cranchecks.info/pkgs/rhub | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 2849
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 10 Aug 2020 12:39:24 GMT

```
```json
{
    "error": null,
    "data": {
        "package": "rhub",
        "url": "https://cloud.r-project.org/web/checks/check_results_rhub.html",
        "date_updated": "2020-08-10T12:04:14.899Z",
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
                "tinstall": 6.56,
                "tcheck": 48.68,
                "ttotal": 55.24,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-debian-gcc",
                "version": "1.1.1",
                "tinstall": 6.05,
                "tcheck": 37.29,
                "ttotal": 43.34,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-fedora-clang",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 73.68,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-fedora-gcc",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 78.99,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
            },
            {
                "flavor": "r-devel-windows-ix86+x86_64",
                "version": "1.1.1",
                "tinstall": 13,
                "tcheck": 97,
                "ttotal": 110,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-patched-linux-x86_64",
                "version": "1.1.1",
                "tinstall": 7.55,
                "tcheck": 47.8,
                "ttotal": 55.35,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-patched-solaris-x86",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 96.1,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
            },
            {
                "flavor": "r-release-linux-x86_64",
                "version": "1.1.1",
                "tinstall": 6.76,
                "tcheck": 48.91,
                "ttotal": 55.67,
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
                "tinstall": 19,
                "tcheck": 95,
                "ttotal": 114,
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
                "tinstall": 13,
                "tcheck": 68,
                "ttotal": 81,
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
[1] "2020-08-10T12:04:14.899Z"

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
1  r-devel-linux-x86_64-debian-clang   1.1.1     6.56  48.68  55.24     OK
2    r-devel-linux-x86_64-debian-gcc   1.1.1     6.05  37.29  43.34     OK
3  r-devel-linux-x86_64-fedora-clang   1.1.1     0.00   0.00  73.68     OK
4    r-devel-linux-x86_64-fedora-gcc   1.1.1     0.00   0.00  78.99     OK
5        r-devel-windows-ix86+x86_64   1.1.1    13.00  97.00 110.00     OK
6             r-patched-linux-x86_64   1.1.1     7.55  47.80  55.35     OK
7              r-patched-solaris-x86   1.1.1     0.00   0.00  96.10     OK
8             r-release-linux-x86_64   1.1.1     6.76  48.91  55.67     OK
9             r-release-macos-x86_64   1.1.1     0.00   0.00   0.00     OK
10     r-release-windows-ix86+x86_64   1.1.1    19.00  95.00 114.00     OK
11             r-oldrel-macos-x86_64   1.1.1     0.00   0.00   0.00     OK
12      r-oldrel-windows-ix86+x86_64   1.1.1    13.00  68.00  81.00     OK
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
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 27449
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 10 Aug 2020 12:39:25 GMT

```
```json
{
    "error": null,
    "data": {
        "package": "rhub",
        "history": [
            {
                "date_updated": "2020-08-09T15:03:24.000Z",
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
                        "tinstall": 6.28,
                        "tcheck": 48.63,
                        "ttotal": 54.91,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.96,
                        "tcheck": 38.17,
                        "ttotal": 44.13,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 73.68,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 79.48,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 13,
                        "tcheck": 97,
                        "ttotal": 110,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.55,
                        "tcheck": 47.8,
                        "ttotal": 55.35,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 96.1,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.76,
                        "tcheck": 48.91,
                        "ttotal": 55.67,
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
                        "tinstall": 19,
                        "tcheck": 95,
                        "ttotal": 114,
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
                        "tinstall": 13,
                        "tcheck": 68,
                        "ttotal": 81,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-08-08T15:03:25.000Z",
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
                        "tinstall": 6.28,
                        "tcheck": 48.63,
                        "ttotal": 54.91,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.87,
                        "tcheck": 37.37,
                        "ttotal": 43.24,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 74.79,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 79.48,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 13,
                        "tcheck": 97,
                        "ttotal": 110,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.55,
                        "tcheck": 47.8,
                        "ttotal": 55.35,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 96.1,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.76,
                        "tcheck": 48.91,
                        "ttotal": 55.67,
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
                        "tinstall": 19,
                        "tcheck": 95,
                        "ttotal": 114,
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
                        "tinstall": 13,
                        "tcheck": 68,
                        "ttotal": 81,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-08-07T15:03:23.000Z",
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
                        "tinstall": 6.28,
                        "tcheck": 48.63,
                        "ttotal": 54.91,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.6,
                        "tcheck": 37.72,
                        "ttotal": 43.32,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 74.79,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 79.48,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 22,
                        "tcheck": 67,
                        "ttotal": 89,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.11,
                        "tcheck": 47.94,
                        "ttotal": 55.05,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 96.1,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.39,
                        "tcheck": 47.67,
                        "ttotal": 55.06,
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
                        "tinstall": 24,
                        "tcheck": 92,
                        "ttotal": 116,
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
                        "tinstall": 13,
                        "tcheck": 68,
                        "ttotal": 81,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-08-06T15:03:26.000Z",
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
                        "tinstall": 6.58,
                        "tcheck": 48.56,
                        "ttotal": 55.14,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.53,
                        "tcheck": 37.85,
                        "ttotal": 43.38,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 74.79,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 79.48,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 22,
                        "tcheck": 67,
                        "ttotal": 89,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.11,
                        "tcheck": 47.94,
                        "ttotal": 55.05,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 96.1,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.39,
                        "tcheck": 47.67,
                        "ttotal": 55.06,
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
                        "tinstall": 24,
                        "tcheck": 92,
                        "ttotal": 116,
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
                        "tinstall": 14,
                        "tcheck": 67,
                        "ttotal": 81,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-08-05T15:03:23.000Z",
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
                        "tinstall": 6.58,
                        "tcheck": 48.56,
                        "ttotal": 55.14,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.9,
                        "tcheck": 37.22,
                        "ttotal": 43.12,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 74.79,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 79.48,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 22,
                        "tcheck": 67,
                        "ttotal": 89,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.5,
                        "tcheck": 47.35,
                        "ttotal": 53.85,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 96.1,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.85,
                        "tcheck": 47.58,
                        "ttotal": 54.43,
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
                        "tinstall": 24,
                        "tcheck": 92,
                        "ttotal": 116,
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
                        "tinstall": 14,
                        "tcheck": 67,
                        "ttotal": 81,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-08-04T15:03:23.000Z",
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
                        "tinstall": 7.34,
                        "tcheck": 48.79,
                        "ttotal": 56.13,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.2,
                        "tcheck": 37.31,
                        "ttotal": 42.51,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 74.79,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 79.48,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 21,
                        "tcheck": 62,
                        "ttotal": 83,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.5,
                        "tcheck": 47.35,
                        "ttotal": 53.85,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 96.1,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.85,
                        "tcheck": 47.58,
                        "ttotal": 54.43,
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
                        "tinstall": 24,
                        "tcheck": 92,
                        "ttotal": 116,
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
                        "tinstall": 14,
                        "tcheck": 67,
                        "ttotal": 81,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-08-03T15:03:25.000Z",
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
                        "tinstall": 7.34,
                        "tcheck": 48.79,
                        "ttotal": 56.13,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.23,
                        "tcheck": 37.32,
                        "ttotal": 42.55,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 74.79,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 79.48,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 21,
                        "tcheck": 62,
                        "ttotal": 83,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.71,
                        "tcheck": 47.26,
                        "ttotal": 54.97,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 96.1,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.25,
                        "tcheck": 47.64,
                        "ttotal": 54.89,
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
                        "tinstall": 30,
                        "tcheck": 87,
                        "ttotal": 117,
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
                        "tinstall": 14,
                        "tcheck": 67,
                        "ttotal": 81,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-08-02T15:03:24.000Z",
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
                        "tinstall": 7.03,
                        "tcheck": 48.32,
                        "ttotal": 55.35,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.92,
                        "tcheck": 37.42,
                        "ttotal": 43.34,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 74.79,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 79.25,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 21,
                        "tcheck": 62,
                        "ttotal": 83,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.71,
                        "tcheck": 47.26,
                        "ttotal": 54.97,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 96.1,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.25,
                        "tcheck": 47.64,
                        "ttotal": 54.89,
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
                        "tinstall": 30,
                        "tcheck": 87,
                        "ttotal": 117,
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
                        "tinstall": 19,
                        "tcheck": 86,
                        "ttotal": 105,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-08-01T15:03:25.000Z",
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
                        "tinstall": 7.03,
                        "tcheck": 48.32,
                        "ttotal": 55.35,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 6.2,
                        "tcheck": 37.67,
                        "ttotal": 43.87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 75.13,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 79.25,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 21,
                        "tcheck": 62,
                        "ttotal": 83,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.71,
                        "tcheck": 47.26,
                        "ttotal": 54.97,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 96.1,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.25,
                        "tcheck": 47.64,
                        "ttotal": 54.89,
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
                        "tinstall": 30,
                        "tcheck": 87,
                        "ttotal": 117,
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
                        "tinstall": 19,
                        "tcheck": 86,
                        "ttotal": 105,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2020-07-31T15:03:22.000Z",
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
                        "tinstall": 7.03,
                        "tcheck": 48.32,
                        "ttotal": 55.35,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.26,
                        "tcheck": 38.02,
                        "ttotal": 43.28,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 75.13,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 79.25,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 22,
                        "tcheck": 67,
                        "ttotal": 89,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.21,
                        "tcheck": 47.64,
                        "ttotal": 54.85,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 96.1,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.75,
                        "tcheck": 48.14,
                        "ttotal": 54.89,
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
                        "tinstall": 30,
                        "tcheck": 87,
                        "ttotal": 117,
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
                        "tinstall": 19,
                        "tcheck": 86,
                        "ttotal": 105,
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
   date_updated summary$any   $ok $note $warn $error $fail checks
   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m 1[39m 2020-08-09T… FALSE          12     0     0      0     0 [90m<df[,[0m…
[90m 2[39m 2020-08-08T… FALSE          12     0     0      0     0 [90m<df[,[0m…
[90m 3[39m 2020-08-07T… FALSE          12     0     0      0     0 [90m<df[,[0m…
[90m 4[39m 2020-08-06T… FALSE          12     0     0      0     0 [90m<df[,[0m…
[90m 5[39m 2020-08-05T… FALSE          12     0     0      0     0 [90m<df[,[0m…
[90m 6[39m 2020-08-04T… FALSE          12     0     0      0     0 [90m<df[,[0m…
[90m 7[39m 2020-08-03T… FALSE          12     0     0      0     0 [90m<df[,[0m…
[90m 8[39m 2020-08-02T… FALSE          12     0     0      0     0 [90m<df[,[0m…
[90m 9[39m 2020-08-01T… FALSE          12     0     0      0     0 [90m<df[,[0m…
[90m10[39m 2020-07-31T… FALSE          12     0     0      0     0 [90m<df[,[0m…
[90m# … with 20 more rows, and 2 more variables: check_details$details [3m[90m<list>[90m[23m,[39m
[90m#   $additional_issues [3m[90m<list>[90m[23m[39m

```

For historical data _across packages_ see the [history endpoint](#history).
