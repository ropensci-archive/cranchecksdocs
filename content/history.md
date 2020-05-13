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
HTTP/1.1 302 Found
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 101
Content-Type: application/json; charset=utf8
Location: https://cchecks-history.s3.us-west-2.amazonaws.com/2020-04-01.json.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIE65F6ZPF3JF7JTA%2F20200513%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200513T091528Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=befd9e49e7688a53f4cd2740568fc8f78aca74422dbfe8b0c8166d86b63ea62c
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 13 May 2020 09:15:28 GMT

```
```json
{
    "error": null,
    "message": "you hit a redirect. use the link in 'Location' header; or follow redirects"
}
```

