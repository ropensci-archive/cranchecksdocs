---
weight: 10
title: Responses
output: 
  html_document:
    keep_md: true
---



# Response codes

## 200 (OK) 

Request good!

```JavaScript
curl https://cranchecks.info/maintainers | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 5744
date: Sat, 09 May 2020 15:25:59 GMT

```
```JavaScript
{
    "found": 9396,
    "count": 10,
    "offset": null,
    "error": null,
    "data": [
        {
            "_id": "f.briatte_at_gmail.com",
            "email": "f.briatte_at_gmail.com",
            "name": "François Briatte",
            "url": "https://cloud.r-project.org/web/checks/check_results_f.briatte_at_gmail.com.html",
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
            ],
            "date_updated": "2020-05-09T12:02:27.559Z"
        },
        {
            "_id": "hyasrebi_at_yahoo.com",
            "email": "hyasrebi_at_yahoo.com",
            "name": "Haleh Yasrebi",
            "url": "https://cloud.r-project.org/web/checks/check_results_hyasrebi_at_yahoo.com.html",
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
            ],
            "date_updated": "2020-05-09T12:02:27.560Z"
        },
        {
            "_id": "ly_ding_at_126.com",
            "email": "ly_ding_at_126.com",
            "name": "Liuyong Ding",
            "url": "https://cloud.r-project.org/web/checks/check_results_ly_ding_at_126.com.html",
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
            ],
            "date_updated": "2020-05-09T12:02:27.560Z"
        },
        {
            "_id": "bodri.mh3_at_gmail.com",
            "email": "bodri.mh3_at_gmail.com",
            "name": "Andras Bodor",
            "url": "https://cloud.r-project.org/web/checks/check_results_bodri.mh3_at_gmail.com.html",
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
            ],
            "date_updated": "2020-05-09T12:02:27.560Z"
        },
        {
            "_id": "erich.neuwirth_at_univie.ac.at",
            "email": "erich.neuwirth_at_univie.ac.at",
            "name": "Erich Neuwirth",
            "url": "https://cloud.r-project.org/web/checks/check_results_erich.neuwirth_at_univie.ac.at.html",
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
            ],
            "date_updated": "2020-05-09T12:02:27.560Z"
        },
        {
            "_id": "markus.boenn.sf_at_googlemail.com",
            "email": "markus.boenn.sf_at_googlemail.com",
            "name": "Markus Boenn",
            "url": "https://cloud.r-project.org/web/checks/check_results_markus.boenn.sf_at_googlemail.com.html",
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
            ],
            "date_updated": "2020-05-09T12:02:27.560Z"
        },
        {
            "_id": "clement.benard_at_safrangroup.com",
            "email": "clement.benard_at_safrangroup.com",
            "name": "Clement Benard",
            "url": "https://cloud.r-project.org/web/checks/check_results_clement.benard_at_safrangroup.com.html",
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
            ],
            "date_updated": "2020-05-09T12:02:27.560Z"
        },
        {
            "_id": "s.greilich_at_dkfz.de",
            "email": "s.greilich_at_dkfz.de",
            "name": "Steffen Greilich",
            "url": "https://cloud.r-project.org/web/checks/check_results_s.greilich_at_dkfz.de.html",
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
            ],
            "date_updated": "2020-05-09T12:02:27.560Z"
        },
        {
            "_id": "eric_at_opsani.com",
            "email": "eric_at_opsani.com",
            "name": "Eric Kalosa-Kenyon",
            "url": "https://cloud.r-project.org/web/checks/check_results_eric_at_opsani.com.html",
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
            ],
            "date_updated": "2020-05-09T12:02:27.560Z"
        },
        {
            "_id": "egor_at_tillt.net",
            "email": "egor_at_tillt.net",
            "name": "Till Krenz",
            "url": "https://cloud.r-project.org/web/checks/check_results_egor_at_tillt.net.html",
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
            ],
            "date_updated": "2020-05-09T12:02:27.560Z"
        }
    ]
}
```

## 204 (No Content) 

Given on a delete request, indicating success, response body should be empty

## 302 (Found) 

The root `/`, redirects to `/heartbeat`, and `/docs` redirects to these documents

```JavaScript
curl https://cranchecks.info/ | jq .
```
```yaml
HTTP/2 302 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
location: https://cranchecks.info/heartbeat
server: Caddy
x-content-type-options: nosniff
content-length: 0
date: Sat, 09 May 2020 15:26:00 GMT

```

## 400 (Bad request)

When you have a malformed request, fix it and try again

```JavaScript
curl https://cranchecks.info/maintainers/blablabla | jq .
```
```yaml
HTTP/2 400 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 52
date: Sat, 09 May 2020 15:26:01 GMT

```
```JavaScript
{
    "error": {
        "message": "no results found"
    },
    "data": null
}
```

## 404 (Not found) 

When you request a route that does not exist, fix it and try again

```JavaScript
curl https://cranchecks.info/maintainer | jq .
```
```yaml
HTTP/2 404 
content-type: application/json
server: Caddy
x-cascade: pass
x-content-type-options: nosniff
content-length: 27
date: Sat, 09 May 2020 15:26:01 GMT

```
```JavaScript
{
    "error": "route not found"
}
```

## 405 (Method not allowed)

When you use a prohibited HTTP method for a given route.


## 500 (Internal server error) 

Server got itself in trouble; [get in touch with us](https://github.com/ropenscilabs/cchecksapi/issues).
