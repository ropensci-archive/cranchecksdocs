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
HTTP/2 200 
cache-control: max-age=300, public
content-type: image/svg+xml; charset=utf-8
expires: Mon, 01 Mar 2021 13:01:55 GMT
server: Caddy
x-content-type-options: nosniff
content-length: 855
date: Mon, 01 Mar 2021 12:56:55 GMT

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

## Worst badges

Get badge for CRAN checks worst result by package name. :cold_sweat:

`GET [/badges/worst/{package_name}]`

`[![Worst CRAN checks results for the rhub package](https://cranchecks.info/badges/summary/rhub)](https://cranchecks.info/pkgs/rhub)` gives ![Worst CRAN checks results for the rhub package](https://cranchecks.info/badges/worst/rhub).



```shell
curl https://cranchecks.info/badges/worst/rhub
```
```yaml
HTTP/2 200 
cache-control: max-age=300, public
content-type: image/svg+xml; charset=utf-8
expires: Mon, 01 Mar 2021 13:01:56 GMT
server: Caddy
x-content-type-options: nosniff
content-length: 855
date: Mon, 01 Mar 2021 12:56:56 GMT

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

## Flavor badges

Get badge for summary of CRAN checks by flavor and package name.

`GET [/badges/flavor/{flavor}/{package}]`

:bulb: [List of platforms/flavors](https://cran.r-project.org/web/checks/check_flavors.html)

`[![CRAN checks result on r-devel-linux-x86_64-debian-clang for the rhub package](https://cranchecks.info/badges/flavor/r-devel-linux-x86_64-debian-clang/rhub)](https://cranchecks.info/pkgs/rhub)` gives [![CRAN checks result on r-devel-linux-x86_64-debian-clang for the rhub package](https://cranchecks.info/badges/flavor/r-devel-linux-x86_64-debian-clang/rhub)](https://cranchecks.info/pkgs/rhub).

```shell
curl https://cranchecks.info/badges/flavor/r-devel-linux-x86_64-debian-clang/rhub
```
```yaml
HTTP/2 200 
cache-control: max-age=300, public
content-type: image/svg+xml; charset=utf-8
expires: Mon, 01 Mar 2021 13:01:56 GMT
server: Caddy
x-content-type-options: nosniff
content-length: 855
date: Mon, 01 Mar 2021 12:56:56 GMT

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
