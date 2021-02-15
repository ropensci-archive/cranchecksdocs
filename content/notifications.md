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
HTTP/2 200 
access-control-allow-methods: POST
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 131
date: Mon, 15 Feb 2021 12:59:46 GMT

```
```json
{
    "error": null,
    "data": [
        {
            "id": 493,
            "already_existed": false,
            "rule": "package:ropenaq, status:, flavor:, time:, regex:install failure"
        }
    ]
}
```

```shell
curl -XPOST -H "Authorization: Bearer ***" \
 --data '[{"package": "ropenaq", "regex": "install failure"}]' \
 https://cranchecks.info/notifications/rules | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: POST
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 130
date: Mon, 15 Feb 2021 12:59:46 GMT

```
```json
{
    "error": null,
    "data": [
        {
            "id": 493,
            "already_existed": true,
            "rule": "package:ropenaq, status:, flavor:, time:, regex:install failure"
        }
    ]
}
```


```r
# From anywhere
```

```r
cchecks::cchn_rule_add(
  email = "msmaellesalmon@gmail.com",
  package = "ropenaq",
  regex = "install failure",
  quiet = TRUE
  )
```
```r
$error
NULL

$data
   id already_existed
1 493            TRUE
                                                             rule
1 package:ropenaq, status:, flavor:, time:, regex:install failure

```

```r
# Inside the ropenaq folder
```

```r
cchecks::cchn_pkg_rule_add(regex = "install failure", quiet = TRUE)
```
```r
$error
NULL

$data
   id already_existed
1 493            TRUE
                                                             rule
1 package:ropenaq, status:, flavor:, time:, regex:install failure

```

```r
# A second time
```

```r
cchecks::cchn_pkg_rule_add(regex = "install failure", quiet = TRUE)
```
```r
$error
NULL

$data
   id already_existed
1 493            TRUE
                                                             rule
1 package:ropenaq, status:, flavor:, time:, regex:install failure

```

## Notifications list

List your notifications rules

[Functions of the `cchecks` R package: `cchn_rule_list()` and `cchn_pkg_rule_list()`](https://docs.ropensci.org/cchecks/reference/cchn_rules.html).

`GET [/notifications/rules]`

```shell
curl https://cranchecks.info/notifications/rules -H "Authorization: Bearer ***" | jq .
```
```yaml
HTTP/2 200 
content-type: text/html;charset=utf-8
server: Caddy
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
content-length: 143
date: Mon, 15 Feb 2021 12:59:47 GMT

```
```json
{
    "error": null,
    "data": [
        {
            "id": 493,
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
   id package rule_status rule_time rule_platforms      rule_regex
1 493 ropenaq          NA        NA             NA install failure

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
   id package rule_status rule_time rule_platforms      rule_regex
1 493 ropenaq          NA        NA             NA install failure

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
 https://cranchecks.info/notifications/rules/493 | jq .
```
```yaml
HTTP/2 200 
content-type: text/html;charset=utf-8
server: Caddy
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
content-length: 141
date: Mon, 15 Feb 2021 12:59:48 GMT

```
```json
{
    "error": null,
    "data": {
        "id": 493,
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
[1] 493

```

```r
cchecks::cchn_rule_get(rule_id)
```
```r
$error
NULL

$data
$data$id
[1] 493

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
[1] 493

```

```r
cchecks::cchn_pkg_rule_get(rule_id)
```
```r
$error
NULL

$data
$data$id
[1] 493

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
Sys.setenv("rule_id" = tail(cchecks::cchn_rule_list()$data, n = 1))
```

```
Error in Sys.setenv(rule_id = tail(cchecks::cchn_rule_list()$data, n = 1)): wrong length for argument
```

```shell
curl -XDELETE -H "Authorization: Bearer ***" \
 https://cranchecks.info/notifications/rules/493
```
```yaml
HTTP/2 204 
access-control-allow-methods: DELETE
server: Caddy
x-content-type-options: nosniff
date: Mon, 15 Feb 2021 12:59:49 GMT

```





```r
# From anywhere
```

```r
rule_id <- tail(cchecks::cchn_rule_list()$data$id, n = 1)
```

```r
rule_id
```
```r
[1] 495

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
rule_id <- tail(cchecks::cchn_rule_list()$data$id, n = 1)
```

```r
rule_id
```
```r
[1] 494

```

```r
cchecks::cchn_pkg_rule_delete(rule_id)
```
```r
# ok
```
