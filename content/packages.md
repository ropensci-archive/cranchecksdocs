---
weight: 12
title: Packages
output: 
  html_document:
    keep_md: true
---



# Packages

Get packages based checks.

[Function of the `cchecks` R package](https://docs.ropensci.org/cchecks/reference/cch_pkgs.html).

## Packages

Get all packages.

Default limit of 10.

```JavaScript
curl https://cranchecks.info/pkgs/ | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 32124
date: Sat, 09 May 2020 14:57:20 GMT

```
```JavaScript
{
    "found": 16539,
    "count": 10,
    "offset": null,
    "error": null,
    "data": [
        {
            "_id": "localIV",
            "package": "localIV",
            "url": "https://cloud.r-project.org/web/checks/check_results_localIV.html",
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
                    "version": "0.3.0",
                    "tinstall": 2.76,
                    "tcheck": 42.5,
                    "ttotal": 45.26,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/localIV-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.3.0",
                    "tinstall": 2.24,
                    "tcheck": 33.12,
                    "ttotal": 35.36,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/localIV-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.3.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 54.85,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/localIV-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.3.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 53.87,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/localIV-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.3.0",
                    "tinstall": 18,
                    "tcheck": 61,
                    "ttotal": 79,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/localIV-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.3.0",
                    "tinstall": 1.91,
                    "tcheck": 42.23,
                    "ttotal": 44.14,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/localIV-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.3.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 82.4,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/localIV-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.3.0",
                    "tinstall": 2.63,
                    "tcheck": 42.21,
                    "ttotal": 44.84,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/localIV-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.3.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/localIV-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.3.0",
                    "tinstall": 18,
                    "tcheck": 73,
                    "ttotal": 91,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/localIV-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.3.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/localIV-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.3.0",
                    "tinstall": 6,
                    "tcheck": 54,
                    "ttotal": 60,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/localIV-00check.html"
                }
            ],
            "check_details": null,
            "date_updated": "2020-05-09T12:04:09.399Z"
        },
        {
            "_id": "di",
            "package": "di",
            "url": "https://cloud.r-project.org/web/checks/check_results_di.html",
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
                    "version": "1.1.4",
                    "tinstall": 2.64,
                    "tcheck": 25.73,
                    "ttotal": 28.37,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/di-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.1.4",
                    "tinstall": 2.09,
                    "tcheck": 20.95,
                    "ttotal": 23.04,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/di-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 35.37,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/di-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 34.99,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/di-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.1.4",
                    "tinstall": 7,
                    "tcheck": 40,
                    "ttotal": 47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/di-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.1.4",
                    "tinstall": 2.6,
                    "tcheck": 25.67,
                    "ttotal": 28.27,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/di-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.2,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/di-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.1.4",
                    "tinstall": 2.09,
                    "tcheck": 25.63,
                    "ttotal": 27.72,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/di-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/di-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.1.4",
                    "tinstall": 7,
                    "tcheck": 56,
                    "ttotal": 63,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/di-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/di-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.1.4",
                    "tinstall": 6,
                    "tcheck": 40,
                    "ttotal": 46,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/di-00check.html"
                }
            ],
            "check_details": null,
            "date_updated": "2020-05-09T12:04:09.399Z"
        },
        {
            "_id": "GAR",
            "package": "GAR",
            "url": "https://cloud.r-project.org/web/checks/check_results_GAR.html",
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
                    "version": "1.1",
                    "tinstall": 2.16,
                    "tcheck": 22.5,
                    "ttotal": 24.66,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/GAR-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.1",
                    "tinstall": 1.61,
                    "tcheck": 17.99,
                    "ttotal": 19.6,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/GAR-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 30.62,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/GAR-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 29.47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/GAR-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.1",
                    "tinstall": 6,
                    "tcheck": 50,
                    "ttotal": 56,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/GAR-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64-gcc8",
                    "version": "1.1",
                    "tinstall": 5,
                    "tcheck": 61,
                    "ttotal": 66,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64-gcc8/GAR-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/GAR-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 43.3,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/GAR-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.1",
                    "tinstall": 1.66,
                    "tcheck": 21.08,
                    "ttotal": 22.74,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/GAR-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.1",
                    "tinstall": 5,
                    "tcheck": 36,
                    "ttotal": 41,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/GAR-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/GAR-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.1",
                    "tinstall": 2,
                    "tcheck": 48,
                    "ttotal": 50,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/GAR-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/GAR-00check.html"
                }
            ],
            "check_details": {
                "version": "1.1",
                "check": "examples",
                "result": "ERROR",
                "output": "Running examples in ‘GAR-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: GAR-package\n> ### Title: Authorize and Request Google Analytics data.\n> ### Aliases: GAR-package GAR\n> ### Keywords: package\n> \n> ### ** Examples\n> \n> \n> \n> getCode(\n+         client_id=\"ABCDEFG\"\n+         )\n> \n> getRefresh(\n+             client_id=\"ABCDEFG\",\n+             client_secret=\"HIJKLMNOP\",\n+             code=\"QRSTUVWX\"\n+             )\nNULL\n> \n> gaRequest(\n+         id=c('ga:123456789','ga:987654321'), \n+         dimensions='ga:date,ga:month', \n+         metrics='ga:sessions,ga:users,ga:pageviews', \n+         start='YYYY-MM-DD',\n+         end='YYYY-MM-DDD',\n+         sort='-ga:sessions,ga:users',\n+         max='1000',\n+         filters='ga:browser==VALUE,ga:city==VALUE',\n+         segment='abcdef',\n+         token='abcdef',\n+         allResults=FALSE\n+         )\nError in rbind(deparse.level, ...) : \n  numbers of columns of arguments do not match\nCalls: gaRequest -> do.call -> rbind -> rbind\nExecution halted",
                "flavors": [
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            },
            "date_updated": "2020-05-09T12:04:09.399Z"
        },
        {
            "_id": "MetABEL",
            "package": "MetABEL",
            "url": "https://cloud.r-project.org/web/checks/check_results_MetABEL.html",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 12,
                "warn": 0,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.2-0",
                    "tinstall": 2.51,
                    "tcheck": 21.06,
                    "ttotal": 23.57,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/MetABEL-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.2-0",
                    "tinstall": 2.19,
                    "tcheck": 16.6,
                    "ttotal": 18.79,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/MetABEL-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.2-0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 29.54,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/MetABEL-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.2-0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 29.48,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/MetABEL-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.2-0",
                    "tinstall": 7,
                    "tcheck": 49,
                    "ttotal": 56,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/MetABEL-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.2-0",
                    "tinstall": 2.73,
                    "tcheck": 21.56,
                    "ttotal": 24.29,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/MetABEL-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.2-0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 43.1,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/MetABEL-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.2-0",
                    "tinstall": 2.37,
                    "tcheck": 21.21,
                    "ttotal": 23.58,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/MetABEL-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.2-0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/MetABEL-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.2-0",
                    "tinstall": 5,
                    "tcheck": 32,
                    "ttotal": 37,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/MetABEL-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.2-0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/MetABEL-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.2-0",
                    "tinstall": 6,
                    "tcheck": 31,
                    "ttotal": 37,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/MetABEL-00check.html"
                }
            ],
            "check_details": {
                "version": "0.2-0",
                "check": "package dependencies",
                "result": "NOTE",
                "output": "Package suggested but not available for checking: 'GenABEL'",
                "flavors": [
                    "r-devel-linux-x86_64-debian-clang",
                    "r-devel-linux-x86_64-debian-gcc",
                    "r-devel-linux-x86_64-fedora-clang",
                    "r-devel-linux-x86_64-fedora-gcc",
                    "r-devel-windows-ix86+x86_64",
                    "r-patched-linux-x86_64",
                    "r-patched-solaris-x86",
                    "r-release-linux-x86_64",
                    "r-release-osx-x86_64",
                    "r-release-windows-ix86+x86_64",
                    "r-oldrel-osx-x86_64"
                ],
                "additional_issues": [

                ]
            },
            "date_updated": "2020-05-09T12:04:09.399Z"
        },
        {
            "_id": "quantable",
            "package": "quantable",
            "url": "https://cloud.r-project.org/web/checks/check_results_quantable.html",
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
                    "tinstall": 16.56,
                    "tcheck": 135.86,
                    "ttotal": 152.42,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.3.6",
                    "tinstall": 11.88,
                    "tcheck": 104.15,
                    "ttotal": 116.03,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 174.86,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 178.04,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.3.6",
                    "tinstall": 33,
                    "tcheck": 156,
                    "ttotal": 189,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.3.6",
                    "tinstall": 14.41,
                    "tcheck": 131.69,
                    "ttotal": 146.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 258.3,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/quantable-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.3.6",
                    "tinstall": 14.29,
                    "tcheck": 134.7,
                    "ttotal": 148.99,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.3.6",
                    "tinstall": 37,
                    "tcheck": 209,
                    "ttotal": 246,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.3.6",
                    "tinstall": 24,
                    "tcheck": 142,
                    "ttotal": 166,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/quantable-00check.html"
                }
            ],
            "check_details": null,
            "date_updated": "2020-05-09T12:04:09.399Z"
        },
        {
            "_id": "ChIPtest",
            "package": "ChIPtest",
            "url": "https://cloud.r-project.org/web/checks/check_results_ChIPtest.html",
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
                    "tcheck": 23.24,
                    "ttotal": 26.43,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.0",
                    "tinstall": 2.49,
                    "tcheck": 18.39,
                    "ttotal": 20.88,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 34.4,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 32.13,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.0",
                    "tinstall": 9,
                    "tcheck": 65,
                    "ttotal": 74,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.0",
                    "tinstall": 3.02,
                    "tcheck": 23.78,
                    "ttotal": 26.8,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 49.7,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.0",
                    "tinstall": 2.71,
                    "tcheck": 23.15,
                    "ttotal": 25.86,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/ChIPtest-00check.html"
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
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/ChIPtest-00check.html"
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
                "version": "1.0",
                "check": "compiled code",
                "result": "NOTE",
                "output": "File ‘ChIPtest/libs/ChIPtest.so’:\n  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’\n\nIt is good practice to register native routines and to disable symbol\nsearch.\n\nSee ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.",
                "flavors": [
                    "r-devel-linux-x86_64-fedora-clang",
                    "r-devel-linux-x86_64-fedora-gcc"
                ],
                "additional_issues": [

                ]
            },
            "date_updated": "2020-05-09T12:04:09.399Z"
        },
        {
            "_id": "TSF",
            "package": "TSF",
            "url": "https://cloud.r-project.org/web/checks/check_results_TSF.html",
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
                    "version": "0.1.1",
                    "tinstall": 6.05,
                    "tcheck": 63.92,
                    "ttotal": 69.97,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/TSF-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.1.1",
                    "tinstall": 4.67,
                    "tcheck": 47.62,
                    "ttotal": 52.29,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/TSF-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 82.83,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/TSF-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 80.35,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/TSF-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.1.1",
                    "tinstall": 18,
                    "tcheck": 73,
                    "ttotal": 91,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/TSF-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.1.1",
                    "tinstall": 5.77,
                    "tcheck": 60.98,
                    "ttotal": 66.75,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/TSF-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 126.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/TSF-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.1.1",
                    "tinstall": 6.53,
                    "tcheck": 61.3,
                    "ttotal": 67.83,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/TSF-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/TSF-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.1.1",
                    "tinstall": 23,
                    "tcheck": 111,
                    "ttotal": 134,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/TSF-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/TSF-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.1.1",
                    "tinstall": 15,
                    "tcheck": 68,
                    "ttotal": 83,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/TSF-00check.html"
                }
            ],
            "check_details": null,
            "date_updated": "2020-05-09T12:04:09.399Z"
        },
        {
            "_id": "apercu",
            "package": "apercu",
            "url": "https://cloud.r-project.org/web/checks/check_results_apercu.html",
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
                    "version": "0.2.4",
                    "tinstall": 2.11,
                    "tcheck": 21.27,
                    "ttotal": 23.38,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/apercu-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.2.4",
                    "tinstall": 1.7,
                    "tcheck": 16.85,
                    "ttotal": 18.55,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/apercu-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.2.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 29.06,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/apercu-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.2.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 28.36,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/apercu-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.2.4",
                    "tinstall": 7,
                    "tcheck": 34,
                    "ttotal": 41,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/apercu-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.2.4",
                    "tinstall": 1.67,
                    "tcheck": 21.13,
                    "ttotal": 22.8,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/apercu-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.2.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 41.8,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/apercu-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.2.4",
                    "tinstall": 2.07,
                    "tcheck": 20.91,
                    "ttotal": 22.98,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/apercu-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.2.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/apercu-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.2.4",
                    "tinstall": 5,
                    "tcheck": 44,
                    "ttotal": 49,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/apercu-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.2.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/apercu-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.2.4",
                    "tinstall": 5,
                    "tcheck": 34,
                    "ttotal": 39,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/apercu-00check.html"
                }
            ],
            "check_details": {
                "version": "0.2.4",
                "check": "dependencies in R code",
                "result": "NOTE",
                "output": "Namespace in Imports field not imported from: ‘pls’\n  All declared Imports should be used.",
                "flavors": [
                    "r-devel-linux-x86_64-fedora-clang",
                    "r-devel-linux-x86_64-fedora-gcc",
                    "r-patched-solaris-x86",
                    "r-release-osx-x86_64",
                    "r-oldrel-osx-x86_64"
                ],
                "additional_issues": [

                ]
            },
            "date_updated": "2020-05-09T12:04:09.399Z"
        },
        {
            "_id": "SPRT",
            "package": "SPRT",
            "url": "https://cloud.r-project.org/web/checks/check_results_SPRT.html",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 12,
                "warn": 0,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.0",
                    "tinstall": 2.08,
                    "tcheck": 20.26,
                    "ttotal": 22.34,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/SPRT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.0",
                    "tinstall": 1.72,
                    "tcheck": 16.27,
                    "ttotal": 17.99,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/SPRT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 28.25,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/SPRT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 27.28,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/SPRT-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.0",
                    "tinstall": 7,
                    "tcheck": 41,
                    "ttotal": 48,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/SPRT-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.0",
                    "tinstall": 2.19,
                    "tcheck": 20.44,
                    "ttotal": 22.63,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/SPRT-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 41.5,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/SPRT-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.0",
                    "tinstall": 2.12,
                    "tcheck": 20.5,
                    "ttotal": 22.62,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/SPRT-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/SPRT-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.0",
                    "tinstall": 6,
                    "tcheck": 31,
                    "ttotal": 37,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/SPRT-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/SPRT-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.0",
                    "tinstall": 5,
                    "tcheck": 42,
                    "ttotal": 47,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/SPRT-00check.html"
                }
            ],
            "check_details": {
                "version": "1.0",
                "check": "R code for possible problems",
                "result": "NOTE",
                "output": "plot.SPRT: no visible global function definition for 'par'\nplot.SPRT: no visible global function definition for 'abline'\nprint.SPRT: no visible global function definition for 'head'\nUndefined global functions or variables:\n  abline head par\nConsider adding\n  importFrom(\"graphics\", \"abline\", \"par\")\n  importFrom(\"utils\", \"head\")\nto your NAMESPACE file.",
                "flavors": [
                    "r-devel-linux-x86_64-debian-clang",
                    "r-devel-linux-x86_64-debian-gcc",
                    "r-devel-linux-x86_64-fedora-clang",
                    "r-devel-linux-x86_64-fedora-gcc",
                    "r-devel-windows-ix86+x86_64",
                    "r-patched-linux-x86_64",
                    "r-patched-solaris-x86",
                    "r-release-linux-x86_64",
                    "r-release-osx-x86_64",
                    "r-release-windows-ix86+x86_64"
                ],
                "additional_issues": [

                ]
            },
            "date_updated": "2020-05-09T12:04:09.399Z"
        },
        {
            "_id": "W2CWM2C",
            "package": "W2CWM2C",
            "url": "https://cloud.r-project.org/web/checks/check_results_W2CWM2C.html",
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
                    "version": "2.0",
                    "tinstall": 2.79,
                    "tcheck": 28.43,
                    "ttotal": 31.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "2.0",
                    "tinstall": 2.21,
                    "tcheck": 23,
                    "ttotal": 25.21,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "2.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 38.21,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "2.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 38.25,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "2.0",
                    "tinstall": 6,
                    "tcheck": 39,
                    "ttotal": 45,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "2.0",
                    "tinstall": 3,
                    "tcheck": 29.28,
                    "ttotal": 32.28,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "2.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 58,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "2.0",
                    "tinstall": 3.01,
                    "tcheck": 28.64,
                    "ttotal": 31.65,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "2.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "2.0",
                    "tinstall": 6,
                    "tcheck": 54,
                    "ttotal": 60,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "2.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/W2CWM2C-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "2.0",
                    "tinstall": 7,
                    "tcheck": 40,
                    "ttotal": 47,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/W2CWM2C-00check.html"
                }
            ],
            "check_details": null,
            "date_updated": "2020-05-09T12:04:09.399Z"
        }
    ]
}
```


```r
cchecks::cch_pkgs()
```
```r
$found
[1] 16539

$count
[1] 10

$offset
[1] 0

$error
NULL

$data
         _id   package
1    localIV   localIV
2         di        di
3        GAR       GAR
4    MetABEL   MetABEL
5  quantable quantable
6   ChIPtest  ChIPtest
7        TSF       TSF
8     apercu    apercu
9       SPRT      SPRT
10   W2CWM2C   W2CWM2C
                                                                   url
1    https://cloud.r-project.org/web/checks/check_results_localIV.html
2         https://cloud.r-project.org/web/checks/check_results_di.html
3        https://cloud.r-project.org/web/checks/check_results_GAR.html
4    https://cloud.r-project.org/web/checks/check_results_MetABEL.html
5  https://cloud.r-project.org/web/checks/check_results_quantable.html
6   https://cloud.r-project.org/web/checks/check_results_ChIPtest.html
7        https://cloud.r-project.org/web/checks/check_results_TSF.html
8     https://cloud.r-project.org/web/checks/check_results_apercu.html
9       https://cloud.r-project.org/web/checks/check_results_SPRT.html
10   https://cloud.r-project.org/web/checks/check_results_W2CWM2C.html
   summary.any summary.ok summary.note summary.warn summary.error summary.fail
1        FALSE         12            0            0             0            0
2        FALSE         12            0            0             0            0
3         TRUE         12            0            0             1            0
4         TRUE          0           12            0             0            0
5        FALSE         12            0            0             0            0
6         TRUE         10            2            0             0            0
7        FALSE         12            0            0             0            0
8         TRUE          7            5            0             0            0
9         TRUE          0           12            0             0            0
10       FALSE         12            0            0             0            0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           checks
1                                                                r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 2.76, 2.24, 0, 0, 18, 1.91, 0, 2.63, 0, 18, 0, 6, 42.5, 33.12, 0, 0, 61, 42.23, 0, 42.21, 0, 73, 0, 54, 45.26, 35.36, 54.85, 53.87, 79, 44.14, 82.4, 44.84, 0, 91, 0, 60, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/localIV-00check.html
2                                                                                                                              r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 2.64, 2.09, 0, 0, 7, 2.6, 0, 2.09, 0, 7, 0, 6, 25.73, 20.95, 0, 0, 40, 25.67, 0, 25.63, 0, 56, 0, 40, 28.37, 23.04, 35.37, 34.99, 47, 28.27, 52.2, 27.72, 0, 63, 0, 46, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/di-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/di-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/di-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/di-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/di-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/di-00check.html
3  r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-devel-windows-ix86+x86_64-gcc8, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-windows-ix86+x86_64, r-release-osx-x86_64, r-oldrel-windows-ix86+x86_64, r-oldrel-osx-x86_64, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 2.16, 1.61, 0, 0, 6, 5, 0, 0, 1.66, 5, 0, 2, 0, 22.5, 17.99, 0, 0, 50, 61, 0, 0, 21.08, 36, 0, 48, 0, 24.66, 19.6, 30.62, 29.47, 56, 66, 0, 43.3, 22.74, 41, 0, 50, 0, OK, OK, OK, OK, OK, OK, OK, ERROR, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64-gcc8/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/GAR-00check.html
4                                          r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 2.51, 2.19, 0, 0, 7, 2.73, 0, 2.37, 0, 5, 0, 6, 21.06, 16.6, 0, 0, 49, 21.56, 0, 21.21, 0, 32, 0, 31, 23.57, 18.79, 29.54, 29.48, 56, 24.29, 43.1, 23.58, 0, 37, 0, 37, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/MetABEL-00check.html
5                   r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 16.56, 11.88, 0, 0, 33, 14.41, 0, 14.29, 0, 37, 0, 24, 135.86, 104.15, 0, 0, 156, 131.69, 0, 134.7, 0, 209, 0, 142, 152.42, 116.03, 174.86, 178.04, 189, 146.1, 258.3, 148.99, 0, 246, 0, 166, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/quantable-00check.html
6                                                                          r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 3.19, 2.49, 0, 0, 9, 3.02, 0, 2.71, 0, 9, 0, 16, 23.24, 18.39, 0, 0, 65, 23.78, 0, 23.15, 0, 43, 0, 63, 26.43, 20.88, 34.4, 32.13, 74, 26.8, 49.7, 25.86, 0, 52, 0, 79, OK, OK, NOTE, NOTE, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ChIPtest-00check.html
7                                                                                                            r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 6.05, 4.67, 0, 0, 18, 5.77, 0, 6.53, 0, 23, 0, 15, 63.92, 47.62, 0, 0, 73, 60.98, 0, 61.3, 0, 111, 0, 68, 69.97, 52.29, 82.83, 80.35, 91, 66.75, 126.1, 67.83, 0, 134, 0, 83, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/TSF-00check.html
8                                                                     r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 2.11, 1.7, 0, 0, 7, 1.67, 0, 2.07, 0, 5, 0, 5, 21.27, 16.85, 0, 0, 34, 21.13, 0, 20.91, 0, 44, 0, 34, 23.38, 18.55, 29.06, 28.36, 41, 22.8, 41.8, 22.98, 0, 49, 0, 39, OK, OK, NOTE, NOTE, OK, OK, NOTE, OK, NOTE, OK, NOTE, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/apercu-00check.html
9                                                                                                      r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.08, 1.72, 0, 0, 7, 2.19, 0, 2.12, 0, 6, 0, 5, 20.26, 16.27, 0, 0, 41, 20.44, 0, 20.5, 0, 31, 0, 42, 22.34, 17.99, 28.25, 27.28, 48, 22.63, 41.5, 22.62, 0, 37, 0, 47, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/SPRT-00check.html
10                                                                                                r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.79, 2.21, 0, 0, 6, 3, 0, 3.01, 0, 6, 0, 7, 28.43, 23, 0, 0, 39, 29.28, 0, 28.64, 0, 54, 0, 40, 31.22, 25.21, 38.21, 38.25, 45, 32.28, 58, 31.65, 0, 60, 0, 47, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/W2CWM2C-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/W2CWM2C-00check.html
   check_details.version          check_details.check check_details.result
1                   <NA>                         <NA>                 <NA>
2                   <NA>                         <NA>                 <NA>
3                    1.1                     examples                ERROR
4                  0.2-0         package dependencies                 NOTE
5                   <NA>                         <NA>                 <NA>
6                    1.0                compiled code                 NOTE
7                   <NA>                         <NA>                 <NA>
8                  0.2.4       dependencies in R code                 NOTE
9                    1.0 R code for possible problems                 NOTE
10                  <NA>                         <NA>                 <NA>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             check_details.output
1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            <NA>
2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            <NA>
3  Running examples in ‘GAR-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: GAR-package\n> ### Title: Authorize and Request Google Analytics data.\n> ### Aliases: GAR-package GAR\n> ### Keywords: package\n> \n> ### ** Examples\n> \n> \n> \n> getCode(\n+         client_id="ABCDEFG"\n+         )\n> \n> getRefresh(\n+             client_id="ABCDEFG",\n+             client_secret="HIJKLMNOP",\n+             code="QRSTUVWX"\n+             )\nNULL\n> \n> gaRequest(\n+         id=c('ga:123456789','ga:987654321'), \n+         dimensions='ga:date,ga:month', \n+         metrics='ga:sessions,ga:users,ga:pageviews', \n+         start='YYYY-MM-DD',\n+         end='YYYY-MM-DDD',\n+         sort='-ga:sessions,ga:users',\n+         max='1000',\n+         filters='ga:browser==VALUE,ga:city==VALUE',\n+         segment='abcdef',\n+         token='abcdef',\n+         allResults=FALSE\n+         )\nError in rbind(deparse.level, ...) : \n  numbers of columns of arguments do not match\nCalls: gaRequest -> do.call -> rbind -> rbind\nExecution halted
4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Package suggested but not available for checking: 'GenABEL'
5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            <NA>
6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  File ‘ChIPtest/libs/ChIPtest.so’:\n  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’\n\nIt is good practice to register native routines and to disable symbol\nsearch.\n\nSee ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
7                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            <NA>
8                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Namespace in Imports field not imported from: ‘pls’\n  All declared Imports should be used.
9                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        plot.SPRT: no visible global function definition for 'par'\nplot.SPRT: no visible global function definition for 'abline'\nprint.SPRT: no visible global function definition for 'head'\nUndefined global functions or variables:\n  abline head par\nConsider adding\n  importFrom("graphics", "abline", "par")\n  importFrom("utils", "head")\nto your NAMESPACE file.
10                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           <NA>
                                                                                                                                                                                                                                                                                                  check_details.flavors
1                                                                                                                                                                                                                                                                                                                  NULL
2                                                                                                                                                                                                                                                                                                                  NULL
3                                                                                                                                                                                                                                                                                                 r-patched-solaris-x86
4  r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64
5                                                                                                                                                                                                                                                                                                                  NULL
6                                                                                                                                                                                                                                                    r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc
7                                                                                                                                                                                                                                                                                                                  NULL
8                                                                                                                                                                                  r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-patched-solaris-x86, r-release-osx-x86_64, r-oldrel-osx-x86_64
9                       r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64
10                                                                                                                                                                                                                                                                                                                 NULL
   check_details.additional_issues             date_updated
1                             NULL 2020-05-09T12:04:09.399Z
2                             NULL 2020-05-09T12:04:09.399Z
3                             NULL 2020-05-09T12:04:09.399Z
4                             NULL 2020-05-09T12:04:09.399Z
5                             NULL 2020-05-09T12:04:09.399Z
6                             NULL 2020-05-09T12:04:09.399Z
7                             NULL 2020-05-09T12:04:09.399Z
8                             NULL 2020-05-09T12:04:09.399Z
9                             NULL 2020-05-09T12:04:09.399Z
10                            NULL 2020-05-09T12:04:09.399Z

```

## Packages by name

Get package summary by name.

```JavaScript
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
content-length: 2853
date: Sat, 09 May 2020 14:57:24 GMT

```
```JavaScript
{
    "error": null,
    "data": {
        "_id": "rhub",
        "package": "rhub",
        "url": "https://cloud.r-project.org/web/checks/check_results_rhub.html",
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
                "tinstall": 7.31,
                "tcheck": 47.65,
                "ttotal": 54.96,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-debian-gcc",
                "version": "1.1.1",
                "tinstall": 5.25,
                "tcheck": 37.35,
                "ttotal": 42.6,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-fedora-clang",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 70.51,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-fedora-gcc",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 88.94,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
            },
            {
                "flavor": "r-devel-windows-ix86+x86_64",
                "version": "1.1.1",
                "tinstall": 13,
                "tcheck": 66,
                "ttotal": 79,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-patched-linux-x86_64",
                "version": "1.1.1",
                "tinstall": 7.62,
                "tcheck": 47.82,
                "ttotal": 55.44,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-patched-solaris-x86",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 95.6,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
            },
            {
                "flavor": "r-release-linux-x86_64",
                "version": "1.1.1",
                "tinstall": 6.91,
                "tcheck": 47.57,
                "ttotal": 54.48,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-release-osx-x86_64",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 0,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-release-windows-ix86+x86_64",
                "version": "1.1.1",
                "tinstall": 14,
                "tcheck": 89,
                "ttotal": 103,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-oldrel-osx-x86_64",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 0,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-oldrel-windows-ix86+x86_64",
                "version": "1.1.1",
                "tinstall": 11,
                "tcheck": 66,
                "ttotal": 77,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
            }
        ],
        "check_details": null,
        "date_updated": "2020-05-09T12:04:09.648Z"
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
$data$`_id`
[1] "rhub"

$data$package
[1] "rhub"

$data$url
[1] "https://cloud.r-project.org/web/checks/check_results_rhub.html"

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
1  r-devel-linux-x86_64-debian-clang   1.1.1     7.31  47.65  54.96     OK
2    r-devel-linux-x86_64-debian-gcc   1.1.1     5.25  37.35  42.60     OK
3  r-devel-linux-x86_64-fedora-clang   1.1.1     0.00   0.00  70.51     OK
4    r-devel-linux-x86_64-fedora-gcc   1.1.1     0.00   0.00  88.94     OK
5        r-devel-windows-ix86+x86_64   1.1.1    13.00  66.00  79.00     OK
6             r-patched-linux-x86_64   1.1.1     7.62  47.82  55.44     OK
7              r-patched-solaris-x86   1.1.1     0.00   0.00  95.60     OK
8             r-release-linux-x86_64   1.1.1     6.91  47.57  54.48     OK
9               r-release-osx-x86_64   1.1.1     0.00   0.00   0.00     OK
10     r-release-windows-ix86+x86_64   1.1.1    14.00  89.00 103.00     OK
11               r-oldrel-osx-x86_64   1.1.1     0.00   0.00   0.00     OK
12      r-oldrel-windows-ix86+x86_64   1.1.1    11.00  66.00  77.00     OK
                                                                                     check_url
1  https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html
2    https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html
3  https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html
4    https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html
5        https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html
6             https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html
7              https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html
8             https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html
9               https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html
10     https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html
11               https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html
12      https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html

$data$check_details
NULL

$data$date_updated
[1] "2020-05-09T12:04:09.648Z"

```

## Packages by name (history)

Get package history by name.

```JavaScript
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
content-length: 27368
date: Sat, 09 May 2020 14:57:26 GMT

```
```JavaScript
{
    "error": null,
    "data": {
        "package": "rhub",
        "history": [
            {
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
                        "tinstall": 7.31,
                        "tcheck": 47.65,
                        "ttotal": 54.96,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.6,
                        "tcheck": 37.13,
                        "ttotal": 42.73,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 70.51,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 88.94,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 28,
                        "tcheck": 72,
                        "ttotal": 100,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.88,
                        "tcheck": 47.59,
                        "ttotal": 54.47,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 95.6,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.91,
                        "tcheck": 47.57,
                        "ttotal": 54.48,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 89,
                        "ttotal": 103,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 11,
                        "tcheck": 66,
                        "ttotal": 77,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null,
                "date_updated": "2020-05-08T15:03:13.000Z"
            },
            {
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
                        "tinstall": 7.71,
                        "tcheck": 47.5,
                        "ttotal": 55.21,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.51,
                        "tcheck": 37.24,
                        "ttotal": 42.75,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 70.51,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 88.94,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 28,
                        "tcheck": 72,
                        "ttotal": 100,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.88,
                        "tcheck": 47.59,
                        "ttotal": 54.47,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 95.6,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.91,
                        "tcheck": 47.57,
                        "ttotal": 54.48,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 89,
                        "ttotal": 103,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 11,
                        "tcheck": 66,
                        "ttotal": 77,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null,
                "date_updated": "2020-05-07T15:03:15.000Z"
            },
            {
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
                        "tinstall": 7.71,
                        "tcheck": 47.5,
                        "ttotal": 55.21,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 6.41,
                        "tcheck": 37.44,
                        "ttotal": 43.85,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 70.51,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 88.94,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 28,
                        "tcheck": 72,
                        "ttotal": 100,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.55,
                        "tcheck": 46.8,
                        "ttotal": 53.35,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 95.6,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.56,
                        "tcheck": 47.62,
                        "ttotal": 55.18,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 89,
                        "ttotal": 103,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 11,
                        "tcheck": 66,
                        "ttotal": 77,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null,
                "date_updated": "2020-05-06T15:03:13.000Z"
            },
            {
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
                        "tinstall": 6.52,
                        "tcheck": 47.46,
                        "ttotal": 53.98,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.42,
                        "tcheck": 37.32,
                        "ttotal": 42.74,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 70.51,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 88.94,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 28,
                        "tcheck": 72,
                        "ttotal": 100,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.55,
                        "tcheck": 46.8,
                        "ttotal": 53.35,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 95.6,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 7.56,
                        "tcheck": 47.62,
                        "ttotal": 55.18,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 14,
                        "tcheck": 89,
                        "ttotal": 103,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 86,
                        "ttotal": 98,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null,
                "date_updated": "2020-05-05T15:03:14.000Z"
            },
            {
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
                        "tinstall": 6.52,
                        "tcheck": 47.46,
                        "ttotal": 53.98,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.94,
                        "tcheck": 37.46,
                        "ttotal": 43.4,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 66.18,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 80.12,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 22,
                        "tcheck": 94,
                        "ttotal": 116,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.72,
                        "tcheck": 46.84,
                        "ttotal": 53.56,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 94.7,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.52,
                        "tcheck": 47.07,
                        "ttotal": 53.59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 15,
                        "tcheck": 90,
                        "ttotal": 105,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 86,
                        "ttotal": 98,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null,
                "date_updated": "2020-05-04T15:03:17.000Z"
            },
            {
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
                        "tcheck": 47.81,
                        "ttotal": 54.11,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 6.39,
                        "tcheck": 37.74,
                        "ttotal": 44.13,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 66.18,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 80.12,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 22,
                        "tcheck": 94,
                        "ttotal": 116,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.72,
                        "tcheck": 46.84,
                        "ttotal": 53.56,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 94.7,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.52,
                        "tcheck": 47.07,
                        "ttotal": 53.59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 15,
                        "tcheck": 90,
                        "ttotal": 105,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 86,
                        "ttotal": 98,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null,
                "date_updated": "2020-05-03T15:03:11.000Z"
            },
            {
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
                        "tcheck": 47.81,
                        "ttotal": 54.11,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 6.11,
                        "tcheck": 38.19,
                        "ttotal": 44.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 66.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 80.12,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 22,
                        "tcheck": 94,
                        "ttotal": 116,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.72,
                        "tcheck": 46.84,
                        "ttotal": 53.56,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 94.7,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.52,
                        "tcheck": 47.07,
                        "ttotal": 53.59,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 15,
                        "tcheck": 90,
                        "ttotal": 105,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 86,
                        "ttotal": 98,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null,
                "date_updated": "2020-05-02T15:03:15.000Z"
            },
            {
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
                        "tinstall": 7.81,
                        "tcheck": 47.73,
                        "ttotal": 55.54,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.34,
                        "tcheck": 37.78,
                        "ttotal": 43.12,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 66.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 80.12,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 16,
                        "tcheck": 62,
                        "ttotal": 78,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.97,
                        "tcheck": 46.61,
                        "ttotal": 53.58,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 93.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.57,
                        "tcheck": 47.12,
                        "ttotal": 53.69,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 15,
                        "tcheck": 90,
                        "ttotal": 105,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 12,
                        "tcheck": 64,
                        "ttotal": 76,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null,
                "date_updated": "2020-04-30T15:03:06.000Z"
            },
            {
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
                        "tinstall": 7.81,
                        "tcheck": 47.73,
                        "ttotal": 55.54,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.97,
                        "tcheck": 37.6,
                        "ttotal": 43.57,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 66.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 80.12,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 16,
                        "tcheck": 62,
                        "ttotal": 78,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.6,
                        "tcheck": 46.73,
                        "ttotal": 53.33,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 93.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.96,
                        "tcheck": 46,
                        "ttotal": 52.96,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 15,
                        "tcheck": 90,
                        "ttotal": 105,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 16,
                        "tcheck": 105,
                        "ttotal": 121,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null,
                "date_updated": "2020-04-29T15:03:14.000Z"
            },
            {
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
                        "tinstall": 7.72,
                        "tcheck": 47.73,
                        "ttotal": 55.45,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 6.41,
                        "tcheck": 37.34,
                        "ttotal": 43.75,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 66.72,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 80.12,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 25,
                        "tcheck": 67,
                        "ttotal": 92,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.6,
                        "tcheck": 46.73,
                        "ttotal": 53.33,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-patched-solaris-x86",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 93.3,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-linux-x86_64",
                        "version": "1.1.1",
                        "tinstall": 6.96,
                        "tcheck": 46,
                        "ttotal": 52.96,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-release-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 25,
                        "tcheck": 67,
                        "ttotal": 92,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-osx-x86_64",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 0,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/rhub-00check.html"
                    },
                    {
                        "flavor": "r-oldrel-windows-ix86+x86_64",
                        "version": "1.1.1",
                        "tinstall": 16,
                        "tcheck": 105,
                        "ttotal": 121,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/rhub-00check.html"
                    }
                ],
                "check_details": null,
                "date_updated": "2020-04-28T15:03:06.000Z"
            }
        ]
    }
}
```
