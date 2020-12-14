---
weight: 11
title: Hearbeat
output: 
  html_document:
    keep_md: true
---



# Heartbeat

Get heartbeat for the API :heartbeat: (i.e. the list of endpoints).

`GET [/heartbeat]`

[Function of the `cchecks` R package: `cch_heartbeat()`](https://docs.ropensci.org/cchecks/reference/cch_heartbeat.html).

```shell
curl https://cranchecks.info/heartbeat | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 256
date: Mon, 14 Dec 2020 12:54:27 GMT

```
```json
{
    "routes": [
        "/",
        "/docs",
        "/heartbeat/?",
        "/pkgs",
        "/pkgs/:name",
        "/maintainers",
        "/maintainers/:email",
        "/badges/:type/:package",
        "/badges/flavor/:flavor/:package",
        "/pkgs/:name/history",
        "/history/:date",
        "/search",
        "/notifications/rules",
        "/notifications/rules/:id"
    ]
}
```


```r
cchecks::cch_heartbeat()
```
```r
$routes
 [1] "/"                               "/docs"                          
 [3] "/heartbeat/?"                    "/pkgs"                          
 [5] "/pkgs/:name"                     "/maintainers"                   
 [7] "/maintainers/:email"             "/badges/:type/:package"         
 [9] "/badges/flavor/:flavor/:package" "/pkgs/:name/history"            
[11] "/history/:date"                  "/search"                        
[13] "/notifications/rules"            "/notifications/rules/:id"       

```
