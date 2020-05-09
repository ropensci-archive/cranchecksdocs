---
weight: 12
title: Maintainers
output: 
  html_document:
    keep_md: true
---



# Maintainers

## Maintainers

Get all maintainers.

Default limit of 10.

```shell
curl https://cranchecks.info/maintainers/ | jq .
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
date: Sat, 09 May 2020 13:21:33 GMT

```
```json
{"found":9396,"count":10,"offset":null,"error":null,"data":[{"_id":"f.briatte_at_gmail.com","email":"f.briatte_at_gmail.com","name":"François Briatte","url":"https://cloud.r-project.org/web/checks/check_results_f.briatte_at_gmail.com.html","table":[{"package":"ggnetwork","any":true,"ok":7,"note":5,"warn":0,"error":0}],"packages":[{"package":"ggnetwork","url":"https://cloud.r-project.org/web/checks/check_results_ggnetwork.html","check_result":[{"category":"NOTE","number_checks":5},{"category":"OK","number_checks":7}],"version":null}],"date_updated":"2020-05-09T12:02:27.559Z"},{"_id":"hyasrebi_at_yahoo.com","email":"hyasrebi_at_yahoo.com","name":"Haleh Yasrebi","url":"https://cloud.r-project.org/web/checks/check_results_hyasrebi_at_yahoo.com.html","table":[{"package":"survJamda","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"survJamda.data","any":true,"ok":5,"note":7,"warn":0,"error":0}],"packages":[{"package":"survJamda","url":"https://cloud.r-project.org/web/checks/check_results_survJamda.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"survJamda.data","url":"https://cloud.r-project.org/web/checks/check_results_survJamda.data.html","check_result":[{"category":"NOTE","number_checks":7},{"category":"OK","number_checks":5}],"version":null}],"date_updated":"2020-05-09T12:02:27.560Z"},{"_id":"ly_ding_at_126.com","email":"ly_ding_at_126.com","name":"Liuyong Ding","url":"https://cloud.r-project.org/web/checks/check_results_ly_ding_at_126.com.html","table":[{"package":"SP2000","any":false,"ok":12,"note":0,"warn":0,"error":0}],"packages":[{"package":"SP2000","url":"https://cloud.r-project.org/web/checks/check_results_SP2000.html","check_result":[],"version":null}],"date_updated":"2020-05-09T12:02:27.560Z"},{"_id":"bodri.mh3_at_gmail.com","email":"bodri.mh3_at_gmail.com","name":"Andras Bodor","url":"https://cloud.r-project.org/web/checks/check_results_bodri.mh3_at_gmail.com.html","table":[{"package":"rCUR","any":true,"ok":0,"note":5,"warn":0,"error":9}],"packages":[{"package":"rCUR","url":"https://cloud.r-project.org/web/checks/check_results_rCUR.html","check_result":[{"category":"ERROR","number_checks":9},{"category":"NOTE","number_checks":5}],"version":null}],"date_updated":"2020-05-09T12:02:27.560Z"},{"_id":"erich.neuwirth_at_univie.ac.at","email":"erich.neuwirth_at_univie.ac.at","name":"Erich Neuwirth","url":"https://cloud.r-project.org/web/checks/check_results_erich.neuwirth_at_univie.ac.at.html","table":[{"package":"ENmisc","any":true,"ok":0,"note":12,"warn":0,"error":0},{"package":"RcmdrPlugin.mosaic","any":true,"ok":0,"note":12,"warn":0,"error":0},{"package":"RColorBrewer","any":true,"ok":0,"note":12,"warn":0,"error":0}],"packages":[{"package":"ENmisc","url":"https://cloud.r-project.org/web/checks/check_results_ENmisc.html","check_result":[],"version":null},{"package":"RcmdrPlugin.mosaic","url":"https://cloud.r-project.org/web/checks/check_results_RcmdrPlugin.mosaic.html","check_result":[],"version":null},{"package":"RColorBrewer","url":"https://cloud.r-project.org/web/checks/check_results_RColorBrewer.html","check_result":[],"version":null}],"date_updated":"2020-05-09T12:02:27.560Z"},{"_id":"markus.boenn.sf_at_googlemail.com","email":"markus.boenn.sf_at_googlemail.com","name":"Markus Boenn","url":"https://cloud.r-project.org/web/checks/check_results_markus.boenn.sf_at_googlemail.com.html","table":[{"package":"hypergea","any":true,"ok":6,"note":6,"warn":0,"error":0}],"packages":[{"package":"hypergea","url":"https://cloud.r-project.org/web/checks/check_results_hypergea.html","check_result":[{"category":"NOTE","number_checks":6},{"category":"OK","number_checks":6}],"version":null}],"date_updated":"2020-05-09T12:02:27.560Z"},{"_id":"clement.benard_at_safrangroup.com","email":"clement.benard_at_safrangroup.com","name":"Clement Benard","url":"https://cloud.r-project.org/web/checks/check_results_clement.benard_at_safrangroup.com.html","table":[{"package":"sirus","any":true,"ok":9,"note":3,"warn":0,"error":0}],"packages":[{"package":"sirus","url":"https://cloud.r-project.org/web/checks/check_results_sirus.html","check_result":[{"category":"NOTE","number_checks":3},{"category":"OK","number_checks":9}],"version":null}],"date_updated":"2020-05-09T12:02:27.560Z"},{"_id":"s.greilich_at_dkfz.de","email":"s.greilich_at_dkfz.de","name":"Steffen Greilich","url":"https://cloud.r-project.org/web/checks/check_results_s.greilich_at_dkfz.de.html","table":[{"package":"libamtrack","any":true,"ok":2,"note":10,"warn":0,"error":0}],"packages":[{"package":"libamtrack","url":"https://cloud.r-project.org/web/checks/check_results_libamtrack.html","check_result":[{"category":"NOTE","number_checks":10},{"category":"OK","number_checks":2}],"version":null}],"date_updated":"2020-05-09T12:02:27.560Z"},{"_id":"eric_at_opsani.com","email":"eric_at_opsani.com","name":"Eric Kalosa-Kenyon","url":"https://cloud.r-project.org/web/checks/check_results_eric_at_opsani.com.html","table":[{"package":"soobench","any":true,"ok":11,"note":1,"warn":0,"error":0}],"packages":[{"package":"soobench","url":"https://cloud.r-project.org/web/checks/check_results_soobench.html","check_result":[{"category":"NOTE","number_checks":1},{"category":"OK","number_checks":11}],"version":null}],"date_updated":"2020-05-09T12:02:27.560Z"},{"_id":"egor_at_tillt.net","email":"egor_at_tillt.net","name":"Till Krenz","url":"https://cloud.r-project.org/web/checks/check_results_egor_at_tillt.net.html","table":[{"package":"egor","any":false,"ok":12,"note":0,"warn":0,"error":0}],"packages":[{"package":"egor","url":"https://cloud.r-project.org/web/checks/check_results_egor.html","check_result":[],"version":null}],"date_updated":"2020-05-09T12:02:27.560Z"}]}
```


```r
cchecks::cch_maintainers()
```
```r
$found
[1] 9396

$count
[1] 10

$offset
[1] 0

$error
NULL

$data
                                 _id                             email               name
1             f.briatte_at_gmail.com            f.briatte_at_gmail.com   François Briatte
2              hyasrebi_at_yahoo.com             hyasrebi_at_yahoo.com      Haleh Yasrebi
3                 ly_ding_at_126.com                ly_ding_at_126.com       Liuyong Ding
4             bodri.mh3_at_gmail.com            bodri.mh3_at_gmail.com       Andras Bodor
5     erich.neuwirth_at_univie.ac.at    erich.neuwirth_at_univie.ac.at     Erich Neuwirth
6  markus.boenn.sf_at_googlemail.com markus.boenn.sf_at_googlemail.com       Markus Boenn
7  clement.benard_at_safrangroup.com clement.benard_at_safrangroup.com     Clement Benard
8              s.greilich_at_dkfz.de             s.greilich_at_dkfz.de   Steffen Greilich
9                 eric_at_opsani.com                eric_at_opsani.com Eric Kalosa-Kenyon
10                 egor_at_tillt.net                 egor_at_tillt.net         Till Krenz
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
5  ENmisc, RcmdrPlugin.mosaic, RColorBrewer, TRUE, TRUE, TRUE, 0, 0, 0, 12, 12, 12, 0, 0, 0, 0, 0, 0
6                                                                         hypergea, TRUE, 6, 6, 0, 0
7                                                                            sirus, TRUE, 9, 3, 0, 0
8                                                                      libamtrack, TRUE, 2, 10, 0, 0
9                                                                        soobench, TRUE, 11, 1, 0, 0
10                                                                          egor, FALSE, 12, 0, 0, 0
                                                                                                                                                                                                                                                                       packages
1                                                                                                                                                                            ggnetwork, https://cloud.r-project.org/web/checks/check_results_ggnetwork.html, NOTE, OK, 5, 7, NA
2                                                                      survJamda, survJamda.data, https://cloud.r-project.org/web/checks/check_results_survJamda.html, https://cloud.r-project.org/web/checks/check_results_survJamda.data.html, OK, 12, NOTE, OK, 7, 5, NA, NA
3                                                                                                                                                                                                  SP2000, https://cloud.r-project.org/web/checks/check_results_SP2000.html, NA
4                                                                                                                                                                                   rCUR, https://cloud.r-project.org/web/checks/check_results_rCUR.html, ERROR, NOTE, 9, 5, NA
5  ENmisc, RcmdrPlugin.mosaic, RColorBrewer, https://cloud.r-project.org/web/checks/check_results_ENmisc.html, https://cloud.r-project.org/web/checks/check_results_RcmdrPlugin.mosaic.html, https://cloud.r-project.org/web/checks/check_results_RColorBrewer.html, NA, NA, NA
6                                                                                                                                                                              hypergea, https://cloud.r-project.org/web/checks/check_results_hypergea.html, NOTE, OK, 6, 6, NA
7                                                                                                                                                                                    sirus, https://cloud.r-project.org/web/checks/check_results_sirus.html, NOTE, OK, 3, 9, NA
8                                                                                                                                                                         libamtrack, https://cloud.r-project.org/web/checks/check_results_libamtrack.html, NOTE, OK, 10, 2, NA
9                                                                                                                                                                             soobench, https://cloud.r-project.org/web/checks/check_results_soobench.html, NOTE, OK, 1, 11, NA
10                                                                                                                                                                                                     egor, https://cloud.r-project.org/web/checks/check_results_egor.html, NA
               date_updated
1  2020-05-09T12:02:27.559Z
2  2020-05-09T12:02:27.560Z
3  2020-05-09T12:02:27.560Z
4  2020-05-09T12:02:27.560Z
5  2020-05-09T12:02:27.560Z
6  2020-05-09T12:02:27.560Z
7  2020-05-09T12:02:27.560Z
8  2020-05-09T12:02:27.560Z
9  2020-05-09T12:02:27.560Z
10 2020-05-09T12:02:27.560Z

```

## Maintainers by email

Get maintainer summary by email.

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
content-length: 12898
date: Sat, 09 May 2020 13:21:34 GMT

```
```json
{"error":null,"data":{"_id":"csardi.gabor_at_gmail.com","email":"csardi.gabor_at_gmail.com","name":"Gábor Csárdi","url":"https://cloud.r-project.org/web/checks/check_results_csardi.gabor_at_gmail.com.html","table":[{"package":"asciicast","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"callr","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"cleancall","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"cli","any":true,"ok":11,"note":0,"warn":1,"error":0},{"package":"cliapp","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"clisymbols","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"cranlike","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"cranlogs","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"crayon","any":true,"ok":11,"note":0,"warn":0,"error":1},{"package":"debugme","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"desc","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"disposables","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"dotenv","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"filelock","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"franc","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"gh","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"igraph","any":true,"ok":5,"note":7,"warn":0,"error":0},{"package":"igraphdata","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"isa2","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"keypress","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"keyring","any":true,"ok":10,"note":2,"warn":0,"error":0},{"package":"liteq","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"lpSolve","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"pak","any":true,"ok":11,"note":1,"warn":0,"error":0},{"package":"parsedate","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"pingr","any":true,"ok":9,"note":0,"warn":0,"error":3},{"package":"pkgcache","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"pkgconfig","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"pkgsearch","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"praise","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"presser","any":true,"ok":10,"note":0,"warn":0,"error":1},{"package":"prettycode","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"prettyunits","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"processx","any":true,"ok":11,"note":0,"warn":1,"error":0},{"package":"progress","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"ps","any":true,"ok":11,"note":0,"warn":0,"error":1},{"package":"rcmdcheck","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"rcorpora","any":true,"ok":5,"note":7,"warn":0,"error":0},{"package":"rematch2","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"rhub","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"rversions","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"sand","any":true,"ok":1,"note":11,"warn":0,"error":0},{"package":"sankey","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"secret","any":false,"ok":9,"note":0,"warn":0,"error":0},{"package":"sessioninfo","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"showimage","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"tracer","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"webdriver","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"whoami","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"xmlparsedata","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"xopen","any":false,"ok":12,"note":0,"warn":0,"error":0},{"package":"zip","any":false,"ok":12,"note":0,"warn":0,"error":0}],"packages":[{"package":"asciicast","url":"https://cloud.r-project.org/web/checks/check_results_asciicast.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"callr","url":"https://cloud.r-project.org/web/checks/check_results_callr.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"cleancall","url":"https://cloud.r-project.org/web/checks/check_results_cleancall.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"cli","url":"https://cloud.r-project.org/web/checks/check_results_cli.html","check_result":[{"category":"WARN","number_checks":1},{"category":"OK","number_checks":11}],"version":null},{"package":"cliapp","url":"https://cloud.r-project.org/web/checks/check_results_cliapp.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"clisymbols","url":"https://cloud.r-project.org/web/checks/check_results_clisymbols.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"cranlike","url":"https://cloud.r-project.org/web/checks/check_results_cranlike.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"cranlogs","url":"https://cloud.r-project.org/web/checks/check_results_cranlogs.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"crayon","url":"https://cloud.r-project.org/web/checks/check_results_crayon.html","check_result":[{"category":"ERROR","number_checks":1},{"category":"OK","number_checks":11}],"version":null},{"package":"debugme","url":"https://cloud.r-project.org/web/checks/check_results_debugme.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"desc","url":"https://cloud.r-project.org/web/checks/check_results_desc.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"disposables","url":"https://cloud.r-project.org/web/checks/check_results_disposables.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"dotenv","url":"https://cloud.r-project.org/web/checks/check_results_dotenv.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"filelock","url":"https://cloud.r-project.org/web/checks/check_results_filelock.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"franc","url":"https://cloud.r-project.org/web/checks/check_results_franc.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"gh","url":"https://cloud.r-project.org/web/checks/check_results_gh.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"igraph","url":"https://cloud.r-project.org/web/checks/check_results_igraph.html","check_result":[{"category":"NOTE","number_checks":7},{"category":"OK","number_checks":5}],"version":null},{"package":"igraphdata","url":"https://cloud.r-project.org/web/checks/check_results_igraphdata.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"isa2","url":"https://cloud.r-project.org/web/checks/check_results_isa2.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"keypress","url":"https://cloud.r-project.org/web/checks/check_results_keypress.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"keyring","url":"https://cloud.r-project.org/web/checks/check_results_keyring.html","check_result":[{"category":"NOTE","number_checks":2},{"category":"OK","number_checks":10}],"version":null},{"package":"liteq","url":"https://cloud.r-project.org/web/checks/check_results_liteq.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"lpSolve","url":"https://cloud.r-project.org/web/checks/check_results_lpSolve.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"pak","url":"https://cloud.r-project.org/web/checks/check_results_pak.html","check_result":[{"category":"NOTE","number_checks":1},{"category":"OK","number_checks":11}],"version":null},{"package":"parsedate","url":"https://cloud.r-project.org/web/checks/check_results_parsedate.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"pingr","url":"https://cloud.r-project.org/web/checks/check_results_pingr.html","check_result":[{"category":"ERROR","number_checks":3},{"category":"OK","number_checks":9}],"version":null},{"package":"pkgcache","url":"https://cloud.r-project.org/web/checks/check_results_pkgcache.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"pkgconfig","url":"https://cloud.r-project.org/web/checks/check_results_pkgconfig.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"pkgsearch","url":"https://cloud.r-project.org/web/checks/check_results_pkgsearch.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"praise","url":"https://cloud.r-project.org/web/checks/check_results_praise.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"presser","url":"https://cloud.r-project.org/web/checks/check_results_presser.html","check_result":[{"category":"ERROR","number_checks":1},{"category":"OK","number_checks":10}],"version":null},{"package":"prettycode","url":"https://cloud.r-project.org/web/checks/check_results_prettycode.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"prettyunits","url":"https://cloud.r-project.org/web/checks/check_results_prettyunits.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"processx","url":"https://cloud.r-project.org/web/checks/check_results_processx.html","check_result":[{"category":"WARN","number_checks":1},{"category":"OK","number_checks":11}],"version":null},{"package":"progress","url":"https://cloud.r-project.org/web/checks/check_results_progress.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"ps","url":"https://cloud.r-project.org/web/checks/check_results_ps.html","check_result":[{"category":"ERROR","number_checks":1},{"category":"OK","number_checks":11}],"version":null},{"package":"rcmdcheck","url":"https://cloud.r-project.org/web/checks/check_results_rcmdcheck.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"rcorpora","url":"https://cloud.r-project.org/web/checks/check_results_rcorpora.html","check_result":[{"category":"NOTE","number_checks":7},{"category":"OK","number_checks":5}],"version":null},{"package":"rematch2","url":"https://cloud.r-project.org/web/checks/check_results_rematch2.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"rhub","url":"https://cloud.r-project.org/web/checks/check_results_rhub.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"rversions","url":"https://cloud.r-project.org/web/checks/check_results_rversions.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"sand","url":"https://cloud.r-project.org/web/checks/check_results_sand.html","check_result":[{"category":"NOTE","number_checks":11},{"category":"OK","number_checks":1}],"version":null},{"package":"sankey","url":"https://cloud.r-project.org/web/checks/check_results_sankey.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"secret","url":"https://cloud.r-project.org/web/checks/check_results_secret.html","check_result":[{"category":"OK","number_checks":9}],"version":null},{"package":"sessioninfo","url":"https://cloud.r-project.org/web/checks/check_results_sessioninfo.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"showimage","url":"https://cloud.r-project.org/web/checks/check_results_showimage.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"tracer","url":"https://cloud.r-project.org/web/checks/check_results_tracer.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"webdriver","url":"https://cloud.r-project.org/web/checks/check_results_webdriver.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"whoami","url":"https://cloud.r-project.org/web/checks/check_results_whoami.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"xmlparsedata","url":"https://cloud.r-project.org/web/checks/check_results_xmlparsedata.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"xopen","url":"https://cloud.r-project.org/web/checks/check_results_xopen.html","check_result":[{"category":"OK","number_checks":12}],"version":null},{"package":"zip","url":"https://cloud.r-project.org/web/checks/check_results_zip.html","check_result":[{"category":"OK","number_checks":12}],"version":null}],"date_updated":"2020-05-09T12:02:28.032Z"}}
```


```r
cchecks::cch_maintainers(x = "csardi.gabor_at_gmail.com")
```
```r
$error
NULL

$data
$data$`_id`
[1] "csardi.gabor_at_gmail.com"

$data$email
[1] "csardi.gabor_at_gmail.com"

$data$name
[1] "Gábor Csárdi"

$data$url
[1] "https://cloud.r-project.org/web/checks/check_results_csardi.gabor_at_gmail.com.html"

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
9        crayon  TRUE 11    0    0     1
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
27     pkgcache FALSE 12    0    0     0
28    pkgconfig FALSE 12    0    0     0
29    pkgsearch FALSE 12    0    0     0
30       praise FALSE 12    0    0     0
31      presser  TRUE 10    0    0     1
32   prettycode FALSE 12    0    0     0
33  prettyunits FALSE 12    0    0     0
34     processx  TRUE 11    0    1     0
35     progress FALSE 12    0    0     0
36           ps  TRUE 11    0    0     1
37    rcmdcheck FALSE 12    0    0     0
38     rcorpora  TRUE  5    7    0     0
39     rematch2 FALSE 12    0    0     0
40         rhub FALSE 12    0    0     0
41    rversions FALSE 12    0    0     0
42         sand  TRUE  1   11    0     0
43       sankey FALSE 12    0    0     0
44       secret FALSE  9    0    0     0
45  sessioninfo FALSE 12    0    0     0
46    showimage FALSE 12    0    0     0
47       tracer FALSE 12    0    0     0
48    webdriver FALSE 12    0    0     0
49       whoami FALSE 12    0    0     0
50 xmlparsedata FALSE 12    0    0     0
51        xopen FALSE 12    0    0     0
52          zip FALSE 12    0    0     0

$data$packages
        package                                                                    url
1     asciicast    https://cloud.r-project.org/web/checks/check_results_asciicast.html
2         callr        https://cloud.r-project.org/web/checks/check_results_callr.html
3     cleancall    https://cloud.r-project.org/web/checks/check_results_cleancall.html
4           cli          https://cloud.r-project.org/web/checks/check_results_cli.html
5        cliapp       https://cloud.r-project.org/web/checks/check_results_cliapp.html
6    clisymbols   https://cloud.r-project.org/web/checks/check_results_clisymbols.html
7      cranlike     https://cloud.r-project.org/web/checks/check_results_cranlike.html
8      cranlogs     https://cloud.r-project.org/web/checks/check_results_cranlogs.html
9        crayon       https://cloud.r-project.org/web/checks/check_results_crayon.html
10      debugme      https://cloud.r-project.org/web/checks/check_results_debugme.html
11         desc         https://cloud.r-project.org/web/checks/check_results_desc.html
12  disposables  https://cloud.r-project.org/web/checks/check_results_disposables.html
13       dotenv       https://cloud.r-project.org/web/checks/check_results_dotenv.html
14     filelock     https://cloud.r-project.org/web/checks/check_results_filelock.html
15        franc        https://cloud.r-project.org/web/checks/check_results_franc.html
16           gh           https://cloud.r-project.org/web/checks/check_results_gh.html
17       igraph       https://cloud.r-project.org/web/checks/check_results_igraph.html
18   igraphdata   https://cloud.r-project.org/web/checks/check_results_igraphdata.html
19         isa2         https://cloud.r-project.org/web/checks/check_results_isa2.html
20     keypress     https://cloud.r-project.org/web/checks/check_results_keypress.html
21      keyring      https://cloud.r-project.org/web/checks/check_results_keyring.html
22        liteq        https://cloud.r-project.org/web/checks/check_results_liteq.html
23      lpSolve      https://cloud.r-project.org/web/checks/check_results_lpSolve.html
24          pak          https://cloud.r-project.org/web/checks/check_results_pak.html
25    parsedate    https://cloud.r-project.org/web/checks/check_results_parsedate.html
26        pingr        https://cloud.r-project.org/web/checks/check_results_pingr.html
27     pkgcache     https://cloud.r-project.org/web/checks/check_results_pkgcache.html
28    pkgconfig    https://cloud.r-project.org/web/checks/check_results_pkgconfig.html
29    pkgsearch    https://cloud.r-project.org/web/checks/check_results_pkgsearch.html
30       praise       https://cloud.r-project.org/web/checks/check_results_praise.html
31      presser      https://cloud.r-project.org/web/checks/check_results_presser.html
32   prettycode   https://cloud.r-project.org/web/checks/check_results_prettycode.html
33  prettyunits  https://cloud.r-project.org/web/checks/check_results_prettyunits.html
34     processx     https://cloud.r-project.org/web/checks/check_results_processx.html
35     progress     https://cloud.r-project.org/web/checks/check_results_progress.html
36           ps           https://cloud.r-project.org/web/checks/check_results_ps.html
37    rcmdcheck    https://cloud.r-project.org/web/checks/check_results_rcmdcheck.html
38     rcorpora     https://cloud.r-project.org/web/checks/check_results_rcorpora.html
39     rematch2     https://cloud.r-project.org/web/checks/check_results_rematch2.html
40         rhub         https://cloud.r-project.org/web/checks/check_results_rhub.html
41    rversions    https://cloud.r-project.org/web/checks/check_results_rversions.html
42         sand         https://cloud.r-project.org/web/checks/check_results_sand.html
43       sankey       https://cloud.r-project.org/web/checks/check_results_sankey.html
44       secret       https://cloud.r-project.org/web/checks/check_results_secret.html
45  sessioninfo  https://cloud.r-project.org/web/checks/check_results_sessioninfo.html
46    showimage    https://cloud.r-project.org/web/checks/check_results_showimage.html
47       tracer       https://cloud.r-project.org/web/checks/check_results_tracer.html
48    webdriver    https://cloud.r-project.org/web/checks/check_results_webdriver.html
49       whoami       https://cloud.r-project.org/web/checks/check_results_whoami.html
50 xmlparsedata https://cloud.r-project.org/web/checks/check_results_xmlparsedata.html
51        xopen        https://cloud.r-project.org/web/checks/check_results_xopen.html
52          zip          https://cloud.r-project.org/web/checks/check_results_zip.html
       check_result version
1            OK, 12      NA
2            OK, 12      NA
3            OK, 12      NA
4   WARN, OK, 1, 11      NA
5            OK, 12      NA
6            OK, 12      NA
7            OK, 12      NA
8            OK, 12      NA
9  ERROR, OK, 1, 11      NA
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
27           OK, 12      NA
28           OK, 12      NA
29           OK, 12      NA
30           OK, 12      NA
31 ERROR, OK, 1, 10      NA
32           OK, 12      NA
33           OK, 12      NA
34  WARN, OK, 1, 11      NA
35           OK, 12      NA
36 ERROR, OK, 1, 11      NA
37           OK, 12      NA
38   NOTE, OK, 7, 5      NA
39           OK, 12      NA
40           OK, 12      NA
41           OK, 12      NA
42  NOTE, OK, 11, 1      NA
43           OK, 12      NA
44            OK, 9      NA
45           OK, 12      NA
46           OK, 12      NA
47           OK, 12      NA
48           OK, 12      NA
49           OK, 12      NA
50           OK, 12      NA
51           OK, 12      NA
52           OK, 12      NA

$data$date_updated
[1] "2020-05-09T12:02:28.032Z"

```
