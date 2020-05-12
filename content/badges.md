---
weight: 15
title: Badges
output: 
  html_document:
    keep_md: true
---



# Badges

Get packages based checks to display in your package README for instance.

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
expires: Tue, 12 May 2020 13:36:01 GMT
server: Caddy
x-content-type-options: nosniff
content-length: 855
date: Tue, 12 May 2020 13:31:01 GMT

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

## "Worst" badges

Get badge for CRAN checks worst result by package name. :cold_sweat:

`GET [/badges/worst/{package_name}]`

![Badges example, worst for the stringi package](https://cranchecks.info/badges/worst/stringi)

```shell
curl https://cranchecks.info/badges/worst/stringi | jq .
```
```yaml
HTTP/2 200 
cache-control: max-age=300, public
content-type: image/svg+xml; charset=utf-8
expires: Tue, 12 May 2020 13:36:02 GMT
server: Caddy
x-content-type-options: nosniff
content-length: 862
date: Tue, 12 May 2020 13:31:02 GMT

```
```xml
<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" width="82" height="20">
  <linearGradient id="b" x2="0" y2="100%">
    <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
    <stop offset="1" stop-opacity=".1"/>
  </linearGradient>
  <mask id="a">
    <rect width="82" height="20" rx="3" fill="#fff"/>
  </mask>
  <g mask="url(#a)">
    <path fill="#555" d="M0 0h43v20H0z"/>
    <path fill="#007ec6" d="M43 0h58.5v20H43z"/>
    <path fill="url(#b)" d="M0 0h82v20H0z"/>
  </g>
  <g fill="#fff" text-anchor="middle" font-family="DejaVu Sans,Verdana,Geneva,sans-serif" font-size="11">
    <text x="21.5" y="15" fill="#010101" fill-opacity=".3">
      CRAN
    </text>
    <text x="21.5" y="14">
      CRAN
    </text>
    <text x="61.5" y="15" fill="#010101" fill-opacity=".3">
      NOTE
    </text>
    <text x="61.5" y="14">
      NOTE
    </text>
  </g>
</svg>
```

## Flavor badges

Get badge for summary of CRAN checks by flavor and package name.

`GET [/badges/flavor/{flavor}/{package}]`

[List of platforms/flavors](https://cran.r-project.org/web/checks/check_flavors.html)

![Badges example, worst for the stringi package](https://cranchecks.info/badges/flavor/r-devel-linux-x86_64-debian-clang/rhub)

```shell
curl https://cranchecks.info/badges/flavor/r-devel-linux-x86_64-debian-clang/rhub | jq .
```
```yaml
HTTP/2 200 
cache-control: max-age=300, public
content-type: image/svg+xml; charset=utf-8
expires: Tue, 12 May 2020 13:36:03 GMT
server: Caddy
x-content-type-options: nosniff
content-length: 855
date: Tue, 12 May 2020 13:31:03 GMT

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
