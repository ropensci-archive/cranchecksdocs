---
weight: 12
title: Docs
output: 
  html_document:
    keep_md: true
---



# Docs

This path redirects to the docs (hopefully here! :smile_cat:). See Headers tab.

`GET [/docs]`

```shell
curl https://cranchecks.info/docs | jq .
```
```yaml
HTTP/1.1 301 Moved Permanently
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 0
Content-Type: application/json; charset=utf8
Location: https://github.com/ropensci/cchecksapi/blob/master/docs/api_docs.md
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 13 May 2020 08:34:15 GMT

```
