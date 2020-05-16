---
weight: 10
title: Root
output: 
  html_document:
    keep_md: true
---



# Root

This path redirects to /heartbeat

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
Date: Sat, 16 May 2020 14:18:36 GMT

```
