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
date: Mon, 21 Dec 2020 13:01:44 GMT

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

## 204 (No Content) 

Given on a delete request, indicating success, response body should be empty.





```shell
curl -XDELETE -H "Authorization: Bearer ***" \
 https://cranchecks.info/notifications/rules/467
```
```yaml
HTTP/2 204 
access-control-allow-methods: DELETE
server: Caddy
x-content-type-options: nosniff
date: Mon, 21 Dec 2020 13:01:45 GMT

```

## 302 (Found) 

The root `/`, redirects to `/heartbeat`, and `/docs` redirects to what you're reading right now.

```shell
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
date: Mon, 21 Dec 2020 13:01:45 GMT

```

## 400 (Bad request)

When you have a malformed request, fix it and try again

```shell
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
date: Mon, 21 Dec 2020 13:01:45 GMT

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
HTTP/2 404 
content-type: application/json
server: Caddy
x-cascade: pass
x-content-type-options: nosniff
content-length: 27
date: Mon, 21 Dec 2020 13:01:46 GMT

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
curl -XDELETE https://cranchecks.info/pkgs/ropenaq/
```
```yaml
HTTP/2 405 
content-type: application/json
server: Caddy
x-content-type-options: nosniff
content-length: 30
date: Mon, 21 Dec 2020 13:01:46 GMT

```
```json
{
    "error": "Method Not Allowed"
}
```


## 500 (Internal server error) 

Server got itself in trouble :scream: :sob:; [get in touch with us](https://github.com/ropenscilabs/cchecksapi/issues).

```yaml
HTTP/2 500
date: Thu, 21 May 2020 16:53:33 GMT
content-type: text/html; charset=utf-8
content-length: 0
```
