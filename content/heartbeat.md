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
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 256
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 03 Jun 2020 08:15:05 GMT

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
