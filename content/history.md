---
weight: 20
title: History
output: 
  html_document:
    keep_md: true
---



# History

Get link for compressed json file of historical CRAN checks results for a given date - across all packages.

On success, you'll get a 302 redirect, with a temporary link (expires in 15 minutes) for the Amazon S3 file in the Location response header.

Follow redirects to make sure that you are redirected to the link.

For historical data _by package_ refer to the [package history endpoint](#packages-by-name-history).

If you don't follow redirects, you'll get a JSON body telling you to redirect to the Location header link.

```shell
curl https://cranchecks.info/history/2020-04-01 | jq .
```
```yaml
HTTP/2 302 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
location: https://cchecks-history.s3.us-west-2.amazonaws.com/2020-04-01.json.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIE65F6ZPF3JF7JTA%2F20200512%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200512T133326Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=56e23e24d880ea7941a83c5bb1d5b06d3cf82e82fc5d8eddf7be95d35c286cda
server: Caddy
x-content-type-options: nosniff
content-length: 101
date: Tue, 12 May 2020 13:33:26 GMT

```
```json
{
    "error": null,
    "message": "you hit a redirect. use the link in 'Location' header; or follow redirects"
}
```

