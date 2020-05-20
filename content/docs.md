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
HTTP/2 301 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
location: https://github.com/ropensci/cchecksapi/blob/master/docs/api_docs.md
server: Caddy
x-content-type-options: nosniff
content-length: 0
date: Wed, 20 May 2020 13:24:36 GMT

```
