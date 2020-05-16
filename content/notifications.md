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
HTTP/1.1 401 Unauthorized
Content-Length: 106
Content-Type: application/json
Server: Caddy
Www-Authenticate: Bearer
X-Content-Type-Options: nosniff
Date: Sat, 16 May 2020 14:32:40 GMT

```
```json
{
    "error": {
        "message": "token not found; get a token first with the /notifications/token route"
    },
    "data": null
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

```
Error: (401) token not found; get a token first with the /notifications/token route
```

```r
# Inside the ropenaq folder
```

```r
cchecks::cchn_pkg_rule_add(regex = "install failure")
```

```
Error: (401) token not found; get a token first with the /notifications/token route
```

## Notifications list

List your notifications rules

[Functions of the `cchecks` R package: `cchn_rule_list()` and `cchn_pkg_rule_list()`](https://docs.ropensci.org/cchecks/reference/cchn_rules.html).

`GET [/notifications/rules]`

```shell
curl https://cranchecks.info/notifications/rules -H "Authorization: Bearer ***" | jq .
```
```yaml
HTTP/1.1 401 Unauthorized
Content-Length: 106
Content-Type: application/json
Server: Caddy
Www-Authenticate: Bearer
X-Content-Type-Options: nosniff
Date: Sat, 16 May 2020 14:32:41 GMT

```
```json
{
    "error": {
        "message": "token not found; get a token first with the /notifications/token route"
    },
    "data": null
}
```


```r
# From anywhere
```

```r
cchecks::cchn_rule_list()
```

```
Error: (401) token not found; get a token first with the /notifications/token route
```

```r
# Inside the ropenaq folder
```

```r
cchecks::cchn_pkg_rule_list()
```

```
Error: (401) token not found; get a token first with the /notifications/token route
```

## Notifications get

Get a notifications rule by ID

[Functions of the `cchecks` R package: `cchn_rule_get()` and `cchn_pkg_rule_get()`](https://docs.ropensci.org/cchecks/reference/cchn_rules.html).

`GET [/notifications/rules/{id}]`


```r
Sys.setenv("rule_id" = cchecks::cchn_rule_list()$data$id[1])
```

```
Error: (401) token not found; get a token first with the /notifications/token route
```

```shell
curl -H "Authorization: Bearer ***" \
 https://cranchecks.info/notifications/rules/ | jq .
```
```yaml
HTTP/1.1 401 Unauthorized
Content-Length: 106
Content-Type: application/json
Server: Caddy
Www-Authenticate: Bearer
X-Content-Type-Options: nosniff
Date: Sat, 16 May 2020 14:32:42 GMT

```
```json
{
    "error": {
        "message": "token not found; get a token first with the /notifications/token route"
    },
    "data": null
}
```


```r
# From anywhere
```

```r
rule_id <- cchecks::cchn_rule_list()$data$id[1]
```

```
Error: (401) token not found; get a token first with the /notifications/token route
```

```r
rule_id
```

```
Error in eval(expr, envir, enclos): object 'rule_id' not found
```

```r
cchecks::cchn_rule_get(rule_id)
```

```
Error in assert(id, c("integer", "numeric")): object 'rule_id' not found
```

```r
# Inside the ropenaq folder
```

```r
rule_id <- cchecks::cchn_pkg_rule_list()$data$id[1]
```

```
Error: (401) token not found; get a token first with the /notifications/token route
```

```r
rule_id
```

```
Error in eval(expr, envir, enclos): object 'rule_id' not found
```

```r
cchecks::cchn_pkg_rule_get(rule_id)
```

```
Error in assert(id, c("integer", "numeric")): object 'rule_id' not found
```

## Notifications delete

Delete a notifications rule by ID

[Functions of the `cchecks` R package: `cchn_rule_delete()` and `cchn_pkg_rule_delete()`](https://docs.ropensci.org/cchecks/reference/cchn_rules.html).

`DELETE [/notifications/rules/{id}]`


```r
Sys.setenv("rule_id" = cchecks::cchn_rule_list()$data$id[1])
```

```
Error: (401) token not found; get a token first with the /notifications/token route
```

```shell
curl -XDELETE -H "Authorization: Bearer ***" \
 https://cranchecks.info/notifications/rules/ | jq .
```
```yaml
HTTP/1.1 405 Method Not Allowed
Content-Length: 30
Content-Type: application/json
Server: Caddy
X-Content-Type-Options: nosniff
Date: Sat, 16 May 2020 14:32:42 GMT

```
```json
{
    "error": "Method Not Allowed"
}
```


```r
# From anywhere
```

```r
rule_id <- cchecks::cchn_rule_list()$data$id[1]
```

```
Error: (401) token not found; get a token first with the /notifications/token route
```

```r
rule_id
```

```
Error in eval(expr, envir, enclos): object 'rule_id' not found
```

```r
cchecks::cchn_rule_delete(rule_id)
```

```
Error in assert(id, c("integer", "numeric")): object 'rule_id' not found
```

```r
# Inside the ropenaq folder
```

```r
rule_id <- cchecks::cchn_pkg_rule_list()$data$id[1]
```

```
Error: (401) token not found; get a token first with the /notifications/token route
```

```r
rule_id
```

```
Error in eval(expr, envir, enclos): object 'rule_id' not found
```

```r
cchecks::cchn_pkg_rule_delete(rule_id)
```

```
Error in assert(id, c("integer", "numeric")): object 'rule_id' not found
```
