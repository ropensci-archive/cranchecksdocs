---
weight: 12
title: Maintainers
output: 
  html_document:
    keep_md: true
---



# Maintainers

```shell
curl https://cranchecks.info/maintainers/| jq .
```
```json
{
    "found": 9371,
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
            "date_updated": "2020-05-05T12:02:32.751Z"
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
            "date_updated": "2020-05-05T12:02:32.751Z"
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
            "date_updated": "2020-05-05T12:02:32.751Z"
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
            "date_updated": "2020-05-05T12:02:32.751Z"
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
                    "note": 11,
                    "warn": 0,
                    "error": 1
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
                        {
                            "category": "NOTE",
                            "number_checks": 12
                        }
                    ],
                    "version": null
                },
                {
                    "package": "RcmdrPlugin.mosaic",
                    "url": "https://cloud.r-project.org/web/checks/check_results_RcmdrPlugin.mosaic.html",
                    "check_result": [
                        {
                            "category": "ERROR",
                            "number_checks": 1
                        },
                        {
                            "category": "NOTE",
                            "number_checks": 11
                        }
                    ],
                    "version": null
                },
                {
                    "package": "RColorBrewer",
                    "url": "https://cloud.r-project.org/web/checks/check_results_RColorBrewer.html",
                    "check_result": [
                        {
                            "category": "NOTE",
                            "number_checks": 12
                        }
                    ],
                    "version": null
                }
            ],
            "date_updated": "2020-05-05T12:02:32.751Z"
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
            "date_updated": "2020-05-05T12:02:32.751Z"
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
            "date_updated": "2020-05-05T12:02:32.751Z"
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
            "date_updated": "2020-05-05T12:02:32.751Z"
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
            "date_updated": "2020-05-05T12:02:32.751Z"
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
            "date_updated": "2020-05-05T12:02:32.751Z"
        }
    ]
}

```


```r
cchecks::cch_maintainers()
```
```r
$found
[1] 9371

$count
[1] 10

$offset
[1] 0

$error
NULL

$data
                                 _id                             email
1             f.briatte_at_gmail.com            f.briatte_at_gmail.com
2              hyasrebi_at_yahoo.com             hyasrebi_at_yahoo.com
3                 ly_ding_at_126.com                ly_ding_at_126.com
4             bodri.mh3_at_gmail.com            bodri.mh3_at_gmail.com
5     erich.neuwirth_at_univie.ac.at    erich.neuwirth_at_univie.ac.at
6  markus.boenn.sf_at_googlemail.com markus.boenn.sf_at_googlemail.com
7  clement.benard_at_safrangroup.com clement.benard_at_safrangroup.com
8              s.greilich_at_dkfz.de             s.greilich_at_dkfz.de
9                 eric_at_opsani.com                eric_at_opsani.com
10                 egor_at_tillt.net                 egor_at_tillt.net
                 name
1    François Briatte
2       Haleh Yasrebi
3        Liuyong Ding
4        Andras Bodor
5      Erich Neuwirth
6        Markus Boenn
7      Clement Benard
8    Steffen Greilich
9  Eric Kalosa-Kenyon
10         Till Krenz
                                                                                           url
1             https://cloud.r-project.org/web/checks/check_results_f.briatte_at_gmail.com.html
2              https://cloud.r-project.org/web/checks/check_results_hyasrebi_at_yahoo.com.html
3                 https://cloud.r-project.org/web/checks/check_results_ly_ding_at_126.com.html
4             https://cloud.r-project.org/web/checks/check_results_bodri.mh3_at_gmail.com.html
5     https://cloud.r-project.org/web/checks/check_results_erich.neuwirth_at_univie.ac.at.html
6  https://cloud.r-project.org/web/checks/check_results_markus.boenn.sf_at_googlemail.com.html
7  https://cloud.r-project.org/web/checks/check_results_clement.benard_at_safrangroup.com.html
8              https://cloud.r-project.org/web/checks/check_results_s.greilich_at_dkfz.de.html
9                 https://cloud.r-project.org/web/checks/check_results_eric_at_opsani.com.html
10                 https://cloud.r-project.org/web/checks/check_results_egor_at_tillt.net.html
                                                                                               table
1                                                                        ggnetwork, TRUE, 7, 5, 0, 0
2                                    survJamda, survJamda.data, FALSE, TRUE, 12, 5, 0, 7, 0, 0, 0, 0
3                                                                         SP2000, FALSE, 12, 0, 0, 0
4                                                                             rCUR, TRUE, 0, 5, 0, 9
5  ENmisc, RcmdrPlugin.mosaic, RColorBrewer, TRUE, TRUE, TRUE, 0, 0, 0, 12, 11, 12, 0, 0, 0, 0, 1, 0
6                                                                         hypergea, TRUE, 6, 6, 0, 0
7                                                                            sirus, TRUE, 9, 3, 0, 0
8                                                                      libamtrack, TRUE, 2, 10, 0, 0
9                                                                        soobench, TRUE, 11, 1, 0, 0
10                                                                          egor, FALSE, 12, 0, 0, 0
                                                                                                                                                                                                                                                                                                               packages
1                                                                                                                                                                                                                    ggnetwork, https://cloud.r-project.org/web/checks/check_results_ggnetwork.html, NOTE, OK, 5, 7, NA
2                                                                                                              survJamda, survJamda.data, https://cloud.r-project.org/web/checks/check_results_survJamda.html, https://cloud.r-project.org/web/checks/check_results_survJamda.data.html, OK, 12, NOTE, OK, 7, 5, NA, NA
3                                                                                                                                                                                                                                          SP2000, https://cloud.r-project.org/web/checks/check_results_SP2000.html, NA
4                                                                                                                                                                                                                           rCUR, https://cloud.r-project.org/web/checks/check_results_rCUR.html, ERROR, NOTE, 9, 5, NA
5  ENmisc, RcmdrPlugin.mosaic, RColorBrewer, https://cloud.r-project.org/web/checks/check_results_ENmisc.html, https://cloud.r-project.org/web/checks/check_results_RcmdrPlugin.mosaic.html, https://cloud.r-project.org/web/checks/check_results_RColorBrewer.html, NOTE, 12, ERROR, NOTE, 1, 11, NOTE, 12, NA, NA, NA
6                                                                                                                                                                                                                      hypergea, https://cloud.r-project.org/web/checks/check_results_hypergea.html, NOTE, OK, 6, 6, NA
7                                                                                                                                                                                                                            sirus, https://cloud.r-project.org/web/checks/check_results_sirus.html, NOTE, OK, 3, 9, NA
8                                                                                                                                                                                                                 libamtrack, https://cloud.r-project.org/web/checks/check_results_libamtrack.html, NOTE, OK, 10, 2, NA
9                                                                                                                                                                                                                     soobench, https://cloud.r-project.org/web/checks/check_results_soobench.html, NOTE, OK, 1, 11, NA
10                                                                                                                                                                                                                                             egor, https://cloud.r-project.org/web/checks/check_results_egor.html, NA
               date_updated
1  2020-05-05T12:02:32.751Z
2  2020-05-05T12:02:32.751Z
3  2020-05-05T12:02:32.751Z
4  2020-05-05T12:02:32.751Z
5  2020-05-05T12:02:32.751Z
6  2020-05-05T12:02:32.751Z
7  2020-05-05T12:02:32.751Z
8  2020-05-05T12:02:32.751Z
9  2020-05-05T12:02:32.751Z
10 2020-05-05T12:02:32.751Z

```
