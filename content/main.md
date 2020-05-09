---
weight: 10
title: API Reference
---

# Introduction

## Base URL

<https://cranchecks.info/>

## R package cchecks :package:

All endpoints are supported in the [`cchecks` R client](https://docs.ropensci.org/cchecks/).

```r
remotes::install_github("ropenscilabs/cchecks")
library("cchecks")
```

## Authentication

We don't use any. :beers:

Except for notifications.  :postbox:

## HTTP methods

This is mostly a `read only` API. That is, we only allow `GET` (and `HEAD`) requests on this API.

Requests of all other types will be rejected with appropriate `405` code.

## Media types

JSON mostly, image/svg+xml for badges.

## Common parameters

limit (integer, optional)
: number of records to return. Default: 10


offset (integer, optional)
: Record number to start at. Default: 0

Above parameters can be used only on `/pkgs`, `/maintainers`, and `/pkgs/{package_name}/history`.