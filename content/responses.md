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
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 256
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 13 Jul 2020 10:09:42 GMT

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
 https://cranchecks.info/notifications/rules/348
```
```yaml
HTTP/1.1 204 No Content
Access-Control-Allow-Methods: DELETE
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 13 Jul 2020 10:09:42 GMT

```

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
Date: Mon, 13 Jul 2020 10:09:43 GMT

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
Date: Mon, 13 Jul 2020 10:09:43 GMT

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
Date: Mon, 13 Jul 2020 10:09:44 GMT

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
HTTP/1.1 405 Method Not Allowed
Content-Length: 30
Content-Type: application/json
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 13 Jul 2020 10:09:44 GMT

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
