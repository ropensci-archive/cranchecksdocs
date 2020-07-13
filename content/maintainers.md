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
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 1141
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 13 Jul 2020 10:09:34 GMT

```
```json
{
    "found": 9712,
    "count": 2,
    "offset": 5,
    "error": null,
    "data": [
        {
            "email": "markus.boenn.sf_at_googlemail.com",
            "name": "Markus Boenn",
            "url": "https://cloud.r-project.org/web/checks/check_results_markus.boenn.sf_at_googlemail.com.html",
            "date_updated": "2020-07-13T08:01:03.352Z",
            "table": [
                {
                    "package": "hypergea",
                    "any": true,
                    "ok": 5,
                    "note": 6,
                    "warn": 0,
                    "error": 0
                }
            ],
            "packages": [
                {
                    "package": "hypergea",
                    "url": "https://cloud.r-project.org/web/checks/check_results_hypergea.html",
                    "check_result": [
                        {
                            "category": "FAIL",
                            "number_checks": 1
                        },
                        {
                            "category": "NOTE",
                            "number_checks": 6
                        },
                        {
                            "category": "OK",
                            "number_checks": 5
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
            "date_updated": "2020-07-13T08:01:03.352Z",
            "table": [
                {
                    "package": "sirus",
                    "any": true,
                    "ok": 9,
                    "note": 2,
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
                            "number_checks": 2
                        },
                        {
                            "category": "OK",
                            "number_checks": 9
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
[1] 9712

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
                                                                                          url
1 https://cloud.r-project.org/web/checks/check_results_markus.boenn.sf_at_googlemail.com.html
2 https://cloud.r-project.org/web/checks/check_results_clement.benard_at_safrangroup.com.html
              date_updated                      table
1 2020-07-13T08:01:03.352Z hypergea, TRUE, 5, 6, 0, 0
2 2020-07-13T08:01:03.352Z    sirus, TRUE, 9, 2, 0, 1
                                                                                                   packages
1 hypergea, https://cloud.r-project.org/web/checks/check_results_hypergea.html, FAIL, NOTE, OK, 1, 6, 5, NA
2      sirus, https://cloud.r-project.org/web/checks/check_results_sirus.html, ERROR, NOTE, OK, 1, 2, 9, NA

```

## Maintainers by email

Get checks data by email of the package maintainer.

`GET [/maintainers/{email}]`

:warning: `jane.doe@example.com` has to be transformed to `jane.doe_at_example.com`.

```shell
curl https://cranchecks.info/maintainers/csardi.gabor_at_gmail.com | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 14471
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 13 Jul 2020 10:09:34 GMT

```
```json
{
    "error": null,
    "data": {
        "email": "csardi.gabor_at_gmail.com",
        "name": "Gábor Csárdi",
        "url": "https://cloud.r-project.org/web/checks/check_results_csardi.gabor_at_gmail.com.html",
        "date_updated": "2020-07-13T08:01:03.519Z",
        "table": [
            {
                "package": "asciicast",
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "callr",
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
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
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
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
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "desc",
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
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
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "franc",
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "gh",
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "igraph",
                "any": true,
                "ok": 5,
                "note": 6,
                "warn": 0,
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
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
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
                "ok": 10,
                "note": 0,
                "warn": 1,
                "error": 1
            },
            {
                "package": "progress",
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
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
                "ok": 5,
                "note": 6,
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
                "any": false,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 0
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
                        "category": "FAIL",
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
                        "category": "FAIL",
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
                        "category": "FAIL",
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
                        "category": "FAIL",
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
                        "category": "FAIL",
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
                        "category": "FAIL",
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
                        "category": "FAIL",
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
                        "category": "FAIL",
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
                        "category": "NOTE",
                        "number_checks": 6
                    },
                    {
                        "category": "OK",
                        "number_checks": 5
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
                        "category": "FAIL",
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
                "package": "progress",
                "url": "https://cloud.r-project.org/web/checks/check_results_progress.html",
                "check_result": [
                    {
                        "category": "FAIL",
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
                        "number_checks": 6
                    },
                    {
                        "category": "OK",
                        "number_checks": 5
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
                        "category": "FAIL",
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
[1] "2020-07-13T08:01:03.519Z"

$data$table
        package   any ok note warn error
1     asciicast FALSE 11    0    0     0
2         callr FALSE 11    0    0     0
3     cleancall  TRUE 11    0    0     1
4           cli  TRUE 10    0    1     1
5        cliapp  TRUE 11    0    0     1
6    clisymbols  TRUE 11    0    0     1
7      cranlike  TRUE 11    0    0     1
8      cranlogs FALSE 11    0    0     0
9        crayon  TRUE 11    0    0     1
10      debugme FALSE 11    0    0     0
11         desc FALSE 11    0    0     0
12  disposables  TRUE 11    0    0     1
13       dotenv  TRUE 11    0    0     1
14     filelock FALSE 11    0    0     0
15        franc FALSE 11    0    0     0
16           gh FALSE 11    0    0     0
17       igraph  TRUE  5    6    0     1
18   igraphdata  TRUE 11    0    0     1
19         isa2  TRUE 11    0    0     1
20     keypress  TRUE 11    0    0     1
21      keyring  TRUE  9    2    0     1
22        liteq  TRUE 11    0    0     1
23      lpSolve  TRUE 11    0    0     1
24          pak  TRUE 10    1    0     1
25    parsedate FALSE 11    0    0     0
26        pingr  TRUE 11    0    0     1
27     pkgcache  TRUE 10    0    0     2
28    pkgconfig  TRUE 11    0    0     1
29    pkgsearch  TRUE 11    0    0     1
30       praise  TRUE 11    0    0     1
31      presser  TRUE 10    0    0     2
32   prettycode  TRUE 11    0    0     1
33  prettyunits  TRUE 11    0    0     1
34     processx  TRUE 10    0    1     1
35     progress FALSE 11    0    0     0
36           ps  TRUE 11    0    0     1
37    rcmdcheck  TRUE 10    1    0     1
38     rcorpora  TRUE  5    6    0     1
39     rematch2  TRUE 10    1    0     1
40         rhub  TRUE 11    0    0     1
41    rversions  TRUE 11    0    0     1
42       sankey  TRUE 11    0    0     1
43       secret  TRUE 11    0    0     1
44  sessioninfo  TRUE 11    0    0     1
45    showimage FALSE 11    0    0     0
46       tracer  TRUE 11    0    0     1
47    webdriver  TRUE 11    0    0     1
48       whoami  TRUE 11    0    0     1
49 xmlparsedata  TRUE 11    0    0     1
50        xopen  TRUE 11    0    0     1
51          zip  TRUE 11    0    0     1

$data$packages
        package
1     asciicast
2         callr
3     cleancall
4           cli
5        cliapp
6    clisymbols
7      cranlike
8      cranlogs
9        crayon
10      debugme
11         desc
12  disposables
13       dotenv
14     filelock
15        franc
16           gh
17       igraph
18   igraphdata
19         isa2
20     keypress
21      keyring
22        liteq
23      lpSolve
24          pak
25    parsedate
26        pingr
27     pkgcache
28    pkgconfig
29    pkgsearch
30       praise
31      presser
32   prettycode
33  prettyunits
34     processx
35     progress
36           ps
37    rcmdcheck
38     rcorpora
39     rematch2
40         rhub
41    rversions
42       sankey
43       secret
44  sessioninfo
45    showimage
46       tracer
47    webdriver
48       whoami
49 xmlparsedata
50        xopen
51          zip
                                                                      url
1     https://cloud.r-project.org/web/checks/check_results_asciicast.html
2         https://cloud.r-project.org/web/checks/check_results_callr.html
3     https://cloud.r-project.org/web/checks/check_results_cleancall.html
4           https://cloud.r-project.org/web/checks/check_results_cli.html
5        https://cloud.r-project.org/web/checks/check_results_cliapp.html
6    https://cloud.r-project.org/web/checks/check_results_clisymbols.html
7      https://cloud.r-project.org/web/checks/check_results_cranlike.html
8      https://cloud.r-project.org/web/checks/check_results_cranlogs.html
9        https://cloud.r-project.org/web/checks/check_results_crayon.html
10      https://cloud.r-project.org/web/checks/check_results_debugme.html
11         https://cloud.r-project.org/web/checks/check_results_desc.html
12  https://cloud.r-project.org/web/checks/check_results_disposables.html
13       https://cloud.r-project.org/web/checks/check_results_dotenv.html
14     https://cloud.r-project.org/web/checks/check_results_filelock.html
15        https://cloud.r-project.org/web/checks/check_results_franc.html
16           https://cloud.r-project.org/web/checks/check_results_gh.html
17       https://cloud.r-project.org/web/checks/check_results_igraph.html
18   https://cloud.r-project.org/web/checks/check_results_igraphdata.html
19         https://cloud.r-project.org/web/checks/check_results_isa2.html
20     https://cloud.r-project.org/web/checks/check_results_keypress.html
21      https://cloud.r-project.org/web/checks/check_results_keyring.html
22        https://cloud.r-project.org/web/checks/check_results_liteq.html
23      https://cloud.r-project.org/web/checks/check_results_lpSolve.html
24          https://cloud.r-project.org/web/checks/check_results_pak.html
25    https://cloud.r-project.org/web/checks/check_results_parsedate.html
26        https://cloud.r-project.org/web/checks/check_results_pingr.html
27     https://cloud.r-project.org/web/checks/check_results_pkgcache.html
28    https://cloud.r-project.org/web/checks/check_results_pkgconfig.html
29    https://cloud.r-project.org/web/checks/check_results_pkgsearch.html
30       https://cloud.r-project.org/web/checks/check_results_praise.html
31      https://cloud.r-project.org/web/checks/check_results_presser.html
32   https://cloud.r-project.org/web/checks/check_results_prettycode.html
33  https://cloud.r-project.org/web/checks/check_results_prettyunits.html
34     https://cloud.r-project.org/web/checks/check_results_processx.html
35     https://cloud.r-project.org/web/checks/check_results_progress.html
36           https://cloud.r-project.org/web/checks/check_results_ps.html
37    https://cloud.r-project.org/web/checks/check_results_rcmdcheck.html
38     https://cloud.r-project.org/web/checks/check_results_rcorpora.html
39     https://cloud.r-project.org/web/checks/check_results_rematch2.html
40         https://cloud.r-project.org/web/checks/check_results_rhub.html
41    https://cloud.r-project.org/web/checks/check_results_rversions.html
42       https://cloud.r-project.org/web/checks/check_results_sankey.html
43       https://cloud.r-project.org/web/checks/check_results_secret.html
44  https://cloud.r-project.org/web/checks/check_results_sessioninfo.html
45    https://cloud.r-project.org/web/checks/check_results_showimage.html
46       https://cloud.r-project.org/web/checks/check_results_tracer.html
47    https://cloud.r-project.org/web/checks/check_results_webdriver.html
48       https://cloud.r-project.org/web/checks/check_results_whoami.html
49 https://cloud.r-project.org/web/checks/check_results_xmlparsedata.html
50        https://cloud.r-project.org/web/checks/check_results_xopen.html
51          https://cloud.r-project.org/web/checks/check_results_zip.html
                check_result version
1            FAIL, OK, 1, 11      NA
2            FAIL, OK, 1, 11      NA
3           ERROR, OK, 1, 11      NA
4  ERROR, WARN, OK, 1, 1, 10      NA
5           ERROR, OK, 1, 11      NA
6           ERROR, OK, 1, 11      NA
7           ERROR, OK, 1, 11      NA
8            FAIL, OK, 1, 11      NA
9           ERROR, OK, 1, 11      NA
10           FAIL, OK, 1, 11      NA
11           FAIL, OK, 1, 11      NA
12          ERROR, OK, 1, 11      NA
13          ERROR, OK, 1, 11      NA
14           FAIL, OK, 1, 11      NA
15           FAIL, OK, 1, 11      NA
16           FAIL, OK, 1, 11      NA
17  ERROR, NOTE, OK, 1, 6, 5      NA
18          ERROR, OK, 1, 11      NA
19          ERROR, OK, 1, 11      NA
20          ERROR, OK, 1, 11      NA
21  ERROR, NOTE, OK, 1, 2, 9      NA
22          ERROR, OK, 1, 11      NA
23          ERROR, OK, 1, 11      NA
24 ERROR, NOTE, OK, 1, 1, 10      NA
25           FAIL, OK, 1, 11      NA
26          ERROR, OK, 1, 11      NA
27          ERROR, OK, 2, 10      NA
28          ERROR, OK, 1, 11      NA
29          ERROR, OK, 1, 11      NA
30          ERROR, OK, 1, 11      NA
31          ERROR, OK, 2, 10      NA
32          ERROR, OK, 1, 11      NA
33          ERROR, OK, 1, 11      NA
34 ERROR, WARN, OK, 1, 1, 10      NA
35           FAIL, OK, 1, 11      NA
36          ERROR, OK, 1, 11      NA
37 ERROR, NOTE, OK, 1, 1, 10      NA
38  ERROR, NOTE, OK, 1, 6, 5      NA
39 ERROR, NOTE, OK, 1, 1, 10      NA
40          ERROR, OK, 1, 11      NA
41          ERROR, OK, 1, 11      NA
42          ERROR, OK, 1, 11      NA
43          ERROR, OK, 1, 11      NA
44          ERROR, OK, 1, 11      NA
45           FAIL, OK, 1, 11      NA
46          ERROR, OK, 1, 11      NA
47          ERROR, OK, 1, 11      NA
48          ERROR, OK, 1, 11      NA
49          ERROR, OK, 1, 11      NA
50          ERROR, OK, 1, 11      NA
51          ERROR, OK, 1, 11      NA

```
