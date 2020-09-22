---
weight: 12
title: Maintainers
output: 
  html_document:
    keep_md: true
---



# Maintainers

Get checks data by package maintainer.

[Function of the `cchecks` R package: `cch_maintainers()`](https://docs.ropensci.org/cchecks/reference/cch_maintainers.html).

## Maintainers

Get checks summaries for all maintainers.

`GET [/maintainers]`

Default [limit](#pagination) of 10, max of 1000. 

> Example with [custom offset and limit](#pagination).

```shell
curl https://cranchecks.info/maintainers/?limit=2&offset=5 | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 1142
date: Tue, 22 Sep 2020 06:42:52 GMT

```
```json
{
    "found": 9941,
    "count": 2,
    "offset": 5,
    "error": null,
    "data": [
        {
            "email": "markus.boenn.sf_at_googlemail.com",
            "name": "Markus Boenn",
            "url": "https://cloud.r-project.org/web/checks/check_results_markus.boenn.sf_at_googlemail.com.html",
            "date_updated": "2020-09-22T04:00:57.544Z",
            "table": [
                {
                    "package": "hypergea",
                    "any": true,
                    "ok": 6,
                    "note": 5,
                    "warn": 0,
                    "error": 1
                }
            ],
            "packages": [
                {
                    "package": "hypergea",
                    "url": "https://cloud.r-project.org/web/checks/check_results_hypergea.html",
                    "check_result": [
                        {
                            "category": "ERROR",
                            "number_checks": 1
                        },
                        {
                            "category": "NOTE",
                            "number_checks": 5
                        },
                        {
                            "category": "OK",
                            "number_checks": 6
                        }
                    ],
                    "version": null
                }
            ]
        },
        {
            "email": "clement.benard_at_safrangroup.com",
            "name": "Clement Benard",
            "url": "https://cloud.r-project.org/web/checks/check_results_clement.benard_at_safrangroup.com.html",
            "date_updated": "2020-09-22T04:00:57.544Z",
            "table": [
                {
                    "package": "sirus",
                    "any": true,
                    "ok": 8,
                    "note": 3,
                    "warn": 0,
                    "error": 1
                }
            ],
            "packages": [
                {
                    "package": "sirus",
                    "url": "https://cloud.r-project.org/web/checks/check_results_sirus.html",
                    "check_result": [
                        {
                            "category": "ERROR",
                            "number_checks": 1
                        },
                        {
                            "category": "NOTE",
                            "number_checks": 3
                        },
                        {
                            "category": "OK",
                            "number_checks": 8
                        }
                    ],
                    "version": null
                }
            ]
        }
    ]
}
```


```r
cchecks::cch_maintainers(limit = 2, offset = 5)
```
```r
$found
[1] 9941

$count
[1] 2

$offset
[1] 5

$error
NULL

$data
                              email           name
1 markus.boenn.sf_at_googlemail.com   Markus Boenn
2 clement.benard_at_safrangroup.com Clement Benard
                                                                                          url             date_updated
1 https://cloud.r-project.org/web/checks/check_results_markus.boenn.sf_at_googlemail.com.html 2020-09-22T04:00:57.544Z
2 https://cloud.r-project.org/web/checks/check_results_clement.benard_at_safrangroup.com.html 2020-09-22T04:00:57.544Z
                       table                                                                                                   packages
1 hypergea, TRUE, 6, 5, 0, 1 hypergea, https://cloud.r-project.org/web/checks/check_results_hypergea.html, ERROR, NOTE, OK, 1, 5, 6, NA
2    sirus, TRUE, 8, 3, 0, 1       sirus, https://cloud.r-project.org/web/checks/check_results_sirus.html, ERROR, NOTE, OK, 1, 3, 8, NA

```

## Maintainers by email

Get checks data by email of the package maintainer.

`GET [/maintainers/{email}]`

:warning: `jane.doe@example.com` has to be transformed to `jane.doe_at_example.com`.

```shell
curl https://cranchecks.info/maintainers/csardi.gabor_at_gmail.com | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 14505
date: Tue, 22 Sep 2020 06:42:53 GMT

```
```json
{
    "error": null,
    "data": {
        "email": "csardi.gabor_at_gmail.com",
        "name": "Gábor Csárdi",
        "url": "https://cloud.r-project.org/web/checks/check_results_csardi.gabor_at_gmail.com.html",
        "date_updated": "2020-09-22T04:00:57.699Z",
        "table": [
            {
                "package": "asciicast",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "callr",
                "any": true,
                "ok": 7,
                "note": 0,
                "warn": 0,
                "error": 5
            },
            {
                "package": "cleancall",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "cli",
                "any": true,
                "ok": 10,
                "note": 0,
                "warn": 1,
                "error": 1
            },
            {
                "package": "cliapp",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "clisymbols",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "cranlike",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "cranlogs",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "crayon",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "debugme",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "desc",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "disposables",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "dotenv",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "filelock",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "franc",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "gh",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "igraph",
                "any": true,
                "ok": 3,
                "note": 6,
                "warn": 2,
                "error": 1
            },
            {
                "package": "igraphdata",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "isa2",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "keypress",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "keyring",
                "any": true,
                "ok": 9,
                "note": 2,
                "warn": 0,
                "error": 1
            },
            {
                "package": "liteq",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "lpSolve",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "pak",
                "any": true,
                "ok": 10,
                "note": 1,
                "warn": 0,
                "error": 1
            },
            {
                "package": "parsedate",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "pingr",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "pkgcache",
                "any": true,
                "ok": 10,
                "note": 0,
                "warn": 0,
                "error": 2
            },
            {
                "package": "pkgconfig",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "pkgsearch",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "praise",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "presser",
                "any": true,
                "ok": 10,
                "note": 0,
                "warn": 0,
                "error": 2
            },
            {
                "package": "prettycode",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "prettyunits",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "processx",
                "any": true,
                "ok": 9,
                "note": 0,
                "warn": 1,
                "error": 2
            },
            {
                "package": "progress",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "ps",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "rcmdcheck",
                "any": true,
                "ok": 10,
                "note": 1,
                "warn": 0,
                "error": 1
            },
            {
                "package": "rcorpora",
                "any": true,
                "ok": 4,
                "note": 7,
                "warn": 0,
                "error": 1
            },
            {
                "package": "rematch2",
                "any": true,
                "ok": 10,
                "note": 1,
                "warn": 0,
                "error": 1
            },
            {
                "package": "rhub",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "rversions",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "sankey",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "secret",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "sessioninfo",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "showimage",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "tracer",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "webdriver",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "whoami",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "xmlparsedata",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "xopen",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "zip",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            }
        ],
        "packages": [
            {
                "package": "asciicast",
                "url": "https://cloud.r-project.org/web/checks/check_results_asciicast.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "callr",
                "url": "https://cloud.r-project.org/web/checks/check_results_callr.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 5
                    },
                    {
                        "category": "OK",
                        "number_checks": 7
                    }
                ],
                "version": null
            },
            {
                "package": "cleancall",
                "url": "https://cloud.r-project.org/web/checks/check_results_cleancall.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "cli",
                "url": "https://cloud.r-project.org/web/checks/check_results_cli.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "WARN",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 10
                    }
                ],
                "version": null
            },
            {
                "package": "cliapp",
                "url": "https://cloud.r-project.org/web/checks/check_results_cliapp.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "clisymbols",
                "url": "https://cloud.r-project.org/web/checks/check_results_clisymbols.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "cranlike",
                "url": "https://cloud.r-project.org/web/checks/check_results_cranlike.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "cranlogs",
                "url": "https://cloud.r-project.org/web/checks/check_results_cranlogs.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "crayon",
                "url": "https://cloud.r-project.org/web/checks/check_results_crayon.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "debugme",
                "url": "https://cloud.r-project.org/web/checks/check_results_debugme.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "desc",
                "url": "https://cloud.r-project.org/web/checks/check_results_desc.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "disposables",
                "url": "https://cloud.r-project.org/web/checks/check_results_disposables.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "dotenv",
                "url": "https://cloud.r-project.org/web/checks/check_results_dotenv.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "filelock",
                "url": "https://cloud.r-project.org/web/checks/check_results_filelock.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "franc",
                "url": "https://cloud.r-project.org/web/checks/check_results_franc.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "gh",
                "url": "https://cloud.r-project.org/web/checks/check_results_gh.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "igraph",
                "url": "https://cloud.r-project.org/web/checks/check_results_igraph.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "WARN",
                        "number_checks": 2
                    },
                    {
                        "category": "NOTE",
                        "number_checks": 6
                    },
                    {
                        "category": "OK",
                        "number_checks": 3
                    }
                ],
                "version": null
            },
            {
                "package": "igraphdata",
                "url": "https://cloud.r-project.org/web/checks/check_results_igraphdata.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "isa2",
                "url": "https://cloud.r-project.org/web/checks/check_results_isa2.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "keypress",
                "url": "https://cloud.r-project.org/web/checks/check_results_keypress.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "keyring",
                "url": "https://cloud.r-project.org/web/checks/check_results_keyring.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "NOTE",
                        "number_checks": 2
                    },
                    {
                        "category": "OK",
                        "number_checks": 9
                    }
                ],
                "version": null
            },
            {
                "package": "liteq",
                "url": "https://cloud.r-project.org/web/checks/check_results_liteq.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "lpSolve",
                "url": "https://cloud.r-project.org/web/checks/check_results_lpSolve.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "pak",
                "url": "https://cloud.r-project.org/web/checks/check_results_pak.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "NOTE",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 10
                    }
                ],
                "version": null
            },
            {
                "package": "parsedate",
                "url": "https://cloud.r-project.org/web/checks/check_results_parsedate.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "pingr",
                "url": "https://cloud.r-project.org/web/checks/check_results_pingr.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "pkgcache",
                "url": "https://cloud.r-project.org/web/checks/check_results_pkgcache.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 2
                    },
                    {
                        "category": "OK",
                        "number_checks": 10
                    }
                ],
                "version": null
            },
            {
                "package": "pkgconfig",
                "url": "https://cloud.r-project.org/web/checks/check_results_pkgconfig.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "pkgsearch",
                "url": "https://cloud.r-project.org/web/checks/check_results_pkgsearch.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "praise",
                "url": "https://cloud.r-project.org/web/checks/check_results_praise.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "presser",
                "url": "https://cloud.r-project.org/web/checks/check_results_presser.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 2
                    },
                    {
                        "category": "OK",
                        "number_checks": 10
                    }
                ],
                "version": null
            },
            {
                "package": "prettycode",
                "url": "https://cloud.r-project.org/web/checks/check_results_prettycode.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "prettyunits",
                "url": "https://cloud.r-project.org/web/checks/check_results_prettyunits.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "processx",
                "url": "https://cloud.r-project.org/web/checks/check_results_processx.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 2
                    },
                    {
                        "category": "WARN",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 9
                    }
                ],
                "version": null
            },
            {
                "package": "progress",
                "url": "https://cloud.r-project.org/web/checks/check_results_progress.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "ps",
                "url": "https://cloud.r-project.org/web/checks/check_results_ps.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "rcmdcheck",
                "url": "https://cloud.r-project.org/web/checks/check_results_rcmdcheck.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "NOTE",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 10
                    }
                ],
                "version": null
            },
            {
                "package": "rcorpora",
                "url": "https://cloud.r-project.org/web/checks/check_results_rcorpora.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "NOTE",
                        "number_checks": 7
                    },
                    {
                        "category": "OK",
                        "number_checks": 4
                    }
                ],
                "version": null
            },
            {
                "package": "rematch2",
                "url": "https://cloud.r-project.org/web/checks/check_results_rematch2.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "NOTE",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 10
                    }
                ],
                "version": null
            },
            {
                "package": "rhub",
                "url": "https://cloud.r-project.org/web/checks/check_results_rhub.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "rversions",
                "url": "https://cloud.r-project.org/web/checks/check_results_rversions.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "sankey",
                "url": "https://cloud.r-project.org/web/checks/check_results_sankey.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "secret",
                "url": "https://cloud.r-project.org/web/checks/check_results_secret.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "sessioninfo",
                "url": "https://cloud.r-project.org/web/checks/check_results_sessioninfo.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "showimage",
                "url": "https://cloud.r-project.org/web/checks/check_results_showimage.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "tracer",
                "url": "https://cloud.r-project.org/web/checks/check_results_tracer.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "webdriver",
                "url": "https://cloud.r-project.org/web/checks/check_results_webdriver.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "whoami",
                "url": "https://cloud.r-project.org/web/checks/check_results_whoami.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "xmlparsedata",
                "url": "https://cloud.r-project.org/web/checks/check_results_xmlparsedata.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "xopen",
                "url": "https://cloud.r-project.org/web/checks/check_results_xopen.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            },
            {
                "package": "zip",
                "url": "https://cloud.r-project.org/web/checks/check_results_zip.html",
                "check_result": [
                    {
                        "category": "ERROR",
                        "number_checks": 1
                    },
                    {
                        "category": "OK",
                        "number_checks": 11
                    }
                ],
                "version": null
            }
        ]
    }
}
```


```r
cchecks::cch_maintainers(x = "csardi.gabor_at_gmail.com")
```
```r
$error
NULL

$data
$data$email
[1] "csardi.gabor_at_gmail.com"

$data$name
[1] "Gábor Csárdi"

$data$url
[1] "https://cloud.r-project.org/web/checks/check_results_csardi.gabor_at_gmail.com.html"

$data$date_updated
[1] "2020-09-22T04:00:57.699Z"

$data$table
        package  any ok note warn error
1     asciicast TRUE 11    0    0     1
2         callr TRUE  7    0    0     5
3     cleancall TRUE 11    0    0     1
4           cli TRUE 10    0    1     1
5        cliapp TRUE 11    0    0     1
6    clisymbols TRUE 11    0    0     1
7      cranlike TRUE 11    0    0     1
8      cranlogs TRUE 11    0    0     1
9        crayon TRUE 11    0    0     1
10      debugme TRUE 11    0    0     1
11         desc TRUE 11    0    0     1
12  disposables TRUE 11    0    0     1
13       dotenv TRUE 11    0    0     1
14     filelock TRUE 11    0    0     1
15        franc TRUE 11    0    0     1
16           gh TRUE 11    0    0     1
17       igraph TRUE  3    6    2     1
18   igraphdata TRUE 11    0    0     1
19         isa2 TRUE 11    0    0     1
20     keypress TRUE 11    0    0     1
21      keyring TRUE  9    2    0     1
22        liteq TRUE 11    0    0     1
23      lpSolve TRUE 11    0    0     1
24          pak TRUE 10    1    0     1
25    parsedate TRUE 11    0    0     1
26        pingr TRUE 11    0    0     1
27     pkgcache TRUE 10    0    0     2
28    pkgconfig TRUE 11    0    0     1
29    pkgsearch TRUE 11    0    0     1
30       praise TRUE 11    0    0     1
31      presser TRUE 10    0    0     2
32   prettycode TRUE 11    0    0     1
33  prettyunits TRUE 11    0    0     1
34     processx TRUE  9    0    1     2
35     progress TRUE 11    0    0     1
36           ps TRUE 11    0    0     1
37    rcmdcheck TRUE 10    1    0     1
38     rcorpora TRUE  4    7    0     1
39     rematch2 TRUE 10    1    0     1
40         rhub TRUE 11    0    0     1
41    rversions TRUE 11    0    0     1
42       sankey TRUE 11    0    0     1
43       secret TRUE 11    0    0     1
44  sessioninfo TRUE 11    0    0     1
45    showimage TRUE 11    0    0     1
46       tracer TRUE 11    0    0     1
47    webdriver TRUE 11    0    0     1
48       whoami TRUE 11    0    0     1
49 xmlparsedata TRUE 11    0    0     1
50        xopen TRUE 11    0    0     1
51          zip TRUE 11    0    0     1

$data$packages
        package                                                                    url                      check_result version
1     asciicast    https://cloud.r-project.org/web/checks/check_results_asciicast.html                  ERROR, OK, 1, 11      NA
2         callr        https://cloud.r-project.org/web/checks/check_results_callr.html                   ERROR, OK, 5, 7      NA
3     cleancall    https://cloud.r-project.org/web/checks/check_results_cleancall.html                  ERROR, OK, 1, 11      NA
4           cli          https://cloud.r-project.org/web/checks/check_results_cli.html         ERROR, WARN, OK, 1, 1, 10      NA
5        cliapp       https://cloud.r-project.org/web/checks/check_results_cliapp.html                  ERROR, OK, 1, 11      NA
6    clisymbols   https://cloud.r-project.org/web/checks/check_results_clisymbols.html                  ERROR, OK, 1, 11      NA
7      cranlike     https://cloud.r-project.org/web/checks/check_results_cranlike.html                  ERROR, OK, 1, 11      NA
8      cranlogs     https://cloud.r-project.org/web/checks/check_results_cranlogs.html                  ERROR, OK, 1, 11      NA
9        crayon       https://cloud.r-project.org/web/checks/check_results_crayon.html                  ERROR, OK, 1, 11      NA
10      debugme      https://cloud.r-project.org/web/checks/check_results_debugme.html                  ERROR, OK, 1, 11      NA
11         desc         https://cloud.r-project.org/web/checks/check_results_desc.html                  ERROR, OK, 1, 11      NA
12  disposables  https://cloud.r-project.org/web/checks/check_results_disposables.html                  ERROR, OK, 1, 11      NA
13       dotenv       https://cloud.r-project.org/web/checks/check_results_dotenv.html                  ERROR, OK, 1, 11      NA
14     filelock     https://cloud.r-project.org/web/checks/check_results_filelock.html                  ERROR, OK, 1, 11      NA
15        franc        https://cloud.r-project.org/web/checks/check_results_franc.html                  ERROR, OK, 1, 11      NA
16           gh           https://cloud.r-project.org/web/checks/check_results_gh.html                  ERROR, OK, 1, 11      NA
17       igraph       https://cloud.r-project.org/web/checks/check_results_igraph.html ERROR, WARN, NOTE, OK, 1, 2, 6, 3      NA
18   igraphdata   https://cloud.r-project.org/web/checks/check_results_igraphdata.html                  ERROR, OK, 1, 11      NA
19         isa2         https://cloud.r-project.org/web/checks/check_results_isa2.html                  ERROR, OK, 1, 11      NA
20     keypress     https://cloud.r-project.org/web/checks/check_results_keypress.html                  ERROR, OK, 1, 11      NA
21      keyring      https://cloud.r-project.org/web/checks/check_results_keyring.html          ERROR, NOTE, OK, 1, 2, 9      NA
22        liteq        https://cloud.r-project.org/web/checks/check_results_liteq.html                  ERROR, OK, 1, 11      NA
23      lpSolve      https://cloud.r-project.org/web/checks/check_results_lpSolve.html                  ERROR, OK, 1, 11      NA
24          pak          https://cloud.r-project.org/web/checks/check_results_pak.html         ERROR, NOTE, OK, 1, 1, 10      NA
25    parsedate    https://cloud.r-project.org/web/checks/check_results_parsedate.html                  ERROR, OK, 1, 11      NA
26        pingr        https://cloud.r-project.org/web/checks/check_results_pingr.html                  ERROR, OK, 1, 11      NA
27     pkgcache     https://cloud.r-project.org/web/checks/check_results_pkgcache.html                  ERROR, OK, 2, 10      NA
28    pkgconfig    https://cloud.r-project.org/web/checks/check_results_pkgconfig.html                  ERROR, OK, 1, 11      NA
29    pkgsearch    https://cloud.r-project.org/web/checks/check_results_pkgsearch.html                  ERROR, OK, 1, 11      NA
30       praise       https://cloud.r-project.org/web/checks/check_results_praise.html                  ERROR, OK, 1, 11      NA
31      presser      https://cloud.r-project.org/web/checks/check_results_presser.html                  ERROR, OK, 2, 10      NA
32   prettycode   https://cloud.r-project.org/web/checks/check_results_prettycode.html                  ERROR, OK, 1, 11      NA
33  prettyunits  https://cloud.r-project.org/web/checks/check_results_prettyunits.html                  ERROR, OK, 1, 11      NA
34     processx     https://cloud.r-project.org/web/checks/check_results_processx.html          ERROR, WARN, OK, 2, 1, 9      NA
35     progress     https://cloud.r-project.org/web/checks/check_results_progress.html                  ERROR, OK, 1, 11      NA
36           ps           https://cloud.r-project.org/web/checks/check_results_ps.html                  ERROR, OK, 1, 11      NA
37    rcmdcheck    https://cloud.r-project.org/web/checks/check_results_rcmdcheck.html         ERROR, NOTE, OK, 1, 1, 10      NA
38     rcorpora     https://cloud.r-project.org/web/checks/check_results_rcorpora.html          ERROR, NOTE, OK, 1, 7, 4      NA
39     rematch2     https://cloud.r-project.org/web/checks/check_results_rematch2.html         ERROR, NOTE, OK, 1, 1, 10      NA
40         rhub         https://cloud.r-project.org/web/checks/check_results_rhub.html                  ERROR, OK, 1, 11      NA
41    rversions    https://cloud.r-project.org/web/checks/check_results_rversions.html                  ERROR, OK, 1, 11      NA
42       sankey       https://cloud.r-project.org/web/checks/check_results_sankey.html                  ERROR, OK, 1, 11      NA
43       secret       https://cloud.r-project.org/web/checks/check_results_secret.html                  ERROR, OK, 1, 11      NA
44  sessioninfo  https://cloud.r-project.org/web/checks/check_results_sessioninfo.html                  ERROR, OK, 1, 11      NA
45    showimage    https://cloud.r-project.org/web/checks/check_results_showimage.html                  ERROR, OK, 1, 11      NA
46       tracer       https://cloud.r-project.org/web/checks/check_results_tracer.html                  ERROR, OK, 1, 11      NA
47    webdriver    https://cloud.r-project.org/web/checks/check_results_webdriver.html                  ERROR, OK, 1, 11      NA
48       whoami       https://cloud.r-project.org/web/checks/check_results_whoami.html                  ERROR, OK, 1, 11      NA
49 xmlparsedata https://cloud.r-project.org/web/checks/check_results_xmlparsedata.html                  ERROR, OK, 1, 11      NA
50        xopen        https://cloud.r-project.org/web/checks/check_results_xopen.html                  ERROR, OK, 1, 11      NA
51          zip          https://cloud.r-project.org/web/checks/check_results_zip.html                  ERROR, OK, 1, 11      NA

```
