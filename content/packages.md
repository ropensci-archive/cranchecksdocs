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
content-length: 6091
date: Mon, 22 Feb 2021 12:49:29 GMT

```
```json
{
    "found": 18535,
    "count": 2,
    "offset": 5,
    "error": null,
    "data": [
        {
            "package": "quantable",
            "url": "https://cloud.r-project.org/web/checks/check_results_quantable.html",
            "date_updated": "2021-02-22T12:04:37.335Z",
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
                    "version": "0.3.6",
                    "tinstall": 14.65,
                    "tcheck": 146.1,
                    "ttotal": 160.75,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.3.6",
                    "tinstall": 10.77,
                    "tcheck": 109.01,
                    "ttotal": 119.78,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 197.77,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 187.38,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.3.6",
                    "tinstall": 25,
                    "tcheck": 137,
                    "ttotal": 162,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.3.6",
                    "tinstall": 13.68,
                    "tcheck": 133.78,
                    "ttotal": 147.46,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 258.5,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/quantable-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.3.6",
                    "tinstall": 14.19,
                    "tcheck": 134.34,
                    "ttotal": 148.53,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.3.6",
                    "tinstall": 38,
                    "tcheck": 144,
                    "ttotal": 182,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.3.6",
                    "tinstall": 24,
                    "tcheck": 185,
                    "ttotal": 209,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/quantable-00check.html"
                }
            ],
            "check_details": null
        },
        {
            "package": "ibb",
            "url": "https://cloud.r-project.org/web/checks/check_results_ibb.html",
            "date_updated": "2021-02-22T12:04:37.335Z",
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
                    "version": "0.0.2",
                    "tinstall": 2.04,
                    "tcheck": 27.63,
                    "ttotal": 29.67,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0.2",
                    "tinstall": 1.7,
                    "tcheck": 21.81,
                    "ttotal": 23.51,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 46.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 35.63,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0.1",
                    "tinstall": 8,
                    "tcheck": 42,
                    "ttotal": 50,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0.2",
                    "tinstall": 2.25,
                    "tcheck": 26.98,
                    "ttotal": 29.23,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 55.8,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ibb-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0.2",
                    "tinstall": 2.1,
                    "tcheck": 27.11,
                    "ttotal": 29.21,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.0.2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0.1",
                    "tinstall": 11,
                    "tcheck": 57,
                    "ttotal": 68,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.0.2",
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
                    "tcheck": 53,
                    "ttotal": 59,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ibb-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0.2",
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
[1] 18535

$count
[1] 2

$offset
[1] 5

$error
NULL

$data
    package                                                                 url
1 quantable https://cloud.r-project.org/web/checks/check_results_quantable.html
2       ibb       https://cloud.r-project.org/web/checks/check_results_ibb.html
              date_updated summary.any summary.ok summary.note summary.warn
1 2021-02-22T12:04:37.335Z       FALSE         12            0            0
2 2021-02-22T12:04:37.335Z        TRUE          7            5            0
  summary.error summary.fail
1             0            0
2             0            0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  checks
1 r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-macos-x86_64, r-release-windows-ix86+x86_64, r-oldrel-macos-x86_64, r-oldrel-windows-ix86+x86_64, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 14.65, 10.77, 0, 0, 25, 13.68, 0, 14.19, 0, 38, 0, 24, 146.1, 109.01, 0, 0, 137, 133.78, 0, 134.34, 0, 144, 0, 185, 160.75, 119.78, 197.77, 187.38, 162, 147.46, 258.5, 148.53, 0, 182, 0, 209, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/quantable-00check.html
2                                                                                       r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-macos-x86_64, r-release-windows-ix86+x86_64, r-oldrel-macos-x86_64, r-oldrel-windows-ix86+x86_64, 0.0.2, 0.0.2, 0.0.2, 0.0.2, 0.0.1, 0.0.2, 0.0.2, 0.0.2, 0.0.2, 0.0.1, 0.0.2, 0.0.1, 2.04, 1.7, 0, 0, 8, 2.25, 0, 2.1, 0, 11, 0, 6, 27.63, 21.81, 0, 0, 42, 26.98, 0, 27.11, 0, 57, 0, 53, 29.67, 23.51, 46.22, 35.63, 50, 29.23, 55.8, 29.21, 0, 68, 0, 59, OK, OK, NOTE, NOTE, OK, OK, NOTE, OK, NOTE, OK, NOTE, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ibb-00check.html
                                                                                                                                                                                                   check_details.details
1                                                                                                                                                                                                                   NULL
2 0.0.2,   Note: found 359 marked UTF-8 strings, data for non-ASCII characters, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-patched-solaris-x86, r-release-macos-x86_64, r-oldrel-macos-x86_64
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
content-length: 2846
date: Mon, 22 Feb 2021 12:49:29 GMT

```
```json
{
    "error": null,
    "data": {
        "package": "rhub",
        "url": "https://cloud.r-project.org/web/checks/check_results_rhub.html",
        "date_updated": "2021-02-22T12:04:37.569Z",
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
                "tcheck": 49.08,
                "ttotal": 56.11,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-debian-gcc",
                "version": "1.1.1",
                "tinstall": 5.79,
                "tcheck": 37.47,
                "ttotal": 43.26,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-fedora-clang",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 76.72,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-fedora-gcc",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 81.83,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
            },
            {
                "flavor": "r-devel-windows-ix86+x86_64",
                "version": "1.1.1",
                "tinstall": 12,
                "tcheck": 55,
                "ttotal": 67,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-patched-linux-x86_64",
                "version": "1.1.1",
                "tinstall": 7.72,
                "tcheck": 46.47,
                "ttotal": 54.19,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-patched-solaris-x86",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 99.3,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
            },
            {
                "flavor": "r-release-linux-x86_64",
                "version": "1.1.1",
                "tinstall": 7.02,
                "tcheck": 47.28,
                "ttotal": 54.3,
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
                "tcheck": 55,
                "ttotal": 70,
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
                "tinstall": 8,
                "tcheck": 57,
                "ttotal": 65,
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
[1] "2021-02-22T12:04:37.569Z"

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
1  r-devel-linux-x86_64-debian-clang   1.1.1     7.03  49.08  56.11     OK
2    r-devel-linux-x86_64-debian-gcc   1.1.1     5.79  37.47  43.26     OK
3  r-devel-linux-x86_64-fedora-clang   1.1.1     0.00   0.00  76.72     OK
4    r-devel-linux-x86_64-fedora-gcc   1.1.1     0.00   0.00  81.83     OK
5        r-devel-windows-ix86+x86_64   1.1.1    12.00  55.00  67.00     OK
6             r-patched-linux-x86_64   1.1.1     7.72  46.47  54.19     OK
7              r-patched-solaris-x86   1.1.1     0.00   0.00  99.30     OK
8             r-release-linux-x86_64   1.1.1     7.02  47.28  54.30     OK
9             r-release-macos-x86_64   1.1.1     0.00   0.00   0.00     OK
10     r-release-windows-ix86+x86_64   1.1.1    15.00  55.00  70.00     OK
11             r-oldrel-macos-x86_64   1.1.1     0.00   0.00   0.00     OK
12      r-oldrel-windows-ix86+x86_64   1.1.1     8.00  57.00  65.00     OK
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
content-length: 27414
date: Mon, 22 Feb 2021 12:49:30 GMT

```
```json
{
    "error": null,
    "data": {
        "package": "rhub",
        "history": [
            {
                "date_updated": "2021-02-21T15:03:44.000Z",
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
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.52,
                        "tcheck": 37.42,
                        "ttotal": 42.94,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 76.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 82.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 55,
                        "ttotal": 67,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.72,
                        "tcheck": 46.47,
                        "ttotal": 54.19,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 99.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.02,
                        "tcheck": 47.28,
                        "ttotal": 54.3,
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
                        "tcheck": 55,
                        "ttotal": 70,
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
                        "tinstall": 8,
                        "tcheck": 57,
                        "ttotal": 65,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2021-02-20T15:03:51.000Z",
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
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.63,
                        "tcheck": 37.59,
                        "ttotal": 43.22,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 75.64,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 82.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 55,
                        "ttotal": 67,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.12,
                        "tcheck": 47.82,
                        "ttotal": 54.94,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 99.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.02,
                        "tcheck": 47.28,
                        "ttotal": 54.3,
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
                        "tcheck": 55,
                        "ttotal": 70,
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
                        "tinstall": 8,
                        "tcheck": 57,
                        "ttotal": 65,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2021-02-19T15:03:45.000Z",
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
                        "tinstall": 6.31,
                        "tcheck": 48.86,
                        "ttotal": 55.17,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.61,
                        "tcheck": 37.6,
                        "ttotal": 43.21,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 75.64,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 82.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 55,
                        "ttotal": 67,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.12,
                        "tcheck": 47.82,
                        "ttotal": 54.94,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 99.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.04,
                        "tcheck": 47.06,
                        "ttotal": 54.1,
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
                        "tcheck": 55,
                        "ttotal": 70,
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
                        "tinstall": 8,
                        "tcheck": 57,
                        "ttotal": 65,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2021-02-18T15:03:45.000Z",
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
                        "tinstall": 6.31,
                        "tcheck": 48.86,
                        "ttotal": 55.17,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.69,
                        "tcheck": 37.46,
                        "ttotal": 43.15,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 75.64,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 82.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 55,
                        "ttotal": 67,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.94,
                        "tcheck": 46.85,
                        "ttotal": 53.79,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 99.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.04,
                        "tcheck": 47.06,
                        "ttotal": 54.1,
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
                        "tcheck": 55,
                        "ttotal": 70,
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
                        "tinstall": 8,
                        "tcheck": 57,
                        "ttotal": 65,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2021-02-17T15:03:44.000Z",
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
                        "tinstall": 6.33,
                        "tcheck": 49.12,
                        "ttotal": 55.45,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.07,
                        "tcheck": 37.97,
                        "ttotal": 43.04,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 75.64,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 82.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 55,
                        "ttotal": 67,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.94,
                        "tcheck": 46.85,
                        "ttotal": 53.79,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 99.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.32,
                        "tcheck": 47.09,
                        "ttotal": 53.41,
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
                        "tcheck": 55,
                        "ttotal": 70,
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
                        "tinstall": 8,
                        "tcheck": 57,
                        "ttotal": 65,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null
            },
            {
                "date_updated": "2021-02-16T15:03:45.000Z",
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
                        "tinstall": 6.33,
                        "tcheck": 49.12,
                        "ttotal": 55.45,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.25,
                        "tcheck": 37.42,
                        "ttotal": 42.67,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 75.64,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 82.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 56,
                        "ttotal": 68,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.62,
                        "tcheck": 47.51,
                        "ttotal": 55.13,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 99.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.32,
                        "tcheck": 47.09,
                        "ttotal": 53.41,
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
                        "tcheck": 55,
                        "ttotal": 70,
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
                "date_updated": "2021-02-15T15:03:47.000Z",
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
                        "tinstall": 6.33,
                        "tcheck": 49.12,
                        "ttotal": 55.45,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.27,
                        "tcheck": 37.26,
                        "ttotal": 42.53,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 75.64,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 82.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 56,
                        "ttotal": 68,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.62,
                        "tcheck": 47.51,
                        "ttotal": 55.13,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 99.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.12,
                        "tcheck": 47.56,
                        "ttotal": 53.68,
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
                        "tcheck": 55,
                        "ttotal": 70,
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
                "date_updated": "2021-02-14T15:03:45.000Z",
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
                        "tinstall": 7.35,
                        "tcheck": 48.99,
                        "ttotal": 56.34,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.73,
                        "tcheck": 37.47,
                        "ttotal": 43.2,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 75.64,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 81.57,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 56,
                        "ttotal": 68,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.62,
                        "tcheck": 47.51,
                        "ttotal": 55.13,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 99.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.12,
                        "tcheck": 47.56,
                        "ttotal": 53.68,
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
                        "tcheck": 55,
                        "ttotal": 70,
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
                "date_updated": "2021-02-13T15:03:47.000Z",
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
                        "tinstall": 7.35,
                        "tcheck": 48.99,
                        "ttotal": 56.34,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 6.08,
                        "tcheck": 37.14,
                        "ttotal": 43.22,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 74.45,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 81.57,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 56,
                        "ttotal": 68,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 5.88,
                        "tcheck": 46.99,
                        "ttotal": 52.87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 99.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.12,
                        "tcheck": 47.56,
                        "ttotal": 53.68,
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
                        "tcheck": 55,
                        "ttotal": 70,
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
                "date_updated": "2021-02-12T15:03:45.000Z",
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
                        "tinstall": 7.29,
                        "tcheck": 49.11,
                        "ttotal": 56.4,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.71,
                        "tcheck": 37.61,
                        "ttotal": 43.32,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 74.45,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 81.57,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 56,
                        "ttotal": 68,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 5.88,
                        "tcheck": 46.99,
                        "ttotal": 52.87,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 99.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.59,
                        "tcheck": 47.3,
                        "ttotal": 53.89,
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
                        "tcheck": 55,
                        "ttotal": 70,
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
[90m 1[39m 2021-02-21T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 2[39m 2021-02-20T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 3[39m 2021-02-19T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 4[39m 2021-02-18T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 5[39m 2021-02-17T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 6[39m 2021-02-16T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 7[39m 2021-02-15T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 8[39m 2021-02-14T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m 9[39m 2021-02-13T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m10[39m 2021-02-12T1… FALSE          12     0     0      0     0 [90m<df[,[0m… [31mNA[39m           
[90m# … with 20 more rows[39m

```

For historical data _across packages_ see the [history endpoint](#history).
