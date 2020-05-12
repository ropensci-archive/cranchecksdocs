---
weight: 15
title: Badges
output: 
  html_document:
    keep_md: true
---



# Badges

Get packages based checks.

## Summary badges

Get badge for CRAN checks summary by package name.

`GET [/badges/summary/{package_name}]`

![Badges example, summary for the rhub package](https://cranchecks.info/badges/summary/rhub)

```shell
curl https://cranchecks.info/badges/summary/rhub | jq .
```
```yaml
HTTP/2 200 
cache-control: max-age=300, public
content-type: image/svg+xml; charset=utf-8
expires: Tue, 12 May 2020 11:15:22 GMT
server: Caddy
x-content-type-options: nosniff
content-length: 855
date: Tue, 12 May 2020 11:10:22 GMT

```
```xml
<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" width="70" height="20">
  <linearGradient id="b" x2="0" y2="100%">
    <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
    <stop offset="1" stop-opacity=".1"/>
  </linearGradient>
  <mask id="a">
    <rect width="70" height="20" rx="3" fill="#fff"/>
  </mask>
  <g mask="url(#a)">
    <path fill="#555" d="M0 0h43v20H0z"/>
    <path fill="#4c1" d="M43 0h46.5v20H43z"/>
    <path fill="url(#b)" d="M0 0h70v20H0z"/>
  </g>
  <g fill="#fff" text-anchor="middle" font-family="DejaVu Sans,Verdana,Geneva,sans-serif" font-size="11">
    <text x="21.5" y="15" fill="#010101" fill-opacity=".3">
      CRAN
    </text>
    <text x="21.5" y="14">
      CRAN
    </text>
    <text x="55.5" y="15" fill="#010101" fill-opacity=".3">
      OK
    </text>
    <text x="55.5" y="14">
      OK
    </text>
  </g>
</svg>
```
