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
: should be of the form `YYYY-MM-DD`

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
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0*   Trying 52.34.4.0...
* TCP_NODELAY set
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0* Connected to cranchecks.info (52.34.4.0) port 443 (#0)
* ALPN, offering h2
* ALPN, offering http/1.1
* successfully set certificate verify locations:
*   CAfile: /etc/ssl/certs/ca-certificates.crt
  CApath: /etc/ssl/certs
} [5 bytes data]
* TLSv1.3 (OUT), TLS handshake, Client hello (1):
} [512 bytes data]
* TLSv1.3 (IN), TLS handshake, Server hello (2):
{ [122 bytes data]
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
{ [1 bytes data]
* TLSv1.3 (IN), TLS handshake, Unknown (8):
{ [15 bytes data]
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
{ [1 bytes data]
* TLSv1.3 (IN), TLS handshake, Certificate (11):
{ [2361 bytes data]
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
{ [1 bytes data]
* TLSv1.3 (IN), TLS handshake, CERT verify (15):
{ [79 bytes data]
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
{ [1 bytes data]
* TLSv1.3 (IN), TLS handshake, Finished (20):
{ [36 bytes data]
* TLSv1.3 (OUT), TLS change cipher, Client hello (1):
} [1 bytes data]
* TLSv1.3 (OUT), TLS Unknown, Certificate Status (22):
} [1 bytes data]
* TLSv1.3 (OUT), TLS handshake, Finished (20):
} [36 bytes data]
* SSL connection using TLSv1.3 / TLS_AES_128_GCM_SHA256
* ALPN, server accepted to use h2
* Server certificate:
*  subject: CN=cranchecks.info
*  start date: May 21 20:23:25 2020 GMT
*  expire date: Aug 19 20:23:25 2020 GMT
*  subjectAltName: host "cranchecks.info" matched cert's "cranchecks.info"
*  issuer: C=US; O=Let's Encrypt; CN=Let's Encrypt Authority X3
*  SSL certificate verify ok.
* Using HTTP2, server supports multi-use
* Connection state changed (HTTP/2 confirmed)
* Copying HTTP/2 data in stream buffer to connection buffer after upgrade: len=0
} [5 bytes data]
* TLSv1.3 (OUT), TLS Unknown, Unknown (23):
} [1 bytes data]
* TLSv1.3 (OUT), TLS Unknown, Unknown (23):
} [1 bytes data]
* TLSv1.3 (OUT), TLS Unknown, Unknown (23):
} [1 bytes data]
* Using Stream ID: 1 (easy handle 0x5594dc65d4b0)
} [5 bytes data]
* TLSv1.3 (OUT), TLS Unknown, Unknown (23):
} [1 bytes data]
> GET /history/2020-04-01 HTTP/2
> Host: cranchecks.info
> User-Agent: curl/7.58.0
> Accept: */*
> 
{ [5 bytes data]
* TLSv1.3 (IN), TLS Unknown, Certificate Status (22):
{ [1 bytes data]
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
{ [130 bytes data]
* TLSv1.3 (IN), TLS Unknown, Unknown (23):
{ [1 bytes data]
* Connection state changed (MAX_CONCURRENT_STREAMS updated)!
} [5 bytes data]
* TLSv1.3 (OUT), TLS Unknown, Unknown (23):
} [1 bytes data]
* TLSv1.3 (IN), TLS Unknown, Unknown (23):
{ [1 bytes data]
* TLSv1.3 (IN), TLS Unknown, Unknown (23):
{ [1 bytes data]
* TLSv1.3 (IN), TLS Unknown, Unknown (23):
{ [1 bytes data]
< HTTP/2 302 
< access-control-allow-methods: HEAD, GET
< access-control-allow-origin: *
< cache-control: public, must-revalidate, max-age=60
< content-type: application/json; charset=utf8
< location: https://cchecks-history.s3.us-west-2.amazonaws.com/2020-04-01.json.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIE65F6ZPF3JF7JTA%2F20200523%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200523T133748Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=f67d5186e81536585e727d67a4ba7f113cdc234a792ffba2bf6681d76952e87e
< server: Caddy
< x-content-type-options: nosniff
< content-length: 101
< date: Sat, 23 May 2020 13:37:48 GMT
< 
{ [5 bytes data]
* TLSv1.3 (IN), TLS Unknown, Unknown (23):
{ [1 bytes data]
* Ignoring the response-body
{ [101 bytes data]
100   101  100   101    0     0    136      0 --:--:-- --:--:-- --:--:--   136
* Connection #0 to host cranchecks.info left intact
* Issue another request to this URL: 'https://cchecks-history.s3.us-west-2.amazonaws.com/2020-04-01.json.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIE65F6ZPF3JF7JTA%2F20200523%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200523T133748Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=f67d5186e81536585e727d67a4ba7f113cdc234a792ffba2bf6681d76952e87e'
*   Trying 52.218.184.169...
* TCP_NODELAY set
* Connected to cchecks-history.s3.us-west-2.amazonaws.com (52.218.184.169) port 443 (#1)
* ALPN, offering h2
* ALPN, offering http/1.1
* successfully set certificate verify locations:
*   CAfile: /etc/ssl/certs/ca-certificates.crt
  CApath: /etc/ssl/certs
} [5 bytes data]
* TLSv1.3 (OUT), TLS handshake, Client hello (1):
} [512 bytes data]
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0* TLSv1.3 (IN), TLS handshake, Server hello (2):
{ [91 bytes data]
* TLSv1.2 (IN), TLS handshake, Certificate (11):
{ [3232 bytes data]
* TLSv1.2 (IN), TLS handshake, Server key exchange (12):
{ [333 bytes data]
* TLSv1.2 (IN), TLS handshake, Server finished (14):
{ [4 bytes data]
* TLSv1.2 (OUT), TLS handshake, Client key exchange (16):
} [70 bytes data]
* TLSv1.2 (OUT), TLS change cipher, Client hello (1):
} [1 bytes data]
* TLSv1.2 (OUT), TLS handshake, Finished (20):
} [16 bytes data]
* TLSv1.2 (IN), TLS handshake, Finished (20):
{ [16 bytes data]
* SSL connection using TLSv1.2 / ECDHE-RSA-AES128-GCM-SHA256
* ALPN, server did not agree to a protocol
* Server certificate:
*  subject: C=US; ST=Washington; L=Seattle; O=Amazon.com, Inc.; CN=*.s3-us-west-2.amazonaws.com
*  start date: Nov  9 00:00:00 2019 GMT
*  expire date: Dec 10 12:00:00 2020 GMT
*  subjectAltName: host "cchecks-history.s3.us-west-2.amazonaws.com" matched cert's "*.s3.us-west-2.amazonaws.com"
*  issuer: C=US; O=DigiCert Inc; OU=www.digicert.com; CN=DigiCert Baltimore CA-2 G2
*  SSL certificate verify ok.
} [5 bytes data]
> GET /2020-04-01.json.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIE65F6ZPF3JF7JTA%2F20200523%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200523T133748Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=f67d5186e81536585e727d67a4ba7f113cdc234a792ffba2bf6681d76952e87e HTTP/1.1
> Host: cchecks-history.s3.us-west-2.amazonaws.com
> User-Agent: curl/7.58.0
> Accept: */*
> 
{ [5 bytes data]
< HTTP/1.1 200 OK
< x-amz-id-2: fwAgHJOztfobt5E+nViMGsIfm5DJbL8iC3KtUtk3awXhgMFT36fOv/YCZJNCLVf0CX2z4SgfguU=
< x-amz-request-id: F0597DECA031BD6D
< Date: Sat, 23 May 2020 13:37:49 GMT
< Last-Modified: Wed, 01 Apr 2020 16:36:04 GMT
< ETag: "a7d74593672aa52dace5cd9e62db9351"
< Content-Encoding: gzip
< Accept-Ranges: bytes
< Content-Type: application/json
< Content-Length: 5180606
< Server: AmazonS3
< 
{ [5 bytes data]
  0 5059k    0 50785    0     0  22990      0  0:03:45  0:00:02  0:03:43 45303  9 5059k    9  492k    0     0   159k      0  0:00:31  0:00:03  0:00:28  245k 19 5059k   19  967k    0     0   237k      0  0:00:21  0:00:04  0:00:17  324k 32 5059k   32 1631k    0     0   322k      0  0:00:15  0:00:05  0:00:10  409k 46 5059k   46 2327k    0     0   382k      0  0:00:13  0:00:06  0:00:07  465k 59 5059k   59 2991k    0     0   423k      0  0:00:11  0:00:07  0:00:04  604k 69 5059k   69 3535k    0     0   438k      0  0:00:11  0:00:08  0:00:03  611k 82 5059k   82 4164k    0     0   459k      0  0:00:11  0:00:09  0:00:02  639k 96 5059k   96 4861k    0     0   482k      0  0:00:10  0:00:10 --:--:--  643k100 5059k  100 5059k    0     0   488k      0  0:00:10  0:00:10 --:--:--  639k
* Connection #1 to host cchecks-history.s3.us-west-2.amazonaws.com left intact
{
  "package": "localIV",
Error: writing output failed: Broken pipe

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


