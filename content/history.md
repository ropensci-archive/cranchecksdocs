---
weight: 20
title: History
output: 
  html_document:
    keep_md: true
---



# History

The `/history/:date` route allows GET requests only. The route is intended for fetching compressed new-line delimited JSON for an individual date, where all CRAN checks data across all packages is combined.

Parameter:

`:date`
: should be of the form `YYYY-MM-DD`, the minimal value is 2018-12-18.

A request to `/history/:date` leads to a redirect (http status 302) and a returned JSON body with a message telling the user to follow the link in the `Location` response header in case they aren't familiar with redirects. The link to follow is a temporary Amazon S3 link to the JSON file for the given date. 

One can automatically get the link to the JSON file by following the redirect. You can do this in curl with the `-L` flag, or in R by using the `followlocation` curl option like `followlocation=1`. 

An important note is the data in the JSON file is NOT valid JSON as an entire entity. Each line of the file IS valid JSON; called newline delimited JSON ([NDJSON](http://ndjson.org/)). You don't have to worry about these details if you use `cchecks::cch_history()`, which takes care of downloading the file and reading in the compressed NDJSON. On the command line, you can do e.g, download the file, save to a `.json.gz` gzip-compressed file extension, then in the next line decompress the file with `gzip`, then pipe to `jq`, and use `head` to get the first 10 lines


```shell
curl -vL https://cranchecks.info/history/2020-04-01 > 2020-04-01.json.gz
gzip -dc 2020-04-01.json.gz | jq . | head -n 2
```

```shell
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0*   Trying 52.34.4.0:443...
* Connected to cranchecks.info (52.34.4.0) port 443 (#0)
* ALPN, offering http/1.1
* TLS 1.2 connection using TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
* Server certificate: cranchecks.info
* Server certificate: Let's Encrypt Authority X3
* Server certificate: DST Root CA X3
> GET /history/2020-04-01 HTTP/1.1
> Host: cranchecks.info
> User-Agent: curl/7.73.0
> Accept: */*
> 
* Mark bundle as not supporting multiuse
< HTTP/1.1 302 Found
< Access-Control-Allow-Methods: HEAD, GET
< Access-Control-Allow-Origin: *
< Cache-Control: public, must-revalidate, max-age=60
< Content-Length: 101
< Content-Type: application/json; charset=utf8
< Location: https://cchecks-history.s3.us-west-2.amazonaws.com/2020-04-01.json.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIE65F6ZPF3JF7JTA%2F20201123%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20201123T124210Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=ada1e64d9a98ce6b8d9b5e07fbf0f2987f524076df64866b64b39883250f1a4e
< Server: Caddy
< X-Content-Type-Options: nosniff
< Date: Mon, 23 Nov 2020 12:42:10 GMT
< 
* Ignoring the response-body
{ [101 bytes data]
100   101  100   101    0     0    280      0 --:--:-- --:--:-- --:--:--   280
* Connection #0 to host cranchecks.info left intact
* Issue another request to this URL: 'https://cchecks-history.s3.us-west-2.amazonaws.com/2020-04-01.json.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIE65F6ZPF3JF7JTA%2F20201123%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20201123T124210Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=ada1e64d9a98ce6b8d9b5e07fbf0f2987f524076df64866b64b39883250f1a4e'
*   Trying 52.218.253.65:443...
* Connected to cchecks-history.s3.us-west-2.amazonaws.com (52.218.253.65) port 443 (#1)
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0* ALPN, offering http/1.1
* TLS 1.2 connection using TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
* ALPN, server did not agree to a protocol
* Server certificate: *.s3-us-west-2.amazonaws.com
* Server certificate: DigiCert Baltimore CA-2 G2
* Server certificate: Baltimore CyberTrust Root
> GET /2020-04-01.json.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIE65F6ZPF3JF7JTA%2F20201123%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20201123T124210Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=ada1e64d9a98ce6b8d9b5e07fbf0f2987f524076df64866b64b39883250f1a4e HTTP/1.1
> Host: cchecks-history.s3.us-west-2.amazonaws.com
> User-Agent: curl/7.73.0
> Accept: */*
> 
* Mark bundle as not supporting multiuse
< HTTP/1.1 200 OK
< x-amz-id-2: h/Nc21KD5tUc8AA+PL2V8/WYLckY/T9MUCblH9LY1EXmOs86MICz9de1jMLBCSJNOeIFyyH+iU8=
< x-amz-request-id: 9008BBE17001ABB9
< Date: Mon, 23 Nov 2020 12:42:11 GMT
< Last-Modified: Wed, 01 Apr 2020 16:36:04 GMT
< ETag: "a7d74593672aa52dace5cd9e62db9351"
< Content-Encoding: gzip
< Accept-Ranges: bytes
< Content-Type: application/json
< Content-Length: 5180606
< Server: AmazonS3
< 
{ [7801 bytes data]
100 5059k  100 5059k    0     0  3642k      0  0:00:01  0:00:01 --:--:-- 5382k
* Connection #1 to host cchecks-history.s3.us-west-2.amazonaws.com left intact
{
  "package": "localIV",

```

:warning: :bulb: For historical data _by package_ refer to the [package history endpoint](#packages-by-name-history).


```r
cchecks::cch_history("2020-04-01")
```
```r
# opening file input connection.
```
```r
 Found 500 records... Found 1000 records... Found 1500 records... Found 2000 records... Found 2500 records... Found 3000 records... Found 3500 records... Found 4000 records... Found 4500 records... Found 5000 records... Found 5500 records... Found 6000 records... Found 6500 records... Found 7000 records... Found 7500 records... Found 8000 records... Found 8500 records... Found 9000 records... Found 9500 records... Found 10000 records... Found 10500 records... Found 11000 records... Found 11500 records... Found 12000 records... Found 12500 records... Found 13000 records... Found 13500 records... Found 14000 records... Found 14500 records... Found 15000 records... Found 15500 records... Found 16000 records... Found 16327 records... Imported 16327 records. Simplifying...

```
```r
# closing file input connection.
```
```r
# A tibble: 16,327 x 5
   package  summary            checks              check_details             date_updated 
   <chr>    <chr>              <chr>               <chr>                     <chr>        
 1 localIV  "{\"any\":false,\… "[{\"flavor\":\"r-… "null"                    2020-04-01 1…
 2 di       "{\"any\":false,\… "[{\"flavor\":\"r-… "null"                    2020-04-01 1…
 3 GAR      "{\"any\":true,\"… "[{\"flavor\":\"r-… "{\"version\":\"1.1\",\"… 2020-04-01 1…
 4 MetABEL  "{\"any\":true,\"… "[{\"flavor\":\"r-… "{\"version\":\"0.2-0\",… 2020-04-01 1…
 5 quantab… "{\"any\":false,\… "[{\"flavor\":\"r-… "null"                    2020-04-01 1…
 6 ChIPtest "{\"any\":true,\"… "[{\"flavor\":\"r-… "{\"version\":\"1.0\",\"… 2020-04-01 1…
 7 TSF      "{\"any\":false,\… "[{\"flavor\":\"r-… "null"                    2020-04-01 1…
 8 apercu   "{\"any\":true,\"… "[{\"flavor\":\"r-… "{\"version\":\"0.2.4\",… 2020-04-01 1…
 9 SPRT     "{\"any\":true,\"… "[{\"flavor\":\"r-… "{\"version\":\"1.0\",\"… 2020-04-01 1…
10 W2CWM2C  "{\"any\":false,\… "[{\"flavor\":\"r-… "null"                    2020-04-01 1…
# … with 16,317 more rows

```


