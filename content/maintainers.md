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
Content-Length: 1064
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 18 May 2020 12:36:03 GMT

```
```json
{
    "found": 9441,
    "count": 2,
    "offset": 5,
    "error": null,
    "data": [
        {
            "email": "markus.boenn.sf_at_googlemail.com",
            "name": "Markus Boenn",
            "url": "https://cloud.r-project.org/web/checks/check_results_markus.boenn.sf_at_googlemail.com.html",
            "date_updated": "2020-05-18T12:02:29.337Z",
            "table": [
                {
                    "package": "hypergea",
                    "any": true,
                    "ok": 6,
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
                            "category": "NOTE",
                            "number_checks": 6
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
            "date_updated": "2020-05-18T12:02:29.337Z",
            "table": [
                {
                    "package": "sirus",
                    "any": true,
                    "ok": 9,
                    "note": 3,
                    "warn": 0,
                    "error": 0
                }
            ],
            "packages": [
                {
                    "package": "sirus",
                    "url": "https://cloud.r-project.org/web/checks/check_results_sirus.html",
                    "check_result": [
                        {
                            "category": "NOTE",
                            "number_checks": 3
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
[1] 9441

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
1 2020-05-18T12:02:29.337Z hypergea, TRUE, 6, 6, 0, 0
2 2020-05-18T12:02:29.337Z    sirus, TRUE, 9, 3, 0, 0
                                                                                          packages
1 hypergea, https://cloud.r-project.org/web/checks/check_results_hypergea.html, NOTE, OK, 6, 6, NA
2       sirus, https://cloud.r-project.org/web/checks/check_results_sirus.html, NOTE, OK, 3, 9, NA

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
Content-Length: 12828
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 18 May 2020 12:36:03 GMT

```
```json
{
    "error": null,
    "data": {
        "email": "csardi.gabor_at_gmail.com",
        "name": "Gábor Csárdi",
        "url": "https://cloud.r-project.org/web/checks/check_results_csardi.gabor_at_gmail.com.html",
        "date_updated": "2020-05-18T12:02:29.763Z",
        "table": [
            {
                "package": "asciicast",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "callr",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "cleancall",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "cli",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 1,
                "error": 0
            },
            {
                "package": "cliapp",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "clisymbols",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "cranlike",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "cranlogs",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "crayon",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "debugme",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "desc",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "disposables",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "dotenv",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "filelock",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "franc",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "gh",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "igraph",
                "any": true,
                "ok": 5,
                "note": 7,
                "warn": 0,
                "error": 0
            },
            {
                "package": "igraphdata",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "isa2",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "keypress",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "keyring",
                "any": true,
                "ok": 10,
                "note": 2,
                "warn": 0,
                "error": 0
            },
            {
                "package": "liteq",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "lpSolve",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "pak",
                "any": true,
                "ok": 11,
                "note": 1,
                "warn": 0,
                "error": 0
            },
            {
                "package": "parsedate",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "pingr",
                "any": true,
                "ok": 9,
                "note": 0,
                "warn": 0,
                "error": 3
            },
            {
                "package": "pkgcache",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "pkgconfig",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "pkgsearch",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "praise",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "presser",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1
            },
            {
                "package": "prettycode",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "prettyunits",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "processx",
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 1,
                "error": 0
            },
            {
                "package": "progress",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "ps",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "rcmdcheck",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "rcorpora",
                "any": true,
                "ok": 5,
                "note": 7,
                "warn": 0,
                "error": 0
            },
            {
                "package": "rematch2",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "rhub",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "rversions",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "sand",
                "any": true,
                "ok": 1,
                "note": 11,
                "warn": 0,
                "error": 0
            },
            {
                "package": "sankey",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "secret",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "sessioninfo",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "showimage",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "tracer",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "webdriver",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "whoami",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "xmlparsedata",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "xopen",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            },
            {
                "package": "zip",
                "any": false,
                "ok": 12,
                "note": 0,
                "warn": 0,
                "error": 0
            }
        ],
        "packages": [
            {
                "package": "asciicast",
                "url": "https://cloud.r-project.org/web/checks/check_results_asciicast.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "callr",
                "url": "https://cloud.r-project.org/web/checks/check_results_callr.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "cleancall",
                "url": "https://cloud.r-project.org/web/checks/check_results_cleancall.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "cli",
                "url": "https://cloud.r-project.org/web/checks/check_results_cli.html",
                "check_result": [
                    {
                        "category": "WARN",
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
                "package": "cliapp",
                "url": "https://cloud.r-project.org/web/checks/check_results_cliapp.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "clisymbols",
                "url": "https://cloud.r-project.org/web/checks/check_results_clisymbols.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "cranlike",
                "url": "https://cloud.r-project.org/web/checks/check_results_cranlike.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "cranlogs",
                "url": "https://cloud.r-project.org/web/checks/check_results_cranlogs.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "crayon",
                "url": "https://cloud.r-project.org/web/checks/check_results_crayon.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "debugme",
                "url": "https://cloud.r-project.org/web/checks/check_results_debugme.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "desc",
                "url": "https://cloud.r-project.org/web/checks/check_results_desc.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "disposables",
                "url": "https://cloud.r-project.org/web/checks/check_results_disposables.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "dotenv",
                "url": "https://cloud.r-project.org/web/checks/check_results_dotenv.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "filelock",
                "url": "https://cloud.r-project.org/web/checks/check_results_filelock.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "franc",
                "url": "https://cloud.r-project.org/web/checks/check_results_franc.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "gh",
                "url": "https://cloud.r-project.org/web/checks/check_results_gh.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "igraph",
                "url": "https://cloud.r-project.org/web/checks/check_results_igraph.html",
                "check_result": [
                    {
                        "category": "NOTE",
                        "number_checks": 7
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
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "isa2",
                "url": "https://cloud.r-project.org/web/checks/check_results_isa2.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "keypress",
                "url": "https://cloud.r-project.org/web/checks/check_results_keypress.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "keyring",
                "url": "https://cloud.r-project.org/web/checks/check_results_keyring.html",
                "check_result": [
                    {
                        "category": "NOTE",
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
                "package": "liteq",
                "url": "https://cloud.r-project.org/web/checks/check_results_liteq.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "lpSolve",
                "url": "https://cloud.r-project.org/web/checks/check_results_lpSolve.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "pak",
                "url": "https://cloud.r-project.org/web/checks/check_results_pak.html",
                "check_result": [
                    {
                        "category": "NOTE",
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
                "package": "parsedate",
                "url": "https://cloud.r-project.org/web/checks/check_results_parsedate.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
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
                        "number_checks": 3
                    },
                    {
                        "category": "OK",
                        "number_checks": 9
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
                "package": "pkgconfig",
                "url": "https://cloud.r-project.org/web/checks/check_results_pkgconfig.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "pkgsearch",
                "url": "https://cloud.r-project.org/web/checks/check_results_pkgsearch.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "praise",
                "url": "https://cloud.r-project.org/web/checks/check_results_praise.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
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
                "package": "prettycode",
                "url": "https://cloud.r-project.org/web/checks/check_results_prettycode.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "prettyunits",
                "url": "https://cloud.r-project.org/web/checks/check_results_prettyunits.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "processx",
                "url": "https://cloud.r-project.org/web/checks/check_results_processx.html",
                "check_result": [
                    {
                        "category": "WARN",
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
                "package": "progress",
                "url": "https://cloud.r-project.org/web/checks/check_results_progress.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "ps",
                "url": "https://cloud.r-project.org/web/checks/check_results_ps.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "rcmdcheck",
                "url": "https://cloud.r-project.org/web/checks/check_results_rcmdcheck.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "rcorpora",
                "url": "https://cloud.r-project.org/web/checks/check_results_rcorpora.html",
                "check_result": [
                    {
                        "category": "NOTE",
                        "number_checks": 7
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
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "rhub",
                "url": "https://cloud.r-project.org/web/checks/check_results_rhub.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "rversions",
                "url": "https://cloud.r-project.org/web/checks/check_results_rversions.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "sand",
                "url": "https://cloud.r-project.org/web/checks/check_results_sand.html",
                "check_result": [
                    {
                        "category": "NOTE",
                        "number_checks": 11
                    },
                    {
                        "category": "OK",
                        "number_checks": 1
                    }
                ],
                "version": null
            },
            {
                "package": "sankey",
                "url": "https://cloud.r-project.org/web/checks/check_results_sankey.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "secret",
                "url": "https://cloud.r-project.org/web/checks/check_results_secret.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "sessioninfo",
                "url": "https://cloud.r-project.org/web/checks/check_results_sessioninfo.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "showimage",
                "url": "https://cloud.r-project.org/web/checks/check_results_showimage.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "tracer",
                "url": "https://cloud.r-project.org/web/checks/check_results_tracer.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "webdriver",
                "url": "https://cloud.r-project.org/web/checks/check_results_webdriver.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "whoami",
                "url": "https://cloud.r-project.org/web/checks/check_results_whoami.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "xmlparsedata",
                "url": "https://cloud.r-project.org/web/checks/check_results_xmlparsedata.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "xopen",
                "url": "https://cloud.r-project.org/web/checks/check_results_xopen.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
                    }
                ],
                "version": null
            },
            {
                "package": "zip",
                "url": "https://cloud.r-project.org/web/checks/check_results_zip.html",
                "check_result": [
                    {
                        "category": "OK",
                        "number_checks": 12
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
[1] "2020-05-18T12:02:29.763Z"

$data$table
        package   any ok note warn error
1     asciicast FALSE 12    0    0     0
2         callr FALSE 12    0    0     0
3     cleancall FALSE 12    0    0     0
4           cli  TRUE 11    0    1     0
5        cliapp FALSE 12    0    0     0
6    clisymbols FALSE 12    0    0     0
7      cranlike FALSE 12    0    0     0
8      cranlogs FALSE 12    0    0     0
9        crayon FALSE 12    0    0     0
10      debugme FALSE 12    0    0     0
11         desc FALSE 12    0    0     0
12  disposables FALSE 12    0    0     0
13       dotenv FALSE 12    0    0     0
14     filelock FALSE 12    0    0     0
15        franc FALSE 12    0    0     0
16           gh FALSE 12    0    0     0
17       igraph  TRUE  5    7    0     0
18   igraphdata FALSE 12    0    0     0
19         isa2 FALSE 12    0    0     0
20     keypress FALSE 12    0    0     0
21      keyring  TRUE 10    2    0     0
22        liteq FALSE 12    0    0     0
23      lpSolve FALSE 12    0    0     0
24          pak  TRUE 11    1    0     0
25    parsedate FALSE 12    0    0     0
26        pingr  TRUE  9    0    0     3
27     pkgcache  TRUE 11    0    0     1
28    pkgconfig FALSE 12    0    0     0
29    pkgsearch FALSE 12    0    0     0
30       praise FALSE 12    0    0     0
31      presser  TRUE 11    0    0     1
32   prettycode FALSE 12    0    0     0
33  prettyunits FALSE 12    0    0     0
34     processx  TRUE 11    0    1     0
35     progress FALSE 12    0    0     0
36           ps FALSE 12    0    0     0
37    rcmdcheck FALSE 12    0    0     0
38     rcorpora  TRUE  5    7    0     0
39     rematch2 FALSE 12    0    0     0
40         rhub FALSE 12    0    0     0
41    rversions FALSE 12    0    0     0
42         sand  TRUE  1   11    0     0
43       sankey FALSE 12    0    0     0
44       secret FALSE 12    0    0     0
45  sessioninfo FALSE 12    0    0     0
46    showimage FALSE 12    0    0     0
47       tracer FALSE 12    0    0     0
48    webdriver FALSE 12    0    0     0
49       whoami FALSE 12    0    0     0
50 xmlparsedata FALSE 12    0    0     0
51        xopen FALSE 12    0    0     0
52          zip FALSE 12    0    0     0

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
42         sand
43       sankey
44       secret
45  sessioninfo
46    showimage
47       tracer
48    webdriver
49       whoami
50 xmlparsedata
51        xopen
52          zip
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
42         https://cloud.r-project.org/web/checks/check_results_sand.html
43       https://cloud.r-project.org/web/checks/check_results_sankey.html
44       https://cloud.r-project.org/web/checks/check_results_secret.html
45  https://cloud.r-project.org/web/checks/check_results_sessioninfo.html
46    https://cloud.r-project.org/web/checks/check_results_showimage.html
47       https://cloud.r-project.org/web/checks/check_results_tracer.html
48    https://cloud.r-project.org/web/checks/check_results_webdriver.html
49       https://cloud.r-project.org/web/checks/check_results_whoami.html
50 https://cloud.r-project.org/web/checks/check_results_xmlparsedata.html
51        https://cloud.r-project.org/web/checks/check_results_xopen.html
52          https://cloud.r-project.org/web/checks/check_results_zip.html
       check_result version
1            OK, 12      NA
2            OK, 12      NA
3            OK, 12      NA
4   WARN, OK, 1, 11      NA
5            OK, 12      NA
6            OK, 12      NA
7            OK, 12      NA
8            OK, 12      NA
9            OK, 12      NA
10           OK, 12      NA
11           OK, 12      NA
12           OK, 12      NA
13           OK, 12      NA
14           OK, 12      NA
15           OK, 12      NA
16           OK, 12      NA
17   NOTE, OK, 7, 5      NA
18           OK, 12      NA
19           OK, 12      NA
20           OK, 12      NA
21  NOTE, OK, 2, 10      NA
22           OK, 12      NA
23           OK, 12      NA
24  NOTE, OK, 1, 11      NA
25           OK, 12      NA
26  ERROR, OK, 3, 9      NA
27 ERROR, OK, 1, 11      NA
28           OK, 12      NA
29           OK, 12      NA
30           OK, 12      NA
31 ERROR, OK, 1, 11      NA
32           OK, 12      NA
33           OK, 12      NA
34  WARN, OK, 1, 11      NA
35           OK, 12      NA
36           OK, 12      NA
37           OK, 12      NA
38   NOTE, OK, 7, 5      NA
39           OK, 12      NA
40           OK, 12      NA
41           OK, 12      NA
42  NOTE, OK, 11, 1      NA
43           OK, 12      NA
44           OK, 12      NA
45           OK, 12      NA
46           OK, 12      NA
47           OK, 12      NA
48           OK, 12      NA
49           OK, 12      NA
50           OK, 12      NA
51           OK, 12      NA
52           OK, 12      NA

```
