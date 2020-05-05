---
weight: 10
title: API Reference
---

# Introduction

## Base URL

<https://cranchecks.info/>

## R package cchecks

All endpoints are supported in the `cchecks` R client.

```r
remotes::install_github("ropenscilabs/cchecks")
library("cchecks")
```

## HTTP methods

This is a `read only` API. That is, we only allow `GET` (and `HEAD`) requests on this API.

Requests of all other types will be rejected with appropriate `405` code.