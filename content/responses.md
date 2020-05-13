---
weight: 10
title: Responses
output: 
  html_document:
    keep_md: true
---



# Response codes

For this section of the docs, examples of (bad) requests are given in the Shell tab on the right, and the headers are in the Headers tab.

## 200 (OK) 

Request good!

```shell
curl https://cranchecks.info/maintainers | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 5419
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 13 May 2020 09:15:32 GMT

```
```json
{
    "found": 9423,
    "count": 10,
    "offset": null,
    "error": null,
    "data": [
        {
            "email": "f.briatte_at_gmail.com",
            "name": "François Briatte",
            "url": "https://cloud.r-project.org/web/checks/check_results_f.briatte_at_gmail.com.html",
            "date_updated": "2020-05-13T08:00:53.028Z",
            "table": [
                {
                    "package": "ggnetwork",
                    "any": true,
                    "ok": 7,
                    "note": 5,
                    "warn": 0,
                    "error": 0
                }
            ],
            "packages": [
                {
                    "package": "ggnetwork",
                    "url": "https://cloud.r-project.org/web/checks/check_results_ggnetwork.html",
                    "check_result": [
                        {
                            "category": "NOTE",
                            "number_checks": 5
                        },
                        {
                            "category": "OK",
                            "number_checks": 7
                        }
                    ],
                    "version": null
                }
            ]
        },
        {
            "email": "hyasrebi_at_yahoo.com",
            "name": "Haleh Yasrebi",
            "url": "https://cloud.r-project.org/web/checks/check_results_hyasrebi_at_yahoo.com.html",
            "date_updated": "2020-05-13T08:00:53.028Z",
            "table": [
                {
                    "package": "survJamda",
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0
                },
                {
                    "package": "survJamda.data",
                    "any": true,
                    "ok": 5,
                    "note": 7,
                    "warn": 0,
                    "error": 0
                }
            ],
            "packages": [
                {
                    "package": "survJamda",
                    "url": "https://cloud.r-project.org/web/checks/check_results_survJamda.html",
                    "check_result": [
                        {
                            "category": "OK",
                            "number_checks": 12
                        }
                    ],
                    "version": null
                },
                {
                    "package": "survJamda.data",
                    "url": "https://cloud.r-project.org/web/checks/check_results_survJamda.data.html",
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
                }
            ]
        },
        {
            "email": "ly_ding_at_126.com",
            "name": "Liuyong Ding",
            "url": "https://cloud.r-project.org/web/checks/check_results_ly_ding_at_126.com.html",
            "date_updated": "2020-05-13T08:00:53.028Z",
            "table": [
                {
                    "package": "SP2000",
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0
                }
            ],
            "packages": [
                {
                    "package": "SP2000",
                    "url": "https://cloud.r-project.org/web/checks/check_results_SP2000.html",
                    "check_result": [

                    ],
                    "version": null
                }
            ]
        },
        {
            "email": "bodri.mh3_at_gmail.com",
            "name": "Andras Bodor",
            "url": "https://cloud.r-project.org/web/checks/check_results_bodri.mh3_at_gmail.com.html",
            "date_updated": "2020-05-13T08:00:53.028Z",
            "table": [
                {
                    "package": "rCUR",
                    "any": true,
                    "ok": 0,
                    "note": 5,
                    "warn": 0,
                    "error": 9
                }
            ],
            "packages": [
                {
                    "package": "rCUR",
                    "url": "https://cloud.r-project.org/web/checks/check_results_rCUR.html",
                    "check_result": [
                        {
                            "category": "ERROR",
                            "number_checks": 9
                        },
                        {
                            "category": "NOTE",
                            "number_checks": 5
                        }
                    ],
                    "version": null
                }
            ]
        },
        {
            "email": "erich.neuwirth_at_univie.ac.at",
            "name": "Erich Neuwirth",
            "url": "https://cloud.r-project.org/web/checks/check_results_erich.neuwirth_at_univie.ac.at.html",
            "date_updated": "2020-05-13T08:00:53.028Z",
            "table": [
                {
                    "package": "ENmisc",
                    "any": true,
                    "ok": 0,
                    "note": 12,
                    "warn": 0,
                    "error": 0
                },
                {
                    "package": "RcmdrPlugin.mosaic",
                    "any": true,
                    "ok": 0,
                    "note": 12,
                    "warn": 0,
                    "error": 0
                },
                {
                    "package": "RColorBrewer",
                    "any": true,
                    "ok": 0,
                    "note": 12,
                    "warn": 0,
                    "error": 0
                }
            ],
            "packages": [
                {
                    "package": "ENmisc",
                    "url": "https://cloud.r-project.org/web/checks/check_results_ENmisc.html",
                    "check_result": [

                    ],
                    "version": null
                },
                {
                    "package": "RcmdrPlugin.mosaic",
                    "url": "https://cloud.r-project.org/web/checks/check_results_RcmdrPlugin.mosaic.html",
                    "check_result": [

                    ],
                    "version": null
                },
                {
                    "package": "RColorBrewer",
                    "url": "https://cloud.r-project.org/web/checks/check_results_RColorBrewer.html",
                    "check_result": [

                    ],
                    "version": null
                }
            ]
        },
        {
            "email": "markus.boenn.sf_at_googlemail.com",
            "name": "Markus Boenn",
            "url": "https://cloud.r-project.org/web/checks/check_results_markus.boenn.sf_at_googlemail.com.html",
            "date_updated": "2020-05-13T08:00:53.028Z",
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
            "date_updated": "2020-05-13T08:00:53.028Z",
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
        },
        {
            "email": "s.greilich_at_dkfz.de",
            "name": "Steffen Greilich",
            "url": "https://cloud.r-project.org/web/checks/check_results_s.greilich_at_dkfz.de.html",
            "date_updated": "2020-05-13T08:00:53.028Z",
            "table": [
                {
                    "package": "libamtrack",
                    "any": true,
                    "ok": 2,
                    "note": 10,
                    "warn": 0,
                    "error": 0
                }
            ],
            "packages": [
                {
                    "package": "libamtrack",
                    "url": "https://cloud.r-project.org/web/checks/check_results_libamtrack.html",
                    "check_result": [
                        {
                            "category": "NOTE",
                            "number_checks": 10
                        },
                        {
                            "category": "OK",
                            "number_checks": 2
                        }
                    ],
                    "version": null
                }
            ]
        },
        {
            "email": "eric_at_opsani.com",
            "name": "Eric Kalosa-Kenyon",
            "url": "https://cloud.r-project.org/web/checks/check_results_eric_at_opsani.com.html",
            "date_updated": "2020-05-13T08:00:53.028Z",
            "table": [
                {
                    "package": "soobench",
                    "any": true,
                    "ok": 11,
                    "note": 1,
                    "warn": 0,
                    "error": 0
                }
            ],
            "packages": [
                {
                    "package": "soobench",
                    "url": "https://cloud.r-project.org/web/checks/check_results_soobench.html",
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
                }
            ]
        },
        {
            "email": "egor_at_tillt.net",
            "name": "Till Krenz",
            "url": "https://cloud.r-project.org/web/checks/check_results_egor_at_tillt.net.html",
            "date_updated": "2020-05-13T08:00:53.028Z",
            "table": [
                {
                    "package": "egor",
                    "any": false,
                    "ok": 12,
                    "note": 0,
                    "warn": 0,
                    "error": 0
                }
            ],
            "packages": [
                {
                    "package": "egor",
                    "url": "https://cloud.r-project.org/web/checks/check_results_egor.html",
                    "check_result": [

                    ],
                    "version": null
                }
            ]
        }
    ]
}
```

## 204 (No Content) 

Given on a delete request, indicating success, response body should be empty.

## 302 (Found) 

The root `/`, redirects to `/heartbeat`, and `/docs` redirects to what you're reading right now.

```shell
curl https://cranchecks.info/ | jq .
```
```yaml
HTTP/1.1 302 Found
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 0
Content-Type: application/json; charset=utf8
Location: https://cranchecks.info/heartbeat
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 13 May 2020 09:15:33 GMT

```

## 400 (Bad request)

When you have a malformed request, fix it and try again

```shell
curl https://cranchecks.info/maintainers/blablabla | jq .
```
```yaml
HTTP/1.1 400 Bad Request
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 52
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 13 May 2020 09:15:33 GMT

```
```json
{
    "error": {
        "message": "no results found"
    },
    "data": null
}
```

## 404 (Not found) 

When you request a route that does not exist, fix it and try again.
E.g. in the example here we misspell "maintainers" to "maintainer". :see_no_evil:

```shell
curl https://cranchecks.info/maintainer | jq .
```
```yaml
HTTP/1.1 404 Not Found
Content-Length: 27
Content-Type: application/json
Server: Caddy
X-Cascade: pass
X-Content-Type-Options: nosniff
Date: Wed, 13 May 2020 09:15:33 GMT

```
```json
{
    "error": "route not found"
}
```

## 405 (Method not allowed)

When you use a prohibited HTTP method for a given route.
Don't do that. :wink:

```shell
curl -XDELETE https://cranchecks.info/pkgs/ropenaq/ | jq .
```
```yaml
HTTP/1.1 405 Method Not Allowed
Content-Length: 30
Content-Type: application/json
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 13 May 2020 09:15:33 GMT

```
```json
{
    "error": "Method Not Allowed"
}
```


## 500 (Internal server error) 

Server got itself in trouble; [get in touch with us](https://github.com/ropenscilabs/cchecksapi/issues).
