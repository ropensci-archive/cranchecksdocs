---
weight: 10
title: General response description
---

## Response codes

* 200 (OK) - request good!
* 204 (No Content) - given on a delete request, indicating success, response body should be empty
* 302 (Found) - the root `/`, redirects to `/heartbeat`, and `/docs` redirects to these documents
* 400 (Bad request) - When you have a malformed request, fix it and try again
* 404 (Not found) - When you request a route that does not exist, fix it and try again
* 405 (Method not allowed) - When you use a prohibited HTTP method (we only allow `GET` and `HEAD`)
* 500 (Internal server error) - Server got itself in trouble; get in touch with us. (in [Issues](https://github.com/ropensci/roapi/issues))


`400` responses will look something like

```yaml
HTTP/1.1 400 Bad Request
Cache-Control: public, must-revalidate, max-age=60
Connection: close
Content-Length: 61
Content-Type: application/json
Date: Thu, 26 Feb 2015 23:27:57 GMT
Server: nginx/1.7.9
Status: 400 Bad Request
X-Content-Type-Options: nosniff

{
    "error": "invalid request",
    "message": "maximum limit is 5000"
}
```

`404` responses will look something like

```yaml
HTTP/1.1 404 Not Found
Cache-Control: public, must-revalidate, max-age=60
Connection: close
Content-Length: 27
Content-Type: application/json
Date: Thu, 26 Feb 2015 23:27:16 GMT
Server: nginx/1.7.9
Status: 404 Not Found
X-Cascade: pass
X-Content-Type-Options: nosniff

{
    "error": "route not found"
}
```

`405` responses will look something like (with an empty body)

```yaml
HTTP/1.1 405 Method Not Allowed
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Connection: close
Content-Length: 0
Content-Type: application/json; charset=utf8
Date: Mon, 27 Jul 2015 20:48:27 GMT
Server: nginx/1.9.3
Status: 405 Method Not Allowed
X-Content-Type-Options: nosniff
```

`500` responses will look something like

```yaml
HTTP/1.1 500 Internal Server Error
Cache-Control: public, must-revalidate, max-age=60
Connection: close
Content-Length: 24
Content-Type: application/json
Date: Thu, 26 Feb 2015 23:19:57 GMT
Server: nginx/1.7.9
Status: 500 Internal Server Error
X-Content-Type-Options: nosniff

{
    "error": "server error"
}
```

## Response headers

`200` response header will look something like

```yaml
HTTP/2 200
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 2823
date: Thu, 17 May 2018 21:40:32 GMT
```

## Badge Response headers

`200` response header will look something like

```yaml
HTTP/2 200
cache-control: max-age=300, public
content-type: image/svg+xml; charset=utf-8
expires: Thu, 17 May 2018 21:39:42 GMT
server: Caddy
x-content-type-options: nosniff
content-length: 855
date: Thu, 17 May 2018 21:39:41 GMT
```

## Response bodies

Response bodies generally look like:

```json
{

    "error": null,
    "data": {
        "_id": "crul",
        "package": "crul",
        "url": "https://cloud.r-project.org/web/checks/check_results_crul.html",
        "summary": {
            "any": false,
            "ok": 12,
            "note": 0,
            "warn": 0,
            "error": 0,
            "fail": 0
        },
        "checks": [
            {
                "flavor": "r-devel-linux-x86_64-debian-clang",
                "version": "0.7.4",
                "tinstall": 6.81,
                "tcheck": 34.84,
                "ttotal": 41.65,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/crul-00check.html"
            },
            {
                "flavor": "r-devel-linux-x86_64-debian-gcc",
                "version": "0.7.4",
                "tinstall": 5.93,
                "tcheck": 28.31,
                "ttotal": 34.24,
                "status": "OK",
                "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/crul-00check.html"
            },
            ...<cutoff>
        ],
        "check_details": null,
        "date_updated": "2019-06-03T15:02:32.258Z"
    }

}
```

Successful requests have 4 slots:

* found: Number records found
* count: Number records returned
* offset: offset value
* error: If an error did not occur this is `null`, otherwise, an error message.
* data: The hash of data if any data returned. If no data found, this is an empty hash (hash of length zero)


## Response svg

svg response bodies generally look like:

```xml
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
  <g fill="#fff" text-anchor="middle"
     font-family="DejaVu Sans,Verdana,Geneva,sans-serif" font-size="11">
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

## Rule Response bodies

```json
{
  "error": null,
  "data": [
    {
      "id": 7,
      "user_id": 1,
      "package": "citecorp",
      "rule_status": "error",
      "rule_time": 2,
      "rule_platforms": null,
      "rule_regex": null
    },
    {
      "id": 8,
      "user_id": 1,
      "package": "conditionz",
      "rule_status": "error",
      "rule_time": 2,
      "rule_platforms": null,
      "rule_regex": null
    }
  ]
}
```

## Media Types

We serve up only JSON in this API. All responses will have `Content-Type: application/json; charset=utf8`.

## Pagination

The query parameters `limit` (default = 10) and `offset` (default = 0) can be sent.

The response body from the server will include data on records found in `found` and number returned in `count`:

* `"found": 1056`
* `"count": 10`