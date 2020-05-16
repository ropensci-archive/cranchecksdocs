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


```r
rule added for package [90mriem[39m
rule: [35m{"package":"riem","status":"note","platforms":3}[39m
use [4mcchn_pkg_rule_list()/cchn_rule_list()[24m to get your rules

```
```r
[1] TRUE

```
```r
rule added for package [90mriem[39m
rule: [35m{"package":"riem","status":"error","platforms":3}[39m
use [4mcchn_pkg_rule_list()/cchn_rule_list()[24m to get your rules

```
```r
[1] TRUE

```
```r
rule added for package [90mcodemetar[39m
rule: [35m{"package":"codemetar","status":"note","platforms":3}[39m
use [4mcchn_pkg_rule_list()/cchn_rule_list()[24m to get your rules

```
```r
[1] TRUE

```
```r
rule added for package [90mcodemetar[39m
rule: [35m{"package":"codemetar","status":"error","platforms":3}[39m
use [4mcchn_pkg_rule_list()/cchn_rule_list()[24m to get your rules

```
```r
[1] TRUE

```
```r
rule added for package [90mrhub[39m
rule: [35m{"package":"rhub","status":"note","platforms":3}[39m
use [4mcchn_pkg_rule_list()/cchn_rule_list()[24m to get your rules

```
```r
[1] TRUE

```
```r
rule added for package [90mrhub[39m
rule: [35m{"package":"rhub","status":"error","platforms":3}[39m
use [4mcchn_pkg_rule_list()/cchn_rule_list()[24m to get your rules

```
```r
[1] TRUE

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
Date: Sat, 16 May 2020 15:01:14 GMT

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
Content-Length: 1477
Content-Type: text/html;charset=utf-8
Server: Caddy
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 1; mode=block
Date: Sat, 16 May 2020 15:01:15 GMT

```
```json
{
    "error": null,
    "data": [
        {
            "id": 183,
            "package": "ropenaq",
            "rule_status": null,
            "rule_time": null,
            "rule_platforms": null,
            "rule_regex": "install failure"
        },
        {
            "id": 184,
            "package": "ropenaq",
            "rule_status": null,
            "rule_time": null,
            "rule_platforms": null,
            "rule_regex": "install failure"
        },
        {
            "id": 185,
            "package": "riem",
            "rule_status": "note",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 186,
            "package": "riem",
            "rule_status": "error",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 187,
            "package": "riem",
            "rule_status": "note",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 188,
            "package": "riem",
            "rule_status": "error",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 189,
            "package": "codemetar",
            "rule_status": "note",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 190,
            "package": "codemetar",
            "rule_status": "error",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 191,
            "package": "rhub",
            "rule_status": "note",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 192,
            "package": "rhub",
            "rule_status": "error",
            "rule_time": null,
            "rule_platforms": "3",
            "rule_regex": null
        },
        {
            "id": 193,
            "package": "ropenaq",
            "rule_status": null,
            "rule_time": null,
            "rule_platforms": null,
            "rule_regex": "install failure"
        },
        {
            "id": 194,
            "package": "ropenaq",
            "rule_status": null,
            "rule_time": null,
            "rule_platforms": null,
            "rule_regex": "install failure"
        },
        {
            "id": 195,
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
1  183   ropenaq        <NA>        NA           <NA> install failure
2  184   ropenaq        <NA>        NA           <NA> install failure
3  185      riem        note        NA              3            <NA>
4  186      riem       error        NA              3            <NA>
5  187      riem        note        NA              3            <NA>
6  188      riem       error        NA              3            <NA>
7  189 codemetar        note        NA              3            <NA>
8  190 codemetar       error        NA              3            <NA>
9  191      rhub        note        NA              3            <NA>
10 192      rhub       error        NA              3            <NA>
11 193   ropenaq        <NA>        NA           <NA> install failure
12 194   ropenaq        <NA>        NA           <NA> install failure
13 195   ropenaq        <NA>        NA           <NA> install failure

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
1  183   ropenaq        <NA>        NA           <NA> install failure
2  184   ropenaq        <NA>        NA           <NA> install failure
3  185      riem        note        NA              3            <NA>
4  186      riem       error        NA              3            <NA>
5  187      riem        note        NA              3            <NA>
6  188      riem       error        NA              3            <NA>
7  189 codemetar        note        NA              3            <NA>
8  190 codemetar       error        NA              3            <NA>
9  191      rhub        note        NA              3            <NA>
10 192      rhub       error        NA              3            <NA>
11 193   ropenaq        <NA>        NA           <NA> install failure
12 194   ropenaq        <NA>        NA           <NA> install failure
13 195   ropenaq        <NA>        NA           <NA> install failure

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
 https://cranchecks.info/notifications/rules/183 | jq .
```
```yaml
HTTP/1.1 200 OK
Content-Length: 141
Content-Type: text/html;charset=utf-8
Server: Caddy
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 1; mode=block
Date: Sat, 16 May 2020 15:01:16 GMT

```
```json
{
    "error": null,
    "data": {
        "id": 183,
        "package": "ropenaq",
        "rule_status": null,
        "rule_time": null,
        "rule_platforms": null,
        "rule_regex": "install failure"
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
[1] 183

```

```r
cchecks::cchn_rule_get(rule_id)
```
```r
$error
NULL

$data
$data$id
[1] 183

$data$package
[1] "ropenaq"

$data$rule_status
NULL

$data$rule_time
NULL

$data$rule_platforms
NULL

$data$rule_regex
[1] "install failure"

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
[1] 183

```

```r
cchecks::cchn_pkg_rule_get(rule_id)
```
```r
$error
NULL

$data
$data$id
[1] 183

$data$package
[1] "ropenaq"

$data$rule_status
NULL

$data$rule_time
NULL

$data$rule_platforms
NULL

$data$rule_regex
[1] "install failure"

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
 https://cranchecks.info/notifications/rules/183 | jq .
```
```yaml
HTTP/1.1 204 No Content
Access-Control-Allow-Methods: DELETE
Server: Caddy
X-Content-Type-Options: nosniff
Date: Sat, 16 May 2020 15:01:17 GMT

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
[1] 184

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
[1] 185

```

```r
cchecks::cchn_pkg_rule_delete(rule_id)
```
```r
# ok
```
