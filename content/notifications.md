---
weight: 22
title: Notifications
output: 
  html_document:
    keep_md: true
---



# Notifications

The Notifications endpoint allow you to manage notifications sent to your email address, so you might get aware of failing CRAN checks before CRAN emails you! :dancer: :fire:

## Notifications token

Get a token for CRAN checks notifications.

[Function of the `cchecks` R package: `cchn_register()`](https://docs.ropensci.org/cchecks/reference/cchn_register.html).

`GET [/notifications/token]`

Parameter:

email
: email address

The token is sent by email, not returned via the response body or headers!

```shell
curl https://cranchecks.info/notifications/token?email=msmaellesalmon@gmail.com | jq .
```
```yaml
HTTP/2 200 
content-type: application/json
server: Caddy
x-content-type-options: nosniff
content-length: 43
date: Sat, 16 May 2020 14:12:34 GMT

```
```json
{
    "error": null,
    "data": "success, email sent"
}
```

```r
# Interactively
cchecks::cchn_register(email = "jane.doe@cranchecksapidocs.com")
```



## Notifications rules

_This section is not about an endpoint, it is information useful for all notifications endpoint. :nerd:_

:warning: All components of a rule (e.g., status or time) are combined with 'AND'. That is,
if `status="warn"` and `time=3`, the rule is "triggered" only if both
of `status="warn"` and `time=3` components match the cran checks data.

:bulb: If you want achieve 'OR' behavior make multiple rules.

Each rule can have 1 to 4 parameters:

status (str)
: match against check status. one of: ok, note, warn, error, fail

time (int)
: days in a row the match occurs. an integer. can only go 30 days
back (history cleaned up after 30 days)

platforms (str/int)
: platform the status occurs on, including negation (e.g., "-solaris"). options:
solaris, osx, linux, windows, devel, release, patched, oldrel

regex (str)
: a regex to match against the text of an error in check_details.output

Examples in words, and their equivalents as a [Ruby hash](https://ruby-doc.org/core-2.7.0/Hash.html)

ERROR for 3 days in a row across 2 or more platforms
: `{'status' => 'error', 'time' => 3, 'platforms' => 2, 'regex' => nil}`

ERROR for 2 days in a row on all osx platforms
: `{'status' => 'error', 'time' => 2, 'platforms' => "osx", 'regex' => nil}`

ERROR for 2 days in a row on all release R versions
: `{'status' => 'error', 'time' => 2, 'platforms' => "release", 'regex' => nil}`

WARN for 4 days in a row on any platform except Solaris
: `{'status' => 'warn', 'time' => 4, 'platforms' => "-solaris", 'regex' => nil}`

WARN for 2 days in a row across 9 or more platforms
: `{'status' => 'warn', 'time' => 2, 'platforms' => 10, 'regex' => nil}`

NOTE across all osx platforms
: `{'status' => 'note', 'time' => nil, 'platforms' => "osx", 'regex' => nil}`

NOTE
: `{'status' => 'note', 'time' => nil, 'platforms' => nil, 'regex' => nil}`

error details contain regex 'install'
: `{'status' => nil, 'time' => nil, 'platforms' => nil, 'regex' => "install"}`

## Notifications create

Add new notification rules.

[Functions of the `cchecks` R package: `cchn_rule_add()` and `cchn_pkg_rule_add()`](https://docs.ropensci.org/cchecks/reference/cchn_rules.html).

```shell
curl -XPOST -H "Authorization: Bearer ***" \
 --data '[{"package": "ropenaq", "regex": "install failure"}]' \
 https://cranchecks.info/notifications/rules | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: POST
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 31
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 20 May 2020 13:30:49 GMT

```
```json
{
    "error": null,
    "data": "success"
}
```


```r
# From anywhere
```

```r
cchecks::cchn_rule_add(
  email = "msmaellesalmon@gmail.com",
  package = "ropenaq",
  regex = "install failure"
  )
```
```r
rule added for package [90mropenaq[39m
rule: [35m{"package":"ropenaq","regex":"install failure"}[39m
use [4mcchn_pkg_rule_list()/cchn_rule_list()[24m to get your rules

```
```r
[1] TRUE

```

```r
# Inside the ropenaq folder
```

```r
cchecks::cchn_pkg_rule_add(regex = "install failure")
```
```r
rule added for package [90mropenaq[39m
rule: [35m{"package":"ropenaq","regex":"install failure"}[39m
use [4mcchn_pkg_rule_list()/cchn_rule_list()[24m to get your rules

```
```r
[1] TRUE

```

## Notifications list

List your notifications rules

[Functions of the `cchecks` R package: `cchn_rule_list()` and `cchn_pkg_rule_list()`](https://docs.ropensci.org/cchecks/reference/cchn_rules.html).

`GET [/notifications/rules]`

```shell
curl https://cranchecks.info/notifications/rules -H "Authorization: Bearer ***" | jq .
```
```yaml
HTTP/1.1 200 OK
Content-Length: 1818
Content-Type: text/html;charset=utf-8
Server: Caddy
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 1; mode=block
Date: Wed, 20 May 2020 13:30:49 GMT

```
```json
{
    "error": null,
    "data": [
        {
            "id": 250,
            "package": "codemetar",
            "rule_status": "note",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 251,
            "package": "codemetar",
            "rule_status": "error",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 252,
            "package": "rhub",
            "rule_status": "note",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 253,
            "package": "rhub",
            "rule_status": "error",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 254,
            "package": "ropenaq",
            "rule_status": null,
            "rule_time": null,
            "rule_platforms": null,
            "rule_regex": "install failure"
        },
        {
            "id": 255,
            "package": "ropenaq",
            "rule_status": null,
            "rule_time": null,
            "rule_platforms": null,
            "rule_regex": "install failure"
        },
        {
            "id": 256,
            "package": "ropenaq",
            "rule_status": null,
            "rule_time": null,
            "rule_platforms": null,
            "rule_regex": "install failure"
        },
        {
            "id": 257,
            "package": "riem",
            "rule_status": "note",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 258,
            "package": "riem",
            "rule_status": "error",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 259,
            "package": "codemetar",
            "rule_status": "note",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 260,
            "package": "codemetar",
            "rule_status": "error",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 261,
            "package": "rhub",
            "rule_status": "note",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 262,
            "package": "rhub",
            "rule_status": "error",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 263,
            "package": "ropenaq",
            "rule_status": null,
            "rule_time": null,
            "rule_platforms": null,
            "rule_regex": "install failure"
        },
        {
            "id": 264,
            "package": "ropenaq",
            "rule_status": null,
            "rule_time": null,
            "rule_platforms": null,
            "rule_regex": "install failure"
        },
        {
            "id": 265,
            "package": "ropenaq",
            "rule_status": null,
            "rule_time": null,
            "rule_platforms": null,
            "rule_regex": "install failure"
        }
    ]
}
```


```r
# From anywhere
```

```r
cchecks::cchn_rule_list()
```
```r
$error
NULL

$data
    id   package rule_status rule_time rule_platforms      rule_regex
1  250 codemetar        note        NA              3            <NA>
2  251 codemetar       error        NA              3            <NA>
3  252      rhub        note        NA              3            <NA>
4  253      rhub       error        NA              3            <NA>
5  254   ropenaq        <NA>        NA           <NA> install failure
6  255   ropenaq        <NA>        NA           <NA> install failure
7  256   ropenaq        <NA>        NA           <NA> install failure
8  257      riem        note        NA              3            <NA>
9  258      riem       error        NA              3            <NA>
10 259 codemetar        note        NA              3            <NA>
11 260 codemetar       error        NA              3            <NA>
12 261      rhub        note        NA              3            <NA>
13 262      rhub       error        NA              3            <NA>
14 263   ropenaq        <NA>        NA           <NA> install failure
15 264   ropenaq        <NA>        NA           <NA> install failure
16 265   ropenaq        <NA>        NA           <NA> install failure

```

```r
# Inside the ropenaq folder
```

```r
cchecks::cchn_pkg_rule_list()
```
```r
$error
NULL

$data
    id   package rule_status rule_time rule_platforms      rule_regex
1  250 codemetar        note        NA              3            <NA>
2  251 codemetar       error        NA              3            <NA>
3  252      rhub        note        NA              3            <NA>
4  253      rhub       error        NA              3            <NA>
5  254   ropenaq        <NA>        NA           <NA> install failure
6  255   ropenaq        <NA>        NA           <NA> install failure
7  256   ropenaq        <NA>        NA           <NA> install failure
8  257      riem        note        NA              3            <NA>
9  258      riem       error        NA              3            <NA>
10 259 codemetar        note        NA              3            <NA>
11 260 codemetar       error        NA              3            <NA>
12 261      rhub        note        NA              3            <NA>
13 262      rhub       error        NA              3            <NA>
14 263   ropenaq        <NA>        NA           <NA> install failure
15 264   ropenaq        <NA>        NA           <NA> install failure
16 265   ropenaq        <NA>        NA           <NA> install failure

```

## Notifications get

Get a notifications rule by ID

[Functions of the `cchecks` R package: `cchn_rule_get()` and `cchn_pkg_rule_get()`](https://docs.ropensci.org/cchecks/reference/cchn_rules.html).

`GET [/notifications/rules/{id}]`


```r
Sys.setenv("rule_id" = cchecks::cchn_rule_list()$data$id[1])
```

```shell
curl -H "Authorization: Bearer ***" \
 https://cranchecks.info/notifications/rules/250 | jq .
```
```yaml
HTTP/1.1 200 OK
Content-Length: 131
Content-Type: text/html;charset=utf-8
Server: Caddy
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 1; mode=block
Date: Wed, 20 May 2020 13:30:50 GMT

```
```json
{
    "error": null,
    "data": {
        "id": 250,
        "package": "codemetar",
        "rule_status": "note",
        "rule_time": null,
        "rule_platforms": "3",
        "rule_regex": null
    }
}
```


```r
# From anywhere
```

```r
rule_id <- cchecks::cchn_rule_list()$data$id[1]
```

```r
rule_id
```
```r
[1] 250

```

```r
cchecks::cchn_rule_get(rule_id)
```
```r
$error
NULL

$data
$data$id
[1] 250

$data$package
[1] "codemetar"

$data$rule_status
[1] "note"

$data$rule_time
NULL

$data$rule_platforms
[1] "3"

$data$rule_regex
NULL

```

```r
# Inside the ropenaq folder
```

```r
rule_id <- cchecks::cchn_pkg_rule_list()$data$id[1]
```

```r
rule_id
```
```r
[1] 250

```

```r
cchecks::cchn_pkg_rule_get(rule_id)
```
```r
$error
NULL

$data
$data$id
[1] 250

$data$package
[1] "codemetar"

$data$rule_status
[1] "note"

$data$rule_time
NULL

$data$rule_platforms
[1] "3"

$data$rule_regex
NULL

```

## Notifications delete

Delete a notifications rule by ID

[Functions of the `cchecks` R package: `cchn_rule_delete()` and `cchn_pkg_rule_delete()`](https://docs.ropensci.org/cchecks/reference/cchn_rules.html).

`DELETE [/notifications/rules/{id}]`


```r
Sys.setenv("rule_id" = cchecks::cchn_rule_list()$data$id[1])
```

```shell
curl -XDELETE -H "Authorization: Bearer ***" \
 https://cranchecks.info/notifications/rules/250 | jq .
```
```yaml
HTTP/1.1 204 No Content
Access-Control-Allow-Methods: DELETE
Server: Caddy
X-Content-Type-Options: nosniff
Date: Wed, 20 May 2020 13:30:50 GMT

```


```r
# From anywhere
```

```r
rule_id <- cchecks::cchn_rule_list()$data$id[1]
```

```r
rule_id
```
```r
[1] 251

```

```r
cchecks::cchn_rule_delete(rule_id)
```
```r
# ok
```

```r
# Inside the ropenaq folder
```

```r
rule_id <- cchecks::cchn_pkg_rule_list()$data$id[1]
```

```r
rule_id
```
```r
[1] 252

```

```r
cchecks::cchn_pkg_rule_delete(rule_id)
```
```r
# ok
```
