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

```shell
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
content-length: 30691
date: Tue, 12 May 2020 13:33:33 GMT

```
```json
{
    "found": 16562,
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
                    "tinstall": 2.53,
                    "tcheck": 42.37,
                    "ttotal": 44.9,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/localIV-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.3.0",
                    "tinstall": 2.32,
                    "tcheck": 33.41,
                    "ttotal": 35.73,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/localIV-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.3.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 54.84,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/localIV-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.3.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 53.91,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/localIV-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.3.0",
                    "tinstall": 15,
                    "tcheck": 61,
                    "ttotal": 76,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/localIV-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.3.0",
                    "tinstall": 2.88,
                    "tcheck": 42.51,
                    "ttotal": 45.39,
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
                    "tinstall": 2.49,
                    "tcheck": 42.38,
                    "ttotal": 44.87,
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
                    "tinstall": 24,
                    "tcheck": 70,
                    "ttotal": 94,
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
            "date_updated": "2020-05-12T12:04:06.450Z"
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
                    "tinstall": 2.4,
                    "tcheck": 25.52,
                    "ttotal": 27.92,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/di-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.1.4",
                    "tinstall": 1.95,
                    "tcheck": 20.9,
                    "ttotal": 22.85,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/di-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 35.44,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/di-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 34.7,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/di-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.1.4",
                    "tinstall": 9,
                    "tcheck": 59,
                    "ttotal": 68,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/di-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.1.4",
                    "tinstall": 2.42,
                    "tcheck": 25.91,
                    "ttotal": 28.33,
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
                    "tinstall": 2.46,
                    "tcheck": 25.9,
                    "ttotal": 28.36,
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
                    "tinstall": 6,
                    "tcheck": 63,
                    "ttotal": 69,
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
            "date_updated": "2020-05-12T12:04:06.450Z"
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
            "date_updated": "2020-05-12T12:04:06.450Z"
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
                    "tinstall": 2.7,
                    "tcheck": 21.41,
                    "ttotal": 24.11,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/MetABEL-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.2-0",
                    "tinstall": 2.17,
                    "tcheck": 16.65,
                    "ttotal": 18.82,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/MetABEL-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.2-0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 30.15,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/MetABEL-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.2-0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 28.9,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/MetABEL-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.2-0",
                    "tinstall": 8,
                    "tcheck": 45,
                    "ttotal": 53,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/MetABEL-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.2-0",
                    "tinstall": 2.74,
                    "tcheck": 21.71,
                    "ttotal": 24.45,
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
                    "tinstall": 2.95,
                    "tcheck": 21.08,
                    "ttotal": 24.03,
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
            "date_updated": "2020-05-12T12:04:06.450Z"
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
                    "tinstall": 15.2,
                    "tcheck": 134.6,
                    "ttotal": 149.8,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.3.6",
                    "tinstall": 11.77,
                    "tcheck": 103.63,
                    "ttotal": 115.4,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 173.35,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.3.6",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 179.38,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/quantable-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.3.6",
                    "tinstall": 42,
                    "tcheck": 144,
                    "ttotal": 186,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/quantable-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.3.6",
                    "tinstall": 16.64,
                    "tcheck": 134.46,
                    "ttotal": 151.1,
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
                    "tinstall": 14.84,
                    "tcheck": 132.2,
                    "ttotal": 147.04,
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
                    "tinstall": 50,
                    "tcheck": 192,
                    "ttotal": 242,
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
            "date_updated": "2020-05-12T12:04:06.450Z"
        },
        {
            "_id": "ibb",
            "package": "ibb",
            "url": "https://cloud.r-project.org/web/checks/check_results_ibb.html",
            "summary": {
                "any": true,
                "ok": 1,
                "note": 3,
                "warn": 0,
                "error": 0,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 52.21,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 49.19,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ibb-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0.1",
                    "tinstall": 18,
                    "tcheck": 88,
                    "ttotal": 106,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ibb-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 71.7,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ibb-00check.html"
                }
            ],
            "check_details": {
                "version": "0.0.1",
                "check": "dependencies in R code",
                "result": "NOTE",
                "output": "Namespace in Imports field not imported from: ‘xml2’\n  All declared Imports should be used.",
                "flavors": [
                    "r-devel-linux-x86_64-fedora-clang",
                    "r-devel-linux-x86_64-fedora-gcc",
                    "r-patched-solaris-x86"
                ],
                "additional_issues": [

                ]
            },
            "date_updated": "2020-05-12T12:04:06.450Z"
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
                    "tinstall": 3.02,
                    "tcheck": 22.94,
                    "ttotal": 25.96,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.0",
                    "tinstall": 2.24,
                    "tcheck": 18.35,
                    "ttotal": 20.59,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 33.28,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 32.19,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.0",
                    "tinstall": 12,
                    "tcheck": 60,
                    "ttotal": 72,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ChIPtest-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.0",
                    "tinstall": 2.89,
                    "tcheck": 23.37,
                    "ttotal": 26.26,
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
                    "tinstall": 2.65,
                    "tcheck": 23.3,
                    "ttotal": 25.95,
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
            "date_updated": "2020-05-12T12:04:06.450Z"
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
                    "tinstall": 6.17,
                    "tcheck": 63.92,
                    "ttotal": 70.09,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/TSF-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.1.1",
                    "tinstall": 5.06,
                    "tcheck": 46.97,
                    "ttotal": 52.03,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/TSF-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 85.19,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/TSF-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.1.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 81.46,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/TSF-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.1.1",
                    "tinstall": 27,
                    "tcheck": 112,
                    "ttotal": 139,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/TSF-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.1.1",
                    "tinstall": 6.03,
                    "tcheck": 61.66,
                    "ttotal": 67.69,
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
                    "tinstall": 5.36,
                    "tcheck": 61.15,
                    "ttotal": 66.51,
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
                    "tinstall": 24,
                    "tcheck": 112,
                    "ttotal": 136,
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
            "date_updated": "2020-05-12T12:04:06.450Z"
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
                    "tinstall": 1.95,
                    "tcheck": 20.73,
                    "ttotal": 22.68,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/apercu-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.2.4",
                    "tinstall": 1.76,
                    "tcheck": 16.86,
                    "ttotal": 18.62,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/apercu-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.2.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 29.19,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/apercu-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.2.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 28.42,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/apercu-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.2.4",
                    "tinstall": 8,
                    "tcheck": 49,
                    "ttotal": 57,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/apercu-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.2.4",
                    "tinstall": 2.04,
                    "tcheck": 21.31,
                    "ttotal": 23.35,
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
                    "tinstall": 2.18,
                    "tcheck": 20.91,
                    "ttotal": 23.09,
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
                    "tcheck": 49,
                    "ttotal": 54,
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
            "date_updated": "2020-05-12T12:04:06.450Z"
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
                    "tinstall": 2.34,
                    "tcheck": 20.6,
                    "ttotal": 22.94,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/SPRT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.0",
                    "tinstall": 1.72,
                    "tcheck": 16.37,
                    "ttotal": 18.09,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/SPRT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 28.06,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/SPRT-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 27.5,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/SPRT-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.0",
                    "tinstall": 8,
                    "tcheck": 41,
                    "ttotal": 49,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/SPRT-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.0",
                    "tinstall": 2.11,
                    "tcheck": 20.55,
                    "ttotal": 22.66,
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
                    "tinstall": 2.38,
                    "tcheck": 20.55,
                    "ttotal": 22.93,
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
            "date_updated": "2020-05-12T12:04:06.450Z"
        }
    ]
}
```


```r
cchecks::cch_pkgs()
```
```r
$found
[1] 16562

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
6        ibb       ibb
7   ChIPtest  ChIPtest
8        TSF       TSF
9     apercu    apercu
10      SPRT      SPRT
                                                                   url summary.any
1    https://cloud.r-project.org/web/checks/check_results_localIV.html       FALSE
2         https://cloud.r-project.org/web/checks/check_results_di.html       FALSE
3        https://cloud.r-project.org/web/checks/check_results_GAR.html        TRUE
4    https://cloud.r-project.org/web/checks/check_results_MetABEL.html        TRUE
5  https://cloud.r-project.org/web/checks/check_results_quantable.html       FALSE
6        https://cloud.r-project.org/web/checks/check_results_ibb.html        TRUE
7   https://cloud.r-project.org/web/checks/check_results_ChIPtest.html        TRUE
8        https://cloud.r-project.org/web/checks/check_results_TSF.html       FALSE
9     https://cloud.r-project.org/web/checks/check_results_apercu.html        TRUE
10      https://cloud.r-project.org/web/checks/check_results_SPRT.html        TRUE
   summary.ok summary.note summary.warn summary.error summary.fail
1          12            0            0             0            0
2          12            0            0             0            0
3          12            0            0             1            0
4           0           12            0             0            0
5          12            0            0             0            0
6           1            3            0             0            0
7          10            2            0             0            0
8          12            0            0             0            0
9           7            5            0             0            0
10          0           12            0             0            0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           checks
1                                                                r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 0.3.0, 2.53, 2.32, 0, 0, 15, 2.88, 0, 2.49, 0, 24, 0, 6, 42.37, 33.41, 0, 0, 61, 42.51, 0, 42.38, 0, 70, 0, 54, 44.9, 35.73, 54.84, 53.91, 76, 45.39, 82.4, 44.87, 0, 94, 0, 60, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/localIV-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/localIV-00check.html
2                                                                                                                                 r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 1.1.4, 2.4, 1.95, 0, 0, 9, 2.42, 0, 2.46, 0, 6, 0, 6, 25.52, 20.9, 0, 0, 59, 25.91, 0, 25.9, 0, 63, 0, 40, 27.92, 22.85, 35.44, 34.7, 68, 28.33, 52.2, 28.36, 0, 69, 0, 46, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/di-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/di-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/di-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/di-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/di-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/di-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/di-00check.html
3  r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-devel-windows-ix86+x86_64-gcc8, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-windows-ix86+x86_64, r-release-osx-x86_64, r-oldrel-windows-ix86+x86_64, r-oldrel-osx-x86_64, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 2.16, 1.61, 0, 0, 6, 5, 0, 0, 1.66, 5, 0, 2, 0, 22.5, 17.99, 0, 0, 50, 61, 0, 0, 21.08, 36, 0, 48, 0, 24.66, 19.6, 30.62, 29.47, 56, 66, 0, 43.3, 22.74, 41, 0, 50, 0, OK, OK, OK, OK, OK, OK, OK, ERROR, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64-gcc8/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/GAR-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/GAR-00check.html
4                                           r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 0.2-0, 2.7, 2.17, 0, 0, 8, 2.74, 0, 2.95, 0, 5, 0, 6, 21.41, 16.65, 0, 0, 45, 21.71, 0, 21.08, 0, 32, 0, 31, 24.11, 18.82, 30.15, 28.9, 53, 24.45, 43.1, 24.03, 0, 37, 0, 37, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/MetABEL-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/MetABEL-00check.html
5                       r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 0.3.6, 15.2, 11.77, 0, 0, 42, 16.64, 0, 14.84, 0, 50, 0, 24, 134.6, 103.63, 0, 0, 144, 134.46, 0, 132.2, 0, 192, 0, 142, 149.8, 115.4, 173.35, 179.38, 186, 151.1, 258.3, 147.04, 0, 242, 0, 166, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/quantable-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/quantable-00check.html
6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-solaris-x86, 0.0.1, 0.0.1, 0.0.1, 0.0.1, 0, 0, 18, 0, 0, 0, 88, 0, 52.21, 49.19, 106, 71.7, NOTE, NOTE, OK, NOTE, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ibb-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ibb-00check.html
7                                                                        r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 3.02, 2.24, 0, 0, 12, 2.89, 0, 2.65, 0, 9, 0, 16, 22.94, 18.35, 0, 0, 60, 23.37, 0, 23.3, 0, 43, 0, 63, 25.96, 20.59, 33.28, 32.19, 72, 26.26, 49.7, 25.95, 0, 52, 0, 79, OK, OK, NOTE, NOTE, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/ChIPtest-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ChIPtest-00check.html
8                                                                                                         r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 0.1.1, 6.17, 5.06, 0, 0, 27, 6.03, 0, 5.36, 0, 24, 0, 15, 63.92, 46.97, 0, 0, 112, 61.66, 0, 61.15, 0, 112, 0, 68, 70.09, 52.03, 85.19, 81.46, 139, 67.69, 126.1, 66.51, 0, 136, 0, 83, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/TSF-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/TSF-00check.html
9                                                                   r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 0.2.4, 1.95, 1.76, 0, 0, 8, 2.04, 0, 2.18, 0, 5, 0, 5, 20.73, 16.86, 0, 0, 49, 21.31, 0, 20.91, 0, 49, 0, 34, 22.68, 18.62, 29.19, 28.42, 57, 23.35, 41.8, 23.09, 0, 54, 0, 39, OK, OK, NOTE, NOTE, OK, OK, NOTE, OK, NOTE, OK, NOTE, OK, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/apercu-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/apercu-00check.html
10                                                                                                      r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64, r-oldrel-windows-ix86+x86_64, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.34, 1.72, 0, 0, 8, 2.11, 0, 2.38, 0, 6, 0, 5, 20.6, 16.37, 0, 0, 41, 20.55, 0, 20.55, 0, 31, 0, 42, 22.94, 18.09, 28.06, 27.5, 49, 22.66, 41.5, 22.93, 0, 37, 0, 47, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, NOTE, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/SPRT-00check.html, https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/SPRT-00check.html
   check_details.version          check_details.check check_details.result
1                   <NA>                         <NA>                 <NA>
2                   <NA>                         <NA>                 <NA>
3                    1.1                     examples                ERROR
4                  0.2-0         package dependencies                 NOTE
5                   <NA>                         <NA>                 <NA>
6                  0.0.1       dependencies in R code                 NOTE
7                    1.0                compiled code                 NOTE
8                   <NA>                         <NA>                 <NA>
9                  0.2.4       dependencies in R code                 NOTE
10                   1.0 R code for possible problems                 NOTE
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             check_details.output
1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            <NA>
2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            <NA>
3  Running examples in ‘GAR-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: GAR-package\n> ### Title: Authorize and Request Google Analytics data.\n> ### Aliases: GAR-package GAR\n> ### Keywords: package\n> \n> ### ** Examples\n> \n> \n> \n> getCode(\n+         client_id="ABCDEFG"\n+         )\n> \n> getRefresh(\n+             client_id="ABCDEFG",\n+             client_secret="HIJKLMNOP",\n+             code="QRSTUVWX"\n+             )\nNULL\n> \n> gaRequest(\n+         id=c('ga:123456789','ga:987654321'), \n+         dimensions='ga:date,ga:month', \n+         metrics='ga:sessions,ga:users,ga:pageviews', \n+         start='YYYY-MM-DD',\n+         end='YYYY-MM-DDD',\n+         sort='-ga:sessions,ga:users',\n+         max='1000',\n+         filters='ga:browser==VALUE,ga:city==VALUE',\n+         segment='abcdef',\n+         token='abcdef',\n+         allResults=FALSE\n+         )\nError in rbind(deparse.level, ...) : \n  numbers of columns of arguments do not match\nCalls: gaRequest -> do.call -> rbind -> rbind\nExecution halted
4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Package suggested but not available for checking: 'GenABEL'
5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            <NA>
6                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Namespace in Imports field not imported from: ‘xml2’\n  All declared Imports should be used.
7                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  File ‘ChIPtest/libs/ChIPtest.so’:\n  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’\n\nIt is good practice to register native routines and to disable symbol\nsearch.\n\nSee ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
8                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            <NA>
9                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Namespace in Imports field not imported from: ‘pls’\n  All declared Imports should be used.
10                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       plot.SPRT: no visible global function definition for 'par'\nplot.SPRT: no visible global function definition for 'abline'\nprint.SPRT: no visible global function definition for 'head'\nUndefined global functions or variables:\n  abline head par\nConsider adding\n  importFrom("graphics", "abline", "par")\n  importFrom("utils", "head")\nto your NAMESPACE file.
                                                                                                                                                                                                                                                                                                  check_details.flavors
1                                                                                                                                                                                                                                                                                                                  NULL
2                                                                                                                                                                                                                                                                                                                  NULL
3                                                                                                                                                                                                                                                                                                 r-patched-solaris-x86
4  r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64, r-oldrel-osx-x86_64
5                                                                                                                                                                                                                                                                                                                  NULL
6                                                                                                                                                                                                                             r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-patched-solaris-x86
7                                                                                                                                                                                                                                                    r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc
8                                                                                                                                                                                                                                                                                                                  NULL
9                                                                                                                                                                                  r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-patched-solaris-x86, r-release-osx-x86_64, r-oldrel-osx-x86_64
10                      r-devel-linux-x86_64-debian-clang, r-devel-linux-x86_64-debian-gcc, r-devel-linux-x86_64-fedora-clang, r-devel-linux-x86_64-fedora-gcc, r-devel-windows-ix86+x86_64, r-patched-linux-x86_64, r-patched-solaris-x86, r-release-linux-x86_64, r-release-osx-x86_64, r-release-windows-ix86+x86_64
   check_details.additional_issues             date_updated
1                             NULL 2020-05-12T12:04:06.450Z
2                             NULL 2020-05-12T12:04:06.450Z
3                             NULL 2020-05-12T12:04:06.450Z
4                             NULL 2020-05-12T12:04:06.450Z
5                             NULL 2020-05-12T12:04:06.450Z
6                             NULL 2020-05-12T12:04:06.450Z
7                             NULL 2020-05-12T12:04:06.450Z
8                             NULL 2020-05-12T12:04:06.450Z
9                             NULL 2020-05-12T12:04:06.450Z
10                            NULL 2020-05-12T12:04:06.450Z

```

## Packages by name

Get package summary by name.

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
content-length: 2854
date: Tue, 12 May 2020 13:33:35 GMT

```
```json
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
                "tinstall": 6.62,
                "tcheck": 47.99,
                "ttotal": 54.61,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-debian-gcc",
                "version": "1.1.1",
                "tinstall": 5.54,
                "tcheck": 37.65,
                "ttotal": 43.19,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-fedora-clang",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 66.86,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-fedora-gcc",
                "version": "1.1.1",
                "tinstall": 0,
                "tcheck": 0,
                "ttotal": 80.77,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/rhub-00check.html"
            },
            {
                "flavor": "r-devel-windows-ix86+x86_64",
                "version": "1.1.1",
                "tinstall": 26,
                "tcheck": 63,
                "ttotal": 89,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/rhub-00check.html"
            },
            {
                "flavor": "r-patched-linux-x86_64",
                "version": "1.1.1",
                "tinstall": 6.57,
                "tcheck": 47.24,
                "ttotal": 53.81,
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
                "tinstall": 7.04,
                "tcheck": 47.29,
                "ttotal": 54.33,
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
                "tinstall": 12,
                "tcheck": 88,
                "ttotal": 100,
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
        "date_updated": "2020-05-12T12:04:06.662Z"
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
1  r-devel-linux-x86_64-debian-clang   1.1.1     6.62  47.99  54.61     OK
2    r-devel-linux-x86_64-debian-gcc   1.1.1     5.54  37.65  43.19     OK
3  r-devel-linux-x86_64-fedora-clang   1.1.1     0.00   0.00  66.86     OK
4    r-devel-linux-x86_64-fedora-gcc   1.1.1     0.00   0.00  80.77     OK
5        r-devel-windows-ix86+x86_64   1.1.1    26.00  63.00  89.00     OK
6             r-patched-linux-x86_64   1.1.1     6.57  47.24  53.81     OK
7              r-patched-solaris-x86   1.1.1     0.00   0.00  95.60     OK
8             r-release-linux-x86_64   1.1.1     7.04  47.29  54.33     OK
9               r-release-osx-x86_64   1.1.1     0.00   0.00   0.00     OK
10     r-release-windows-ix86+x86_64   1.1.1    12.00  88.00 100.00     OK
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
[1] "2020-05-12T12:04:06.662Z"

```

## Packages by name (history)

Get package history by name. 

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
content-length: 27367
date: Tue, 12 May 2020 13:33:36 GMT

```
```json
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
                        "tinstall": 6.62,
                        "tcheck": 47.99,
                        "ttotal": 54.61,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 6.03,
                        "tcheck": 37.53,
                        "ttotal": 43.56,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 66.86,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-gcc",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 80.77,
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
                        "tinstall": 7.04,
                        "tcheck": 47.29,
                        "ttotal": 54.33,
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
                        "tinstall": 12,
                        "tcheck": 88,
                        "ttotal": 100,
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
                "date_updated": "2020-05-11T15:03:13.000Z"
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
                        "tinstall": 7.31,
                        "tcheck": 47.65,
                        "ttotal": 54.96,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.8,
                        "tcheck": 37.7,
                        "ttotal": 43.5,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-fedora-clang",
                        "version": "1.1.1",
                        "tinstall": 0,
                        "tcheck": 0,
                        "ttotal": 66.86,
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
                        "tinstall": 7.04,
                        "tcheck": 47.29,
                        "ttotal": 54.33,
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
                        "tinstall": 12,
                        "tcheck": 88,
                        "ttotal": 100,
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
                "date_updated": "2020-05-10T15:03:14.000Z"
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
                        "tinstall": 7.31,
                        "tcheck": 47.65,
                        "ttotal": 54.96,
                        "status": "OK",
                        "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/rhub-00check.html"
                    },
                    {
                        "flavor": "r-devel-linux-x86_64-debian-gcc",
                        "version": "1.1.1",
                        "tinstall": 5.18,
                        "tcheck": 37.58,
                        "ttotal": 42.76,
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
                        "tinstall": 7.04,
                        "tcheck": 47.29,
                        "ttotal": 54.33,
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
                "date_updated": "2020-05-09T15:03:15.000Z"
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
            }
        ]
    }
}
```

For historical data across packages see the [history endpoint](#history).
