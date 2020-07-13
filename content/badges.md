---
weight: 15
title: Badges
output: 
  html_document:
    keep_md: true
---



# Badges

Get packages based checks to display in your package README for instance.

In a Markdown-based README to add a badge you just need something like `![alt text](https://cranchecks.info/badges/summary/{package})`. 

You might want the badge to point at either the CRAN results page or the CRAN checks API page i.e. either

`[![Worst CRAN checks result for the rhub package](https://cranchecks.info/badges/worst/rhub)](https://cran.r-project.org/web/checks/check_results_rhub.html)` to obtain [![Badges example, worst for the rhub package](https://cranchecks.info/badges/worst/rhub)](https://cran.r-project.org/web/checks/check_results_rhub.html).

or

`[![Worst CRAN checks result for the rhub package](https://cranchecks.info/badges/worst/rhub)](https://cranchecks.info/pkgs/rhub)` to obtain [![Badges example, worst for the rhub package](https://cranchecks.info/badges/worst/rhub)](https://cranchecks.info/pkgs/rhub).

## Summary badges

Get badge for CRAN checks summary by package name.

`GET [/badges/summary/{package_name}]`

`[![Summary of CRAN checks results for the rhub package](https://cranchecks.info/badges/summary/rhub)](https://cranchecks.info/pkgs/rhub)` gives [![Summary of CRAN checks results for the rhub package](https://cranchecks.info/badges/summary/rhub)](https://cranchecks.info/pkgs/rhub).

```shell
curl https://cranchecks.info/badges/summary/rhub
```
```yaml
HTTP/1.1 200 OK
Cache-Control: max-age=300, public
Content-Length: 866
Content-Type: image/svg+xml; charset=utf-8
Expires: Mon, 13 Jul 2020 12:42:38 GMT
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 13 Jul 2020 12:37:38 GMT

```
```xml
<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" width="94" height="20">
  <linearGradient id="b" x2="0" y2="100%">
    <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
    <stop offset="1" stop-opacity=".1"/>
  </linearGradient>
  <mask id="a">
    <rect width="94" height="20" rx="3" fill="#fff"/>
  </mask>
  <g mask="url(#a)">
    <path fill="#555" d="M0 0h43v20H0z"/>
    <path fill="#e05d44" d="M43 0h70.5v20H43z"/>
    <path fill="url(#b)" d="M0 0h94v20H0z"/>
  </g>
  <g fill="#fff" text-anchor="middle" font-family="DejaVu Sans,Verdana,Geneva,sans-serif" font-size="11">
    <text x="21.5" y="15" fill="#010101" fill-opacity=".3">
      CRAN
    </text>
    <text x="21.5" y="14">
      CRAN
    </text>
    <text x="67.5" y="15" fill="#010101" fill-opacity=".3">
      Not OK
    </text>
    <text x="67.5" y="14">
      Not OK
    </text>
  </g>
</svg>
```

## Worst badges

Get badge for CRAN checks worst result by package name. :cold_sweat:

`GET [/badges/worst/{package_name}]`

`[![Worst CRAN checks results for the rhub package](https://cranchecks.info/badges/summary/rhub)](https://cranchecks.info/pkgs/rhub)` gives ![Worst CRAN checks results for the rhub package](https://cranchecks.info/badges/worst/rhub).



```shell
curl https://cranchecks.info/badges/worst/rhub
```
```yaml
HTTP/1.1 200 OK
Cache-Control: max-age=300, public
Content-Length: 864
Content-Type: image/svg+xml; charset=utf-8
Expires: Mon, 13 Jul 2020 12:42:39 GMT
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 13 Jul 2020 12:37:39 GMT

```
```xml
<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" width="88" height="20">
  <linearGradient id="b" x2="0" y2="100%">
    <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
    <stop offset="1" stop-opacity=".1"/>
  </linearGradient>
  <mask id="a">
    <rect width="88" height="20" rx="3" fill="#fff"/>
  </mask>
  <g mask="url(#a)">
    <path fill="#555" d="M0 0h43v20H0z"/>
    <path fill="#e05d44" d="M43 0h64.5v20H43z"/>
    <path fill="url(#b)" d="M0 0h88v20H0z"/>
  </g>
  <g fill="#fff" text-anchor="middle" font-family="DejaVu Sans,Verdana,Geneva,sans-serif" font-size="11">
    <text x="21.5" y="15" fill="#010101" fill-opacity=".3">
      CRAN
    </text>
    <text x="21.5" y="14">
      CRAN
    </text>
    <text x="64.5" y="15" fill="#010101" fill-opacity=".3">
      ERROR
    </text>
    <text x="64.5" y="14">
      ERROR
    </text>
  </g>
</svg>
```

## Flavor badges

Get badge for summary of CRAN checks by flavor and package name.

`GET [/badges/flavor/{flavor}/{package}]`

:bulb: [List of platforms/flavors](https://cran.r-project.org/web/checks/check_flavors.html)

`[![CRAN checks result on r-devel-linux-x86_64-debian-clang for the rhub package](https://cranchecks.info/badges/flavor/r-devel-linux-x86_64-debian-clang/rhub)](https://cranchecks.info/pkgs/rhub)` gives [![CRAN checks result on r-devel-linux-x86_64-debian-clang for the rhub package](https://cranchecks.info/badges/flavor/r-devel-linux-x86_64-debian-clang/rhub)](https://cranchecks.info/pkgs/rhub).

```shell
curl https://cranchecks.info/badges/flavor/r-devel-linux-x86_64-debian-clang/rhub
```
```yaml
HTTP/1.1 200 OK
Cache-Control: max-age=300, public
Content-Length: 855
Content-Type: image/svg+xml; charset=utf-8
Expires: Mon, 13 Jul 2020 12:42:39 GMT
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 13 Jul 2020 12:37:39 GMT

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
