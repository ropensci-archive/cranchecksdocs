---
weight: 21
title: Search
output: 
  html_document:
    keep_md: true
---



# Search

Search package history data.
This is a full text search ONLY of the output in `check_details` field.

[Function of the `cchecks` package: `cch_pkgs_search()`](https://docs.ropensci.org/cchecks/reference/cch_pkgs_search.html)

`GET [/search]`

Parameters:

q (string)
: full text query, e.g, q=memory

package (string)
: a package name. limit results to a single package, e.g, package=taxize

one_each (boolean)
: if true, return a single result for each package; useful if you want to find out what packages have match a particular query, and don't care which day that match happened. default: false; e.g., one_each=true

fields (string)
: comma separated string with field to return, e.g., fields=package,check_details

limit/offset
: see [pagination docs](#pagination). Max of 50.


```shell
curl https://cranchecks.info/search?q=memory | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 210834
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 08 Jun 2020 12:37:25 GMT

```
```json
{
    "error": null,
    "count": 539,
    "returned": 10,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 3,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.01",
                    "tinstall": 2.81,
                    "tcheck": 32.04,
                    "ttotal": 34.85,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.31,
                    "tcheck": 26.11,
                    "ttotal": 28.42,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 51.32,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 41.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 8,
                    "tcheck": 50,
                    "ttotal": 58,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.78,
                    "tcheck": 32.05,
                    "ttotal": 34.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.04,
                    "tcheck": 32.14,
                    "ttotal": 35.18,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 68,
                    "ttotal": 74,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 8,
                    "tcheck": 47,
                    "ttotal": 55,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/allan-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "1.01",
                        "output": "Malformed Description field: should contain one or more complete sentences.",
                        "check": "DESCRIPTION meta-information",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "allanVarSelect: no visible global function definition for 'read.csv'\nfitvbiglm: no visible global function definition for 'read.csv'\nfitvbiglm: no visible global function definition for 'update'\ngetbestchunksize: no visible global function definition for 'read.csv'\ngetbestchunksize: no visible global function definition for\n  'object.size'\npredictvbiglm: no visible global function definition for 'read.csv'\npredictvbiglm: no visible global function definition for 'predict'\npredictvbiglm: no visible global function definition for\n  'weighted.mean'\nreadinbigdata : <anonymous>: no visible global function definition for\n  'read.csv'\nUndefined global functions or variables:\n  object.size predict read.csv update weighted.mean\nConsider adding\n  importFrom(\"stats\", \"predict\", \"update\", \"weighted.mean\")\n  importFrom(\"utils\", \"object.size\", \"read.csv\")\nto your NAMESPACE file.",
                        "check": "R code for possible problems",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "prepare_Rd: allan-package.Rd:49-51: Dropping empty section \\seealso\nprepare_Rd: allanVarSelect.Rd:59-60: Dropping empty section \\details\nprepare_Rd: allanVarSelect.Rd:66-67: Dropping empty section \\references\nprepare_Rd: allanVarSelect.Rd:78-79: Dropping empty section \\seealso\nprepare_Rd: fitvbiglm.Rd:38-39: Dropping empty section \\details\nprepare_Rd: fitvbiglm.Rd:49-50: Dropping empty section \\note\nprepare_Rd: fitvbiglm.Rd:43-44: Dropping empty section \\references\nprepare_Rd: fitvbiglm.Rd:53-54: Dropping empty section \\seealso\nprepare_Rd: getbestchunksize.Rd:35-36: Dropping empty section \\details\nprepare_Rd: getbestchunksize.Rd:46-47: Dropping empty section \\note\nprepare_Rd: getbestchunksize.Rd:40-41: Dropping empty section \\references\nprepare_Rd: getbestchunksize.Rd:50-51: Dropping empty section \\seealso\nprepare_Rd: predictvbiglm.Rd:44-45: Dropping empty section \\details\nprepare_Rd: predictvbiglm.Rd:56-57: Dropping empty section \\note\nprepare_Rd: predictvbiglm.Rd:50-51: Dropping empty section \\references\nprepare_Rd: predictvbiglm.Rd:60-61: Dropping empty section \\seealso\nprepare_Rd: readinbigdata.Rd:42-43: Dropping empty section \\note\nprepare_Rd: readinbigdata.Rd:45-46: Dropping empty section \\seealso",
                        "check": "Rd files",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Rd file 'allan-package.Rd':\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=smallchunk,weights=~cont0)\n\nRd file 'allanVarSelect.Rd':\n  \\usage lines wider than 90 characters:\n     allanVarSelect(BaseModel, TrnDataSetFile, ValDataSetFile, ResponseCol = 1, NumOfSteps = 10, criteria = \"AIC\", currentchunksize = -1, si ... [TRUNCATED]\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n\nRd file 'fitvbiglm.Rd':\n  \\usage lines wider than 90 characters:\n     fitvbiglm(BaseModel, filename, currentchunksize = -1, silent = TRUE, MemoryAllowed = 0.5, TestedRows = 1000, AdjFactor = 0.095)\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n\nRd file 'getbestchunksize.Rd':\n  \\usage lines wider than 90 characters:\n     getbestchunksize(filename, MemoryAllowed = 0.5, TestedRows = 1000, AdjFactor = 0.095, silent = TRUE)\n  \\examples lines wider than 100 characters:\n             #This is done by reading in a number of rows(1000 by default)and then measuring the size of the memory\n             #used.  Memory allwed is specified in Gb.  The adjfactor is a factor used to adjust memory for overhead\n\nRd file 'predictvbiglm.Rd':\n  \\usage lines wider than 90 characters:\n     predictvbiglm(BaseModel, ValFileName, currentchunksize = -1, ResponseCol = 1, silent = TRUE, MemoryAllowed = 0.5, TestedRows = 1000, Ad ... [TRUNCATED]\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n     predictvbiglm<-function(BaseModel,ValFileName,currentchunksize=-1,ResponseCol=1,silent=TRUE,MemoryAllowed=0.5,TestedRows=1000,AdjFactor ... [TRUNCATED]\n                     currentchunksize<-getbestchunksize(ValFileName,MemoryAllowed=MemoryAllowed,TestedRows=TestedRows,AdjFactor=AdjFactor,si ... [TRUNCATED]\n                             weightvector<-as.vector(eval(parse(text=paste(\"CurrentDataSet\",\"$\",weightname,sep=\"\"))))\n                     CurrentVariance=sum(((CurrentDataSet[,ResponseCol]-CurrentMean)^2)*weightvector)/sum(weightvector)\n\nRd file 'readinbigdata.Rd':\n  \\examples lines wider than 100 characters:\n             #The return value is either the next chunk of data or NULL if there is no additional data left.\n             #Additionally if a reset=TRUE flag is passed, then the data stream goes back to the beginning.\n\nThese lines will be truncated in the PDF manual.",
                        "check": "Rd line widths",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpkR6d3Z/RLIBS_e6d44df74e5b/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpkR6d3Z/RLIBS_e6d44df74e5b/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpgj63MA/RLIBS_22004641a1e91/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpgj63MA/RLIBS_22004641a1e91/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpW8NuS5/RLIBS_23dd4e8681b/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpW8NuS5/RLIBS_23dd4e8681b/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-06-07T15:03:21.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 3,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.01",
                    "tinstall": 2.81,
                    "tcheck": 32.04,
                    "ttotal": 34.85,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.19,
                    "tcheck": 25.85,
                    "ttotal": 28.04,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 51.23,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 41.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 8,
                    "tcheck": 50,
                    "ttotal": 58,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.78,
                    "tcheck": 32.05,
                    "ttotal": 34.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.04,
                    "tcheck": 32.14,
                    "ttotal": 35.18,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 68,
                    "ttotal": 74,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 8,
                    "tcheck": 47,
                    "ttotal": 55,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/allan-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "1.01",
                        "output": "Malformed Description field: should contain one or more complete sentences.",
                        "check": "DESCRIPTION meta-information",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "allanVarSelect: no visible global function definition for 'read.csv'\nfitvbiglm: no visible global function definition for 'read.csv'\nfitvbiglm: no visible global function definition for 'update'\ngetbestchunksize: no visible global function definition for 'read.csv'\ngetbestchunksize: no visible global function definition for\n  'object.size'\npredictvbiglm: no visible global function definition for 'read.csv'\npredictvbiglm: no visible global function definition for 'predict'\npredictvbiglm: no visible global function definition for\n  'weighted.mean'\nreadinbigdata : <anonymous>: no visible global function definition for\n  'read.csv'\nUndefined global functions or variables:\n  object.size predict read.csv update weighted.mean\nConsider adding\n  importFrom(\"stats\", \"predict\", \"update\", \"weighted.mean\")\n  importFrom(\"utils\", \"object.size\", \"read.csv\")\nto your NAMESPACE file.",
                        "check": "R code for possible problems",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "prepare_Rd: allan-package.Rd:49-51: Dropping empty section \\seealso\nprepare_Rd: allanVarSelect.Rd:59-60: Dropping empty section \\details\nprepare_Rd: allanVarSelect.Rd:66-67: Dropping empty section \\references\nprepare_Rd: allanVarSelect.Rd:78-79: Dropping empty section \\seealso\nprepare_Rd: fitvbiglm.Rd:38-39: Dropping empty section \\details\nprepare_Rd: fitvbiglm.Rd:49-50: Dropping empty section \\note\nprepare_Rd: fitvbiglm.Rd:43-44: Dropping empty section \\references\nprepare_Rd: fitvbiglm.Rd:53-54: Dropping empty section \\seealso\nprepare_Rd: getbestchunksize.Rd:35-36: Dropping empty section \\details\nprepare_Rd: getbestchunksize.Rd:46-47: Dropping empty section \\note\nprepare_Rd: getbestchunksize.Rd:40-41: Dropping empty section \\references\nprepare_Rd: getbestchunksize.Rd:50-51: Dropping empty section \\seealso\nprepare_Rd: predictvbiglm.Rd:44-45: Dropping empty section \\details\nprepare_Rd: predictvbiglm.Rd:56-57: Dropping empty section \\note\nprepare_Rd: predictvbiglm.Rd:50-51: Dropping empty section \\references\nprepare_Rd: predictvbiglm.Rd:60-61: Dropping empty section \\seealso\nprepare_Rd: readinbigdata.Rd:42-43: Dropping empty section \\note\nprepare_Rd: readinbigdata.Rd:45-46: Dropping empty section \\seealso",
                        "check": "Rd files",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Rd file 'allan-package.Rd':\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=smallchunk,weights=~cont0)\n\nRd file 'allanVarSelect.Rd':\n  \\usage lines wider than 90 characters:\n     allanVarSelect(BaseModel, TrnDataSetFile, ValDataSetFile, ResponseCol = 1, NumOfSteps = 10, criteria = \"AIC\", currentchunksize = -1, si ... [TRUNCATED]\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n\nRd file 'fitvbiglm.Rd':\n  \\usage lines wider than 90 characters:\n     fitvbiglm(BaseModel, filename, currentchunksize = -1, silent = TRUE, MemoryAllowed = 0.5, TestedRows = 1000, AdjFactor = 0.095)\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n\nRd file 'getbestchunksize.Rd':\n  \\usage lines wider than 90 characters:\n     getbestchunksize(filename, MemoryAllowed = 0.5, TestedRows = 1000, AdjFactor = 0.095, silent = TRUE)\n  \\examples lines wider than 100 characters:\n             #This is done by reading in a number of rows(1000 by default)and then measuring the size of the memory\n             #used.  Memory allwed is specified in Gb.  The adjfactor is a factor used to adjust memory for overhead\n\nRd file 'predictvbiglm.Rd':\n  \\usage lines wider than 90 characters:\n     predictvbiglm(BaseModel, ValFileName, currentchunksize = -1, ResponseCol = 1, silent = TRUE, MemoryAllowed = 0.5, TestedRows = 1000, Ad ... [TRUNCATED]\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n     predictvbiglm<-function(BaseModel,ValFileName,currentchunksize=-1,ResponseCol=1,silent=TRUE,MemoryAllowed=0.5,TestedRows=1000,AdjFactor ... [TRUNCATED]\n                     currentchunksize<-getbestchunksize(ValFileName,MemoryAllowed=MemoryAllowed,TestedRows=TestedRows,AdjFactor=AdjFactor,si ... [TRUNCATED]\n                             weightvector<-as.vector(eval(parse(text=paste(\"CurrentDataSet\",\"$\",weightname,sep=\"\"))))\n                     CurrentVariance=sum(((CurrentDataSet[,ResponseCol]-CurrentMean)^2)*weightvector)/sum(weightvector)\n\nRd file 'readinbigdata.Rd':\n  \\examples lines wider than 100 characters:\n             #The return value is either the next chunk of data or NULL if there is no additional data left.\n             #Additionally if a reset=TRUE flag is passed, then the data stream goes back to the beginning.\n\nThese lines will be truncated in the PDF manual.",
                        "check": "Rd line widths",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpkR6d3Z/RLIBS_e6d44df74e5b/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpkR6d3Z/RLIBS_e6d44df74e5b/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpgj63MA/RLIBS_22004641a1e91/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpgj63MA/RLIBS_22004641a1e91/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpW8NuS5/RLIBS_23dd4e8681b/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpW8NuS5/RLIBS_23dd4e8681b/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 11,
                "warn": 0,
                "error": 1,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 88.2,
                    "tcheck": 33.55,
                    "ttotal": 121.75,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 67.14,
                    "tcheck": 25.01,
                    "ttotal": 92.15,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 198.99,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 148.02,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 210,
                    "tcheck": 72,
                    "ttotal": 282,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 69.41,
                    "tcheck": 31.34,
                    "ttotal": 100.75,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 139.4,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 68.51,
                    "tcheck": 31.49,
                    "ttotal": 100,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 176,
                    "tcheck": 89,
                    "ttotal": 265,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 224,
                    "tcheck": 61,
                    "ttotal": 285,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.3Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-osx-x86_64",
                            "r-oldrel-osx-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [5s/19s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  ── 1. Failure: Data in-mem compared to same (@test-fuzzy-cmeans.R#65)  ─────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.003815383\n  Component \"cluster\": Mean relative difference: 0.5388128\n  Component \"size\": Mean relative difference: 1.76\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "clusternor",
            "date_updated": "2020-06-07T15:03:21.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 11,
                "warn": 0,
                "error": 1,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.0-4",
                    "tinstall": 88.2,
                    "tcheck": 33.55,
                    "ttotal": 121.75,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.0-4",
                    "tinstall": 66.26,
                    "tcheck": 25.28,
                    "ttotal": 91.54,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 199.45,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 148.02,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/clusternor-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 210,
                    "tcheck": 72,
                    "ttotal": 282,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 69.41,
                    "tcheck": 31.34,
                    "ttotal": 100.75,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 139.4,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.0-4",
                    "tinstall": 68.51,
                    "tcheck": 31.49,
                    "ttotal": 100,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 176,
                    "tcheck": 89,
                    "ttotal": 265,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "0.0-4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/clusternor-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.0-4",
                    "tinstall": 224,
                    "tcheck": 61,
                    "ttotal": 285,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/clusternor-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.0-4",
                        "output": "GNU make is a SystemRequirements.",
                        "check": "for GNU extensions in Makefiles",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  installed size is  7.3Mb\n  sub-directories of 1Mb or more:\n    libs   7.2Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-release-osx-x86_64",
                            "r-oldrel-osx-x86_64"
                        ]
                    },
                    {
                        "version": "0.0-4",
                        "output": "  Running ‘testthat.R’ [5s/19s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(clusternor)\n  Loading required package: Rcpp\n  > \n  > test_check(\"clusternor\")\n  \n  \n  ***Running test for fcmeans***\n  \n  Data ==> memory, centroids ==> memory\n  \n  Data ==> memory, centroids ==> memory\n  \n  ── 1. Failure: Data in-mem compared to same (@test-fuzzy-cmeans.R#65)  ─────────\n  `ret1` not identical to `ret2`.\n  Component \"centers\": Mean relative difference: 0.003815383\n  Component \"cluster\": Mean relative difference: 0.5388128\n  Component \"size\": Mean relative difference: 1.76\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> memory, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 17\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [2,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [3,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [4,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [5,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [6,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  [7,] 1.944158 1.873933 1.811169 1.829127 1.705402\n  [8,] 1.944158 1.873933 1.811169 1.829127 1.705401\n  \n  $cluster\n   [1] 7 3 7 7 3 7 7 7 7 3 7 3 7 3 3 7 3 7 3 7 3 7 7 3 3 7 7 3 3 3 7 3 3 7 3 7 3 3\n  [39] 7 3 3 3 3 3 7 3 3 3 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0 21  0\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  Data ==> disk, centroids ==> compute\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 21\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 1.639097 1.559699 1.690567 1.784127 1.738475\n  [2,] 1.639094 1.559697 1.690577 1.784087 1.738516\n  [3,] 1.639089 1.559693 1.690596 1.784007 1.738599\n  [4,] 1.639107 1.559707 1.690528 1.784283 1.738314\n  [5,] 1.639106 1.559706 1.690532 1.784267 1.738331\n  [6,] 1.639107 1.559706 1.690529 1.784282 1.738317\n  [7,] 1.639095 1.559698 1.690571 1.784108 1.738495\n  [8,] 1.639136 1.559735 1.690416 1.784741 1.737839\n  \n  $cluster\n   [1] 3 3 3 3 8 8 3 3 8 3 3 8 8 3 3 8 3 3 8 3 8 8 8 3 3 8 3 3 8 3 3 3 3 8 8 8 3 3\n  [39] 8 3 8 8 3 3 8 3 8 8 3 3\n  \n  $size\n  [1]  0  0 29  0  0  0  0 21\n  \n  \n  \n  ***Running test for hmeans***\n  \n  Data ==>  ,centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.426766 2.953499 4.043335 2.244559 3.710492\n  [2,] 4.122332 2.465384 3.589322 2.166748 3.575502\n  [3,] 2.626000 3.584148 2.022466 2.295955 4.134119\n  [4,] 1.943198 1.376050 2.189751 3.513497 4.592882\n  [5,] 4.307359 2.781234 3.196755 4.311270 3.415023\n  [6,] 2.795000 3.228041 4.430282 4.288907 1.526741\n  [7,] 1.580627 3.095462 1.962946 4.057300 1.642651\n  [8,] 2.477416 2.417114 2.200970 4.737974 2.761689\n  \n  $cluster\n   [1] 5 1 3 2 7 8 1 1 8 1 4 7 6 1 5 5 5 1 5 2 6 5 2 3 4 5 1 2 7 3 3 4 3 7 5 8 1 1\n  [39] 6 5 5 6 2 3 7 3 5 7 2 3\n  \n  $size\n  [1]  9  6  8  3 11  4  6  3\n  \n  Data ==> memory, centroids ==> memory\n  \n  $nrow\n  [1] 50\n  \n  $ncol\n  [1] 5\n  \n  $iters\n  [1] 20\n  \n  $k\n  [1] 8\n  \n  $centers\n           [,1]     [,2]     [,3]     [,4]     [,5]\n  [1,] 2.888524 2.603497 2.066828 2.375178 4.408128\n  [2,] 2.221906 3.679545 2.487253 2.001356 4.078200\n  [3,] 3.363949 1.514688 3.809288 1.941361 3.547053\n  [4,] 2.513951 3.081818 4.215258 1.409905 3.593325\n  [5,] 1.676915 3.191770 2.080428 4.447292 2.429021\n  [6,] 3.672408 1.905373 2.369369 4.077653 2",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "move",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": {
                "any": true,
                "ok": 5,
                "note": 2,
                "warn": 0,
                "error": 5,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "4.0.0",
                    "tinstall": 38.43,
                    "tcheck": 326.14,
                    "ttotal": 364.57,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/move-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "4.0.0",
                    "tinstall": 32.44,
                    "tcheck": 235.43,
                    "ttotal": 267.87,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/move-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "4.0.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 319.75,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/move-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "4.0.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 328.82,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/move-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "4.0.0",
                    "tinstall": 78,
                    "tcheck": 664,
                    "ttotal": 742,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/move-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "4.0.0",
                    "tinstall": 35,
                    "tcheck": 316.26,
                    "ttotal": 351.26,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/move-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "4.0.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 396.3,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/move-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "4.0.0",
                    "tinstall": 35.83,
                    "tcheck": 322.45,
                    "ttotal": 358.28,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/move-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "3.3.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/move-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "3.3.0",
                    "tinstall": 73,
                    "tcheck": 483,
                    "ttotal": 556,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/move-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "4.0.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/move-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "4.0.0",
                    "tinstall": 50,
                    "tcheck": 451,
                    "ttotal": 501,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/move-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "4.0.0",
                        "output": "Running examples in ‘move-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: brownian.bridge.dyn\n> ### Title: Calculates a dynamic Brownian Bridge\n> ### Aliases: brownian.bridge.dyn\n> ###   brownian.bridge.dyn,.MoveTrackSingle,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,MoveStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,.MoveTrackSingle,missing,missing,numeric-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,missing,numeric,ANY-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,numeric,missing,ANY-method\n> ###   brownian.bridge.dyn,dBMvariance,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceBurst,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,ANY,RasterLayer,missing,character-method\n> \n> ### ** Examples\n> \n> ## create a move object\n> data(leroy)\n> ## change projection method to aeqd and center the coordinate system to the track\n> data2 <- spTransform(leroy[30:90,], CRSobj=\"+proj=aeqd +ellps=WGS84\", center=TRUE)\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\n> \n> ## create a DBBMM object\n> dbbmm <- brownian.bridge.dyn(object=data2, location.error=12, dimSize=125, ext=1.2, \n+ \t\t\t     time.step=2, margin=15)\nComputational size: 1.1e+07\n> \n> plot(dbbmm)\n> \n> ## Don't show: \n> data(fishers)\n>   leroy <- leroy[1:50]\n>   ricky <- spTransform(move(system.file(\"extdata\",\"ricky.csv.gz\", package=\"move\"))[1:50], \n+ \t\t       crs(leroy))\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\n>   stack <- moveStack(list(leroy,ricky))\nWarning in FUN(X[[i]], ...) :\n  CRS object has comment, which is lost in output\nError in .local(x, ...) : All objects need to be equally projected.\nCalls: moveStack -> moveStack -> .local\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86",
                            "r-oldrel-osx-x86_64"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "  Running ‘test-all.R’ [110s/146s]\nRunning the tests in ‘tests/test-all.R’ failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"move\")\n  Loading required package: move\n  Loading required package: geosphere\n  Loading required package: sp\n  Loading required package: raster\n  Loading required package: rgdal\n  rgdal: version: 1.5-8, (SVN revision 990)\n  Geospatial Data Abstraction Library extensions to R successfully loaded\n  Loaded GDAL runtime: GDAL 2.3.2, released 2018/09/21\n  Path to GDAL shared files: /usr/share/gdal\n  GDAL binary built with GEOS: TRUE \n  Loaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\n  Path to PROJ shared files: (autodetected)\n  Linking to sp version:1.4-2\n  To mute warnings of possible GDAL/OSR exportToProj4() degradation,\n  use options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\n  ── 1. Error: Brownian bridge, running with character and vector input to locatio\n  error in evaluating the argument 'x' in selecting a method for function 'spTransform': All objects need to be equally projected.\n  Backtrace:\n   1. sp::spTransform(...)\n   6. base::.handleSimpleError(...)\n   7. base:::h(simpleError(msg, call))\n  \n  List of 2\n   $ Leroy  : num [1:918] 101.4 157.4 26.5 -133.2 -108.4 ...\n   $ Ricky.T: num [1:999] 115.7 70.2 -18.2 -78.9 76.5 ...\n  ── 2. Error: /data/gannet/ripley/R/packages/tests-clang/move/man/brownian.bridge\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(list(leroy, ricky))\n   2. move::moveStack(list(leroy, ricky))\n   3. move:::.local(x, ...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 6.38 5.61 12.67 9.65 11.73 ...\n   $ Ricky.T: num [1:999] 153.35 12.62 7.81 10.23 13.18 ...\n  List of 2\n   $ Leroy  : Named num [1:919] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:919] \"Leroy1\" \"Leroy2\" \"Leroy3\" \"Leroy4\" ...\n   $ Ricky.T: Named num [1:1000] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:1000] \"Ricky.T1\" \"Ricky.T2\" \"Ricky.T3\" \"Ricky.T4\" ...\n  ── 3. Error: /data/gannet/ripley/R/packages/tests-clang/move/man/moveStack.Rd  ─\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(l)\n   2. move::moveStack(l)\n   3. move:::.local(x, ...)\n  \n  class       : Move \n  features    : 919 \n  extent      : -73.93067, -73.84366, 42.70898, 42.7687  (xmin, xmax, ymin, ymax)\n  crs         : +proj=longlat +datum=WGS84 +no_defs \n  variables   : 17\n  names       :      timestamp, eobs.battery.voltage, eobs.horizontal.accuracy.estimate, eobs.key.bin.checksum, eobs.speed.accuracy.estimate,    eobs.start.timestamp, eobs.status, eobs.temperature, eobs.type.of.fix, eobs.used.time.to.get.fix, ground.speed, heading, height.above.ellipsoid,      utm.easting,     utm.northing, ... \n  min values  :     1234354605,                 3596,                              3.07,               3258904,                         0.27, 2009-02-11 12:14:59.000,           A,               13,                3,                         4,         0.01,       0,                 -169.6, 587507.837877134, 4729143.16566605, ... \n  max values  : 1236158219.998,                 3666,                             97.02,            4291715164,                        33.04, 2009-03-04 09:15:01.000,           A,               35,                3,                       119,        31.71,  359.79,                    349, 594679.382402579, 4735720.47868847, ... \n  timestamps  : 2009-02-11 12:16:45 ... 2009-03-04 09:16:59 Time difference of 21 days  (start ... end, duration) \n  sensors     : gps \n  indiv. data : eobs.fix.battery.voltage, manually.marked.outlier, visible, sensor.type, individual.taxon.canonical.name, tag.local.identifier, individual.local.identifier, study.name, study.timezone \n  indiv. value: 0 NA true gps Martes pennanti 74 Leroy Urban fisher GPS tracking Eastern Standard Time \n  unused rec. : 1071 \n  study name  : Urban fisher GPS tracking \n  date created: 2020-04-14 11:26:46 \n  class      : DBBMM \n  dimensions : 45, 19, 855  (nrow, ncol, ncell)\n  resolution : 1031.224, 1031.224  (x, y)\n  extent     : -6292594, -6273001, 5993337, 6039743  (xmin, xmax, ymin, ymax)\n  crs        : +proj=aeqd +lat_0=0 +lon_0=0 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs \n  source     : memory\n  names      : layer \n  values     : 0, 0.3007784  (min, max)\n  \n  List of 2\n   $ Leroy  : num [1:918] 0.00715 0.00659 0.01461 0.01069 0.01313 ...\n   $ Ricky.T: num [1:999] 0.0928 0.0825 0.0691 0.0769 0.3766 ...\n  List of 2\n   $ Leroy  : num [1:918] 14.9 14.2 14.5 15 14.9 ...\n   $ Ricky.T: num [1:999] 27.55 2.55 1.883 2.217 0.583 ...\n  List of 2\n   $ Leroy  : POSIXct[1:919], format: \"2009-02-11 12:16:45\" \"2009-02-11 12:31:38\" ...\n   $ Ricky.T: POSIXct[1:1000], format: \"2010-02-09 17:01:23\" \"2010-02-09 17:28:56\" ...\n  List of 2\n   $ Leroy  : num [1:917] 56 -130.9 -159.7 24.8 -179.2 ...\n   $ Ricky.T: num [1:998] -45.5 -88.4 -60.7 155.4 -108.9 ...\n  Formal class '.unUsedRecords' [package \"move\"] with 3 slots\n   ",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "Error(s) in re-building vignettes:\n--- re-building ‘browseMovebank.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\n--- finished re-building ‘browseMovebank.Rmd’\n\n--- re-building ‘move.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\nLoading required package: geosphere\nLoading required package: sp\nLoading required package: raster\nLoading required package: rgdal\nrgdal: version: 1.5-8, (SVN revision 990)\nGeospatial Data Abstraction Library extensions to R successfully loaded\nLoaded GDAL runtime: GDAL 2.3.2, released 2018/09/21\nPath to GDAL shared files: /usr/share/gdal\nGDAL binary built with GEOS: TRUE \nLoaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\nPath to PROJ shared files: (autodetected)\nLinking to sp version:1.4-2\nTo mute warnings of possible GDAL/OSR exportToProj4() degradation,\nuse options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\nQuitting from lines 107-112 (move.Rmd) \nError: processing vignette 'move.Rmd' failed with diagnostics:\nAll objects need to be equally projected.\n--- failed re-building ‘move.Rmd’\n\nSUMMARY: processing the following file failed:\n  ‘move.Rmd’\n\nError: Vignette re-building failed.\nExecution halted",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "  Running ‘test-all.R’ [122s/241s]\nRunning the tests in ‘tests/test-all.R’ failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"move\")\n  Loading required package: move\n  Loading required package: geosphere\n  Loading required package: sp\n  Loading required package: raster\n  Loading required package: rgdal\n  rgdal: version: 1.5-8, (SVN revision 990)\n  Geospatial Data Abstraction Library extensions to R successfully loaded\n  Loaded GDAL runtime: GDAL 2.3.2, released 2018/09/21\n  Path to GDAL shared files: /usr/share/gdal\n  GDAL binary built with GEOS: TRUE \n  Loaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\n  Path to PROJ shared files: (autodetected)\n  Linking to sp version:1.4-2\n  To mute warnings of possible GDAL/OSR exportToProj4() degradation,\n  use options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\n  ── 1. Error: Brownian bridge, running with character and vector input to locatio\n  error in evaluating the argument 'x' in selecting a method for function 'spTransform': All objects need to be equally projected.\n  Backtrace:\n   1. sp::spTransform(...)\n   6. base::.handleSimpleError(...)\n   7. base:::h(simpleError(msg, call))\n  \n  List of 2\n   $ Leroy  : num [1:918] 101.4 157.4 26.5 -133.2 -108.4 ...\n   $ Ricky.T: num [1:999] 115.7 70.2 -18.2 -78.9 76.5 ...\n  ── 2. Error: /data/gannet/ripley/R/packages/tests-devel/move/man/brownian.bridge\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(list(leroy, ricky))\n   2. move::moveStack(list(leroy, ricky))\n   3. move:::.local(x, ...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 6.38 5.61 12.67 9.65 11.73 ...\n   $ Ricky.T: num [1:999] 153.35 12.62 7.81 10.23 13.18 ...\n  List of 2\n   $ Leroy  : Named num [1:919] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:919] \"Leroy1\" \"Leroy2\" \"Leroy3\" \"Leroy4\" ...\n   $ Ricky.T: Named num [1:1000] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:1000] \"Ricky.T1\" \"Ricky.T2\" \"Ricky.T3\" \"Ricky.T4\" ...\n  ── 3. Error: /data/gannet/ripley/R/packages/tests-devel/move/man/moveStack.Rd  ─\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(l)\n   2. move::moveStack(l)\n   3. move:::.local(x, ...)\n  \n  class       : Move \n  features    : 919 \n  extent      : -73.93067, -73.84366, 42.70898, 42.7687  (xmin, xmax, ymin, ymax)\n  crs         : +proj=longlat +datum=WGS84 +no_defs \n  variables   : 17\n  names       :      timestamp, eobs.battery.voltage, eobs.horizontal.accuracy.estimate, eobs.key.bin.checksum, eobs.speed.accuracy.estimate,    eobs.start.timestamp, eobs.status, eobs.temperature, eobs.type.of.fix, eobs.used.time.to.get.fix, ground.speed, heading, height.above.ellipsoid,      utm.easting,     utm.northing, ... \n  min values  :     1234354605,                 3596,                              3.07,               3258904,                         0.27, 2009-02-11 12:14:59.000,           A,               13,                3,                         4,         0.01,       0,                 -169.6, 587507.837877134, 4729143.16566605, ... \n  max values  : 1236158219.998,                 3666,                             97.02,            4291715164,                        33.04, 2009-03-04 09:15:01.000,           A,               35,                3,                       119,        31.71,  359.79,                    349, 594679.382402579, 4735720.47868847, ... \n  timestamps  : 2009-02-11 12:16:45 ... 2009-03-04 09:16:59 Time difference of 21 days  (start ... end, duration) \n  sensors     : gps \n  indiv. data : eobs.fix.battery.voltage, manually.marked.outlier, visible, sensor.type, individual.taxon.canonical.name, tag.local.identifier, individual.local.identifier, study.name, study.timezone \n  indiv. value: 0 NA true gps Martes pennanti 74 Leroy Urban fisher GPS tracking Eastern Standard Time \n  unused rec. : 1071 \n  study name  : Urban fisher GPS tracking \n  date created: 2020-04-14 11:26:46 \n  class      : DBBMM \n  dimensions : 45, 19, 855  (nrow, ncol, ncell)\n  resolution : 1031.224, 1031.224  (x, y)\n  extent     : -6292594, -6273001, 5993337, 6039743  (xmin, xmax, ymin, ymax)\n  crs        : +proj=aeqd +lat_0=0 +lon_0=0 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs \n  source     : memory\n  names      : layer \n  values     : 0, 0.3007784  (min, max)\n  \n  List of 2\n   $ Leroy  : num [1:918] 0.00715 0.00659 0.01461 0.01069 0.01313 ...\n   $ Ricky.T: num [1:999] 0.0928 0.0825 0.0691 0.0769 0.3766 ...\n  List of 2\n   $ Leroy  : num [1:918] 14.9 14.2 14.5 15 14.9 ...\n   $ Ricky.T: num [1:999] 27.55 2.55 1.883 2.217 0.583 ...\n  List of 2\n   $ Leroy  : POSIXct[1:919], format: \"2009-02-11 12:16:45\" \"2009-02-11 12:31:38\" ...\n   $ Ricky.T: POSIXct[1:1000], format: \"2010-02-09 17:01:23\" \"2010-02-09 17:28:56\" ...\n  List of 2\n   $ Leroy  : num [1:917] 56 -130.9 -159.7 24.8 -179.2 ...\n   $ Ricky.T: num [1:998] -45.5 -88.4 -60.7 155.4 -108.9 ...\n  Formal class '.unUsedRecords' [package \"move\"] with 3 slots\n   ",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "Error(s) in re-building vignettes:\n--- re-building ‘browseMovebank.Rmd’ using rmarkdown\n--- finished re-building ‘browseMovebank.Rmd’\n\n--- re-building ‘move.Rmd’ using rmarkdown\nLoading required package: geosphere\nLoading required package: sp\nLoading required package: raster\nLoading required package: rgdal\nrgdal: version: 1.5-8, (SVN revision 990)\nGeospatial Data Abstraction Library extensions to R successfully loaded\nLoaded GDAL runtime: GDAL 2.3.2, released 2018/09/21\nPath to GDAL shared files: /usr/share/gdal\nGDAL binary built with GEOS: TRUE \nLoaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\nPath to PROJ shared files: (autodetected)\nLinking to sp version:1.4-2\nTo mute warnings of possible GDAL/OSR exportToProj4() degradation,\nuse options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\nQuitting from lines 107-112 (move.Rmd) \nError: processing vignette 'move.Rmd' failed with diagnostics:\nAll objects need to be equally projected.\n--- failed re-building ‘move.Rmd’\n\nSUMMARY: processing the following file failed:\n  ‘move.Rmd’\n\nError: Vignette re-building failed.\nExecution halted",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "  installed size is  5.5Mb\n  sub-directories of 1Mb or more:\n    R      1.1Mb\n    libs   1.9Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "  Running ‘test-all.R’ [99s/116s]\nRunning the tests in ‘tests/test-all.R’ failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"move\")\n  Loading required package: move\n  Loading required package: geosphere\n  Loading required package: sp\n  Loading required package: raster\n  Loading required package: rgdal\n  rgdal: version: 1.5-8, (SVN revision 990)\n  Geospatial Data Abstraction Library extensions to R successfully loaded\n  Loaded GDAL runtime: GDAL 2.2.4, released 2018/03/19\n  Path to GDAL shared files: /usr/local/share/gdal\n  GDAL binary built with GEOS: TRUE \n  Loaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\n  Path to PROJ shared files: (autodetected)\n  Linking to sp version:1.4-2\n  To mute warnings of possible GDAL/OSR exportToProj4() degradation,\n  use options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\n  List of 2\n   $ Leroy  : num [1:918] 101.4 157.4 26.5 -133.2 -108.4 ...\n   $ Ricky.T: num [1:999] 115.7 70.2 -18.2 -78.9 76.5 ...\n  ── 1. Error: /tmp/RtmpPUa4CO/R.INSTALL50e7366d1a7b/move/man/brownian.bridge.dyn.\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(list(leroy, ricky))\n   2. move::moveStack(list(leroy, ricky))\n   3. move:::.local(x, ...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 6.38 5.61 12.67 9.65 11.73 ...\n   $ Ricky.T: num [1:999] 153.35 12.62 7.81 10.23 13.18 ...\n  List of 2\n   $ Leroy  : Named num [1:919] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:919] \"Leroy1\" \"Leroy2\" \"Leroy3\" \"Leroy4\" ...\n   $ Ricky.T: Named num [1:1000] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:1000] \"Ricky.T1\" \"Ricky.T2\" \"Ricky.T3\" \"Ricky.T4\" ...\n  ── 2. Error: /tmp/RtmpPUa4CO/R.INSTALL50e7366d1a7b/move/man/moveStack.Rd  ──────\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(l)\n   2. move::moveStack(l)\n   3. move:::.local(x, ...)\n  \n  class       : Move \n  features    : 919 \n  extent      : -73.93067, -73.84366, 42.70898, 42.7687  (xmin, xmax, ymin, ymax)\n  crs         : +proj=longlat +datum=WGS84 +no_defs \n  variables   : 17\n  names       :      timestamp, eobs.battery.voltage, eobs.horizontal.accuracy.estimate, eobs.key.bin.checksum, eobs.speed.accuracy.estimate,    eobs.start.timestamp, eobs.status, eobs.temperature, eobs.type.of.fix, eobs.used.time.to.get.fix, ground.speed, heading, height.above.ellipsoid,      utm.easting,     utm.northing, ... \n  min values  :     1234354605,                 3596,                              3.07,               3258904,                         0.27, 2009-02-11 12:14:59.000,           A,               13,                3,                         4,         0.01,       0,                 -169.6, 587507.837877134, 4729143.16566605, ... \n  max values  : 1236158219.998,                 3666,                             97.02,            4291715164,                        33.04, 2009-03-04 09:15:01.000,           A,               35,                3,                       119,        31.71,  359.79,                    349, 594679.382402579, 4735720.47868847, ... \n  timestamps  : 2009-02-11 12:16:45 ... 2009-03-04 09:16:59 Time difference of 21 days  (start ... end, duration) \n  sensors     : gps \n  indiv. data : eobs.fix.battery.voltage, manually.marked.outlier, visible, sensor.type, individual.taxon.canonical.name, tag.local.identifier, individual.local.identifier, study.name, study.timezone \n  indiv. value: 0 NA true gps Martes pennanti 74 Leroy Urban fisher GPS tracking Eastern Standard Time \n  unused rec. : 1071 \n  study name  : Urban fisher GPS tracking \n  date created: 2020-04-14 11:26:46 \n  class      : DBBMM \n  dimensions : 45, 19, 855  (nrow, ncol, ncell)\n  resolution : 1031.224, 1031.224  (x, y)\n  extent     : -6292594, -6273001, 5993337, 6039743  (xmin, xmax, ymin, ymax)\n  crs        : +proj=aeqd +lat_0=0 +lon_0=0 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs \n  source     : memory\n  names      : layer \n  values     : 0, 0.3007784  (min, max)\n  \n  List of 2\n   $ Leroy  : num [1:918] 0.00715 0.00659 0.01461 0.01069 0.01313 ...\n   $ Ricky.T: num [1:999] 0.0928 0.0825 0.0691 0.0769 0.3766 ...\n  List of 2\n   $ Leroy  : num [1:918] 14.9 14.2 14.5 15 14.9 ...\n   $ Ricky.T: num [1:999] 27.55 2.55 1.883 2.217 0.583 ...\n  List of 2\n   $ Leroy  : POSIXct[1:919], format: \"2009-02-11 12:16:45\" \"2009-02-11 12:31:38\" ...\n   $ Ricky.T: POSIXct[1:1000], format: \"2010-02-09 17:01:23\" \"2010-02-09 17:28:56\" ...\n  List of 2\n   $ Leroy  : num [1:917] 56 -130.9 -159.7 24.8 -179.2 ...\n   $ Ricky.T: num [1:998] -45.5 -88.4 -60.7 155.4 -108.9 ...\n  Formal class '.unUsedRecords' [package \"move\"] with 3 slots\n    ..@ timestampsUnUsedRecords: POSIXct[1:1071], format: \"2009-02-11 00:00:01\" \"2009-02-11 00:15:01\" ...\n    ..@ sensorUnUsedRecords    : Factor w/ 1 level \"gps\": 1 1 1 1 1 1 1 1 1 1 ...\n    ..@ dataUnUsedRecords      :'data.frame':\t1071 obs. of  19 variables:\n    .. ..$ timestamp                        : POSIXct[1:1071], forma",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘browseMovebank.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\n--- finished re-building ‘browseMovebank.Rmd’\n\n--- re-building ‘move.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\nLoading required package: geosphere\nLoading required package: sp\nLoading required package: raster\nLoading required package: rgdal\nrgdal: version: 1.5-8, (SVN revision 990)\nGeospatial Data Abstraction Library extensions to R successfully loaded\nLoaded GDAL runtime: GDAL 2.2.4, released 2018/03/19\nPath to GDAL shared files: /usr/local/share/gdal\nGDAL binary built with GEOS: TRUE \nLoaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\nPath to PROJ shared files: (autodetected)\nLinking to sp version:1.4-2\nTo mute warnings of possible GDAL/OSR exportToProj4() degradation,\nuse options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\nQuitting from lines 107-112 (move.Rmd) \nError: processing vignette 'move.Rmd' failed with diagnostics:\nAll objects need to be equally projected.\n--- failed re-building ‘move.Rmd’\n\nSUMMARY: processing the following file failed:\n  ‘move.Rmd’\n\nError: Vignette re-building failed.\nExecution halted",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "  installed size is  5.5Mb\n  sub-directories of 1Mb or more:\n    R      1.1Mb\n    libs   1.9Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "Running examples in 'move-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: brownian.bridge.dyn\n> ### Title: Calculates a dynamic Brownian Bridge\n> ### Aliases: brownian.bridge.dyn\n> ###   brownian.bridge.dyn,.MoveTrackSingle,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,MoveStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,.MoveTrackSingle,missing,missing,numeric-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,missing,numeric,ANY-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,numeric,missing,ANY-method\n> ###   brownian.bridge.dyn,dBMvariance,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceBurst,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,ANY,RasterLayer,missing,character-method\n> \n> ### ** Examples\n> \n> ## create a move object\n> data(leroy)\n> ## change projection method to aeqd and center the coordinate system to the track\n> data2 <- spTransform(leroy[30:90,], CRSobj=\"+proj=aeqd +ellps=WGS84\", center=TRUE)\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in spTransform(xSP, CRSobj, ...) :\n  NULL source CRS comment, falling back to PROJ string\n> \n> ## create a DBBMM object\n> dbbmm <- brownian.bridge.dyn(object=data2, location.error=12, dimSize=125, ext=.45, \n+ \t\t\t     time.step=2, margin=15)\nWarning in proj4string(object) :\n  CRS object has comment, which is lost in output\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\nWarning in FUN(X[[i]], ...) :\n  CRS object has comment, which is lost in output\nComputational size: 5.2e+06\nError in .local(object, raster, location.error = location.error, ext = ext,  : \n  Higher x grid not large enough, consider extending the raster in that direction or enlarging the ext argument\nCalls: brownian.bridge.dyn ... brownian.bridge.dyn -> brownian.bridge.dyn -> .local\nExecution halted",
                        "check": "running examples for arch ‘i386’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "Running examples in 'move-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: brownian.bridge.dyn\n> ### Title: Calculates a dynamic Brownian Bridge\n> ### Aliases: brownian.bridge.dyn\n> ###   brownian.bridge.dyn,.MoveTrackSingle,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,MoveStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,.MoveTrackSingle,missing,missing,numeric-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,missing,numeric,ANY-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,numeric,missing,ANY-method\n> ###   brownian.bridge.dyn,dBMvariance,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceBurst,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,ANY,RasterLayer,missing,character-method\n> \n> ### ** Examples\n> \n> ## create a move object\n> data(leroy)\n> ## change projection method to aeqd and center the coordinate system to the track\n> data2 <- spTransform(leroy[30:90,], CRSobj=\"+proj=aeqd +ellps=WGS84\", center=TRUE)\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in spTransform(xSP, CRSobj, ...) :\n  NULL source CRS comment, falling back to PROJ string\n> \n> ## create a DBBMM object\n> dbbmm <- brownian.bridge.dyn(object=data2, location.error=12, dimSize=125, ext=.45, \n+ \t\t\t     time.step=2, margin=15)\nWarning in proj4string(object) :\n  CRS object has comment, which is lost in output\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\nWarning in FUN(X[[i]], ...) :\n  CRS object has comment, which is lost in output\nComputational size: 5.2e+06\nError in .local(object, raster, location.error = location.error, ext = ext,  : \n  Higher x grid not large enough, consider extending the raster in that direction or enlarging the ext argument\nCalls: brownian.bridge.dyn ... brownian.bridge.dyn -> brownian.bridge.dyn -> .local\nExecution halted",
                        "check": "running examples for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "  Running 'test-all.R' [128s]\nRunning the tests in 'tests/test-all.R' failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"move\")\n  Loading required package: move\n  Loading required package: geosphere\n  Loading required package: sp\n  Loading required package: raster\n  Loading required package: rgdal\n  rgdal: version: 1.5-8, (SVN revision 990)\n  Geospatial Data Abstraction Library extensions to R successfully loaded\n  Loaded GDAL runtime: GDAL 3.0.4, released 2020/01/28\n  Path to GDAL shared files: D:/temp/RtmpGGag0q/RLIBS_3343072b27a3/rgdal/gdal\n  GDAL binary built with GEOS: TRUE \n  Loaded PROJ runtime: Rel. 6.3.1, February 10th, 2020, [PJ_VERSION: 631]\n  Path to PROJ shared files: D:/temp/RtmpGGag0q/RLIBS_3343072b27a3/rgdal/proj\n  Linking to sp version:1.4-2\n  To mute warnings of possible GDAL/OSR exportToProj4() degradation,\n  use options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\n  -- 1. Error: Brownian bridge, running with character and vector input to locatio\n  All objects need to be equally projected.\n  Backtrace:\n   1. sp::spTransform(...)\n   3. move::moveStack(list(leroy[1:75, ], ricky[1:73, ]))\n   4. move:::.local(x, ...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 101.4 157.4 26.5 -133.2 -108.4 ...\n   $ Ricky.T: num [1:999] 115.7 70.2 -18.2 -78.9 76.5 ...\n  -- 2. Error: D:/temp/RtmpOUPT1O/R.INSTALLfc1871e17191/move/man/brownian.bridge.d\n  Higher x grid not large enough, consider extending the raster in that direction or enlarging the ext argument\n  Backtrace:\n   1. move::brownian.bridge.dyn(...)\n   2. move::brownian.bridge.dyn(...)\n   4. move::brownian.bridge.dyn(...)\n   6. move::brownian.bridge.dyn(...)\n   8. move::brownian.bridge.dyn(...)\n   9. move:::.local(...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 6.38 5.61 12.67 9.65 11.73 ...\n   $ Ricky.T: num [1:999] 153.35 12.62 7.81 10.23 13.18 ...\n  List of 2\n   $ Leroy  : Named num [1:919] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:919] \"Leroy1\" \"Leroy2\" \"Leroy3\" \"Leroy4\" ...\n   $ Ricky.T: Named num [1:1000] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:1000] \"Ricky.T1\" \"Ricky.T2\" \"Ricky.T3\" \"Ricky.T4\" ...\n  -- 3. Error: D:/temp/RtmpOUPT1O/R.INSTALLfc1871e17191/move/man/moveStack.Rd  ---\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(l)\n   2. move::moveStack(l)\n   3. move:::.local(x, ...)\n  \n  class       : Move \n  features    : 919 \n  extent      : -73.93067, -73.84366, 42.70898, 42.7687  (xmin, xmax, ymin, ymax)\n  crs         : +proj=longlat +ellps=WGS84 +datum=WGS84 +towgs84=0,0,0 \n  variables   : 17\n  names       :      timestamp, eobs.battery.voltage, eobs.horizontal.accuracy.estimate, eobs.key.bin.checksum, eobs.speed.accuracy.estimate,    eobs.start.timestamp, eobs.status, eobs.temperature, eobs.type.of.fix, eobs.used.time.to.get.fix, ground.speed, heading, height.above.ellipsoid,      utm.easting,     utm.northing, ... \n  min values  :     1234354605,                 3596,                              3.07,               3258904,                         0.27, 2009-02-11 12:14:59.000,           A,               13,                3,                         4,         0.01,       0,                 -169.6, 587507.837877134, 4729143.16566605, ... \n  max values  : 1236158219.998,                 3666,                             97.02,            4291715164,                        33.04, 2009-03-04 09:15:01.000,           A,               35,                3,                       119,        31.71,  359.79,                    349, 594679.382402579, 4735720.47868847, ... \n  timestamps  : 2009-02-11 12:16:45 ... 2009-03-04 09:16:59 Time difference of 21 days  (start ... end, duration) \n  sensors     : gps \n  indiv. data : eobs.fix.battery.voltage, manually.marked.outlier, visible, sensor.type, individual.taxon.canonical.name, tag.local.identifier, individual.local.identifier, study.name, study.timezone \n  indiv. value: 0 NA true gps Martes pennanti 74 Leroy Urban fisher GPS tracking Eastern Standard Time \n  unused rec. : 1071 \n  date created: 2015-09-15 17:38:46 \n  class      : DBBMM \n  dimensions : 42, 45, 1890  (nrow, ncol, ncell)\n  resolution : 253.3226, 253.3226  (x, y)\n  extent     : -5698.789, 5700.728, -5319.348, 5320.201  (xmin, xmax, ymin, ymax)\n  crs        : +proj=aeqd +ellps=WGS84 +lon_0=-73.8871629 +lat_0=42.73884025 \n  source     : memory\n  names      : layer \n  values     : 8.628914e-18, 0.1115657  (min, max)\n  \n  List of 2\n   $ Leroy  : num [1:918] 0.00715 0.00659 0.01461 0.01069 0.01313 ...\n   $ Ricky.T: num [1:999] 0.0928 0.0825 0.0691 0.0769 0.3766 ...\n  List of 2\n   $ Leroy  : num [1:918] 14.9 14.2 14.5 15 14.9 ...\n   $ Ricky.T: num [1:999] 27.55 2.55 1.883 2.217 0.583 ...\n  List of 2\n   $ Leroy  : POSIXct[1:919], format: \"2009-02-11 13:16:45\" \"2009-02-11 13:31:38\" ...\n   $ Ricky.T: POSIXct[1:1000], format: \"2010-02-09 18:01:23\" \"2010-02-09 18:28:56\" ...\n  List of 2\n   $ Leroy  : num [1:917] 56 -130.9 -159.7 24.8 -179.2",
                        "check": "running tests for arch ‘i386’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "  Running 'test-all.R' [123s]\nRunning the tests in 'tests/test-all.R' failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"move\")\n  Loading required package: move\n  Loading required package: geosphere\n  Loading required package: sp\n  Loading required package: raster\n  Loading required package: rgdal\n  rgdal: version: 1.5-8, (SVN revision 990)\n  Geospatial Data Abstraction Library extensions to R successfully loaded\n  Loaded GDAL runtime: GDAL 3.0.4, released 2020/01/28\n  Path to GDAL shared files: D:/temp/RtmpGGag0q/RLIBS_3343072b27a3/rgdal/gdal\n  GDAL binary built with GEOS: TRUE \n  Loaded PROJ runtime: Rel. 6.3.1, February 10th, 2020, [PJ_VERSION: 631]\n  Path to PROJ shared files: D:/temp/RtmpGGag0q/RLIBS_3343072b27a3/rgdal/proj\n  Linking to sp version:1.4-2\n  To mute warnings of possible GDAL/OSR exportToProj4() degradation,\n  use options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\n  -- 1. Error: Brownian bridge, running with character and vector input to locatio\n  All objects need to be equally projected.\n  Backtrace:\n   1. sp::spTransform(...)\n   3. move::moveStack(list(leroy[1:75, ], ricky[1:73, ]))\n   4. move:::.local(x, ...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 101.4 157.4 26.5 -133.2 -108.4 ...\n   $ Ricky.T: num [1:999] 115.7 70.2 -18.2 -78.9 76.5 ...\n  -- 2. Error: D:/temp/RtmpOUPT1O/R.INSTALLfc1871e17191/move/man/brownian.bridge.d\n  Higher x grid not large enough, consider extending the raster in that direction or enlarging the ext argument\n  Backtrace:\n   1. move::brownian.bridge.dyn(...)\n   2. move::brownian.bridge.dyn(...)\n   4. move::brownian.bridge.dyn(...)\n   6. move::brownian.bridge.dyn(...)\n   8. move::brownian.bridge.dyn(...)\n   9. move:::.local(...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 6.38 5.61 12.67 9.65 11.73 ...\n   $ Ricky.T: num [1:999] 153.35 12.62 7.81 10.23 13.18 ...\n  List of 2\n   $ Leroy  : Named num [1:919] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:919] \"Leroy1\" \"Leroy2\" \"Leroy3\" \"Leroy4\" ...\n   $ Ricky.T: Named num [1:1000] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:1000] \"Ricky.T1\" \"Ricky.T2\" \"Ricky.T3\" \"Ricky.T4\" ...\n  -- 3. Error: D:/temp/RtmpOUPT1O/R.INSTALLfc1871e17191/move/man/moveStack.Rd  ---\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(l)\n   2. move::moveStack(l)\n   3. move:::.local(x, ...)\n  \n  class       : Move \n  features    : 919 \n  extent      : -73.93067, -73.84366, 42.70898, 42.7687  (xmin, xmax, ymin, ymax)\n  crs         : +proj=longlat +ellps=WGS84 +datum=WGS84 +towgs84=0,0,0 \n  variables   : 17\n  names       :      timestamp, eobs.battery.voltage, eobs.horizontal.accuracy.estimate, eobs.key.bin.checksum, eobs.speed.accuracy.estimate,    eobs.start.timestamp, eobs.status, eobs.temperature, eobs.type.of.fix, eobs.used.time.to.get.fix, ground.speed, heading, height.above.ellipsoid,      utm.easting,     utm.northing, ... \n  min values  :     1234354605,                 3596,                              3.07,               3258904,                         0.27, 2009-02-11 12:14:59.000,           A,               13,                3,                         4,         0.01,       0,                 -169.6, 587507.837877134, 4729143.16566605, ... \n  max values  : 1236158219.998,                 3666,                             97.02,            4291715164,                        33.04, 2009-03-04 09:15:01.000,           A,               35,                3,                       119,        31.71,  359.79,                    349, 594679.382402579, 4735720.47868847, ... \n  timestamps  : 2009-02-11 12:16:45 ... 2009-03-04 09:16:59 Time difference of 21 days  (start ... end, duration) \n  sensors     : gps \n  indiv. data : eobs.fix.battery.voltage, manually.marked.outlier, visible, sensor.type, individual.taxon.canonical.name, tag.local.identifier, individual.local.identifier, study.name, study.timezone \n  indiv. value: 0 NA true gps Martes pennanti 74 Leroy Urban fisher GPS tracking Eastern Standard Time \n  unused rec. : 1071 \n  date created: 2015-09-15 17:38:46 \n  class      : DBBMM \n  dimensions : 42, 45, 1890  (nrow, ncol, ncell)\n  resolution : 253.3226, 253.3226  (x, y)\n  extent     : -5698.789, 5700.728, -5319.348, 5320.201  (xmin, xmax, ymin, ymax)\n  crs        : +proj=aeqd +ellps=WGS84 +lon_0=-73.8871629 +lat_0=42.73884025 \n  source     : memory\n  names      : layer \n  values     : 8.628914e-18, 0.1115657  (min, max)\n  \n  List of 2\n   $ Leroy  : num [1:918] 0.00715 0.00659 0.01461 0.01069 0.01313 ...\n   $ Ricky.T: num [1:999] 0.0928 0.0825 0.0691 0.0769 0.3766 ...\n  List of 2\n   $ Leroy  : num [1:918] 14.9 14.2 14.5 15 14.9 ...\n   $ Ricky.T: num [1:999] 27.55 2.55 1.883 2.217 0.583 ...\n  List of 2\n   $ Leroy  : POSIXct[1:919], format: \"2009-02-11 13:16:45\" \"2009-02-11 13:31:38\" ...\n   $ Ricky.T: POSIXct[1:1000], format: \"2010-02-09 18:01:23\" \"2010-02-09 18:28:56\" ...\n  List of 2\n   $ Leroy  : num [1:917] 56 -130.9 -159.7 24.8 -179.2",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "Error(s) in re-building vignettes:\n--- re-building 'browseMovebank.Rmd' using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\n--- finished re-building 'browseMovebank.Rmd'\n\n--- re-building 'move.Rmd' using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\nLoading required package: geosphere\nLoading required package: sp\nLoading required package: raster\nLoading required package: rgdal\nrgdal: version: 1.5-8, (SVN revision 990)\nGeospatial Data Abstraction Library extensions to R successfully loaded\nLoaded GDAL runtime: GDAL 3.0.4, released 2020/01/28\nPath to GDAL shared files: D:/temp/RtmpGGag0q/RLIBS_334303a44405c/rgdal/gdal\nGDAL binary built with GEOS: TRUE \nLoaded PROJ runtime: Rel. 6.3.1, February 10th, 2020, [PJ_VERSION: 631]\nPath to PROJ shared files: D:/temp/RtmpGGag0q/RLIBS_334303a44405c/rgdal/proj\nLinking to sp version:1.4-2\nTo mute warnings of possible GDAL/OSR exportToProj4() degradation,\nuse options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\nQuitting from lines 106-110 (move.Rmd) \nError: processing vignette 'move.Rmd' failed with diagnostics:\nAll objects need to be equally projected.\n--- failed re-building 'move.Rmd'\n\nSUMMARY: processing the following file failed:\n  'move.Rmd'\n\nError: Vignette re-building failed.\nExecution halted",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "  Running ‘test-all.R’ [79s/87s]\nRunning the tests in ‘tests/test-all.R’ failed.\nLast 13 lines of output:\n  password:\n  username:\n  password:\n  username:\n  password:\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 484 | SKIPPED: 6 | WARNINGS: 259 | FAILED: 5 ]\n  1. Error: Brownian bridge, running with character and vector input to location error for stacks (@test.brownian.bridge.dyn.R#203) \n  2. Error: /Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/move.Rcheck/00_pkg_src/move/man/brownian.bridge.dyn.Rd \n  3. Error: /Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/move.Rcheck/00_pkg_src/move/man/moveStack.Rd \n  4. Failure: moveAde (@test.moveAde.R#38) \n  5. Failure: equalproj (@test.smallFunctions.R#71) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-oldrel-osx-x86_64"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "Error(s) in re-building vignettes:\n--- re-building ‘browseMovebank.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n--- finished re-building ‘browseMovebank.Rmd’\n\n--- re-building ‘move.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\nLoading required package: geosphere\nLoading required package: sp\nLoading required package: raster\nLoading required package: rgdal\nrgdal: version: 1.5-8, (SVN revision 990)\nGeospatial Data Abstraction Library extensions to R successfully loaded\nLoaded GDAL runtime: GDAL 2.4.2, released 2019/06/28\nPath to GDAL shared files: /Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/Rlib/3.6/rgdal/gdal\nGDAL binary built with GEOS: FALSE \nLoaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\nPath to PROJ shared files: /Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/Rlib/3.6/rgdal/proj\nLinking to sp version:1.4-2\nTo mute warnings of possible GDAL/OSR exportToProj4() degradation,\nuse options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\nQuitting from lines 107-112 (move.Rmd) \nError: processing vignette 'move.Rmd' failed with diagnostics:\nAll objects need to be equally projected.\n--- failed re-building ‘move.Rmd’\n\nSUMMARY: processing the following file failed:\n  ‘move.Rmd’\n\nError: Vignette re-building failed.\nExecution halted",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-oldrel-osx-x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "bvpSolve",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": {
                "any": true,
                "ok": 10,
                "note": 0,
                "warn": 0,
                "error": 2,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.4",
                    "tinstall": 31.02,
                    "tcheck": 100.24,
                    "ttotal": 131.26,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.4",
                    "tinstall": 25.96,
                    "tcheck": 72.25,
                    "ttotal": 98.21,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 163.91,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 153.71,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.4",
                    "tinstall": 89,
                    "tcheck": 123,
                    "ttotal": 212,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.4",
                    "tinstall": 30.66,
                    "tcheck": 97.42,
                    "ttotal": 128.08,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 192.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.4",
                    "tinstall": 30.84,
                    "tcheck": 99.73,
                    "ttotal": 130.57,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.4",
                    "tinstall": 71,
                    "tcheck": 179,
                    "ttotal": 250,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.4",
                    "tinstall": 94,
                    "tcheck": 129,
                    "ttotal": 223,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/bvpSolve-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "1.4",
                        "output": "Running examples in ‘bvpSolve-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: bvpcol\n> ### Title: Solves multipoint boundary value problems of ordinary\n> ###   differential equations or differential algebraic equations, using a\n> ###   collocation method.\n> ### Aliases: bvpcol\n> ### Keywords: math\n> \n> ### ** Examples\n> \n> ## =============================================================================\n> ## Example 1: simple standard problem\n> ## solve the BVP ODE:\n> ## d2y/dt^2=-3py/(p+t^2)^2\n> ## y(t= -0.1)=-0.1/sqrt(p+0.01)\n> ## y(t=  0.1)= 0.1/sqrt(p+0.01)\n> ## where p = 1e-5\n> ##\n> ## analytical solution y(t) = t/sqrt(p + t^2).\n> ##\n> ## The problem is rewritten as a system of 2 ODEs:\n> ## dy=y2\n> ## dy2=-3p*y/(p+t^2)^2\n> ## =============================================================================\n> \n> #--------------------------------\n> # Derivative function\n> #--------------------------------\n> fun <- function(t, y, pars) { \n+   dy1 <- y[2]\n+   dy2 <- - 3 * p * y[1] / (p+t*t)^2\n+   return(list(c(dy1,\n+                 dy2))) }\n> \n> # parameter value\n> p    <- 1e-5\n> \n> # initial and final condition; second conditions unknown\n> init <- c(-0.1 / sqrt(p+0.01), NA)\n> end  <- c( 0.1 / sqrt(p+0.01), NA)\n> \n> # Solve bvp\n> sol  <- bvpcol(yini = init, yend = end, \n+                x = seq(-0.1, 0.1, by = 0.001), func = fun)\n\n *** caught segfault ***\naddress 0x0, cause 'memory not mapped'\n\nTraceback:\n 1: bvpsolver(2, yini, x, func, yend, parms, order, ynames, xguess,     yguess, jacfunc, bound, jacbound, leftbc, posbound, islin,     nmax, ncomp, atol, dllname, initfunc, rpar, ipar, nout, outnames,     forcings, initforc, fcontrol, verbose, cond = FALSE, lobatto = FALSE,     allpoints = TRUE, colp = colp, fullOut = fullOut, bspline = bspline,     eps = NULL, epsini = NULL, dae = dae, ...)\n 2: bvpcol(yini = init, yend = end, x = seq(-0.1, 0.1, by = 0.001),     func = fun)\nAn irrecoverable exception occurred. R is aborting now ...",
                        "check": "examples",
                        "flavors": [
                            "r-release-osx-x86_64",
                            "r-oldrel-osx-x86_64"
                        ]
                    },
                    {
                        "version": "1.4",
                        "output": "Errors in running code in vignettes:\nwhen running code in ‘bvpSolve.Rnw’\n  ...\n 7: withVisible(eval(ei, envir))\n 8: source(output, echo = TRUE)\n 9: doTryCatch(return(expr), name, parentenv, handler)\n10: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n11: tryCatchList(expr, classes, parentenv, handlers)\n12: tryCatch({    source(output, echo = TRUE)}, error = function(e) {    cat(\"\\n  When sourcing \", sQuote(output), \":\\n\", sep = \"\")    stop(conditionMessage(e), call. = FALSE, domain = NA)})\n13: tools:::.run_one_vignette(\"bvpSolve.Rnw\", \"/Volumes/Builds/packages/high-sierra-x86_64/results/4.0/bvpSolve.Rcheck/00_pkg_src/bvpSolve/vignettes\",     encoding = \"latin1\", pkgdir = \"/Volumes/Builds/packages/high-sierra-x86_64/results/4.0/bvpSolve.Rcheck/00_pkg_src/bvpSolve\")\nAn irrecoverable exception occurred. R is aborting now ...\n\n... incomplete output.  Crash?\nwhen running code in ‘bvpTests.Rnw’\n  ...\n 7: withVisible(eval(ei, envir))\n 8: source(output, echo = TRUE)\n 9: doTryCatch(return(expr), name, parentenv, handler)\n10: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n11: tryCatchList(expr, classes, parentenv, handlers)\n12: tryCatch({    source(output, echo = TRUE)}, error = function(e) {    cat(\"\\n  When sourcing \", sQuote(output), \":\\n\", sep = \"\")    stop(conditionMessage(e), call. = FALSE, domain = NA)})\n13: tools:::.run_one_vignette(\"bvpTests.Rnw\", \"/Volumes/Builds/packages/high-sierra-x86_64/results/4.0/bvpSolve.Rcheck/00_pkg_src/bvpSolve/vignettes\",     encoding = \"latin1\", pkgdir = \"/Volumes/Builds/packages/high-sierra-x86_64/results/4.0/bvpSolve.Rcheck/00_pkg_src/bvpSolve\")\nAn irrecoverable exception occurred. R is aborting now ...\n\n... incomplete output.  Crash?\n\n  ‘bvpSolve.Rnw’ using ‘latin1’... failed to complete the test\n  ‘bvpTests.Rnw’ using ‘latin1’... failed to complete the test",
                        "check": "running R code from vignettes",
                        "flavors": [
                            "r-release-osx-x86_64"
                        ]
                    },
                    {
                        "version": "1.4",
                        "output": "Error(s) in re-building vignettes:\nsh: line 1: 16325 Segmentation fault: 11  '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla --no-echo > '/Volumes/Temp/tmp/RtmpY6HYMM/file3f1a4e2d38ec' 2>&1 < '/Volumes/Temp/tmp/RtmpY6HYMM/file3f1a7af4360c'\n--- re-building ‘bvpSolve.Rnw’ using Sweave\nLoading required package: deSolve\n\nAttaching package: ‘bvpSolve’\n\nThe following object is masked from ‘package:stats’:\n\n    approx\n\n\n *** caught segfault ***\naddress 0x0, cause 'memory not mapped'\n\nTraceback:\n 1: bvpsolver(1, yini, x, func, yend, parms, order, ynames, xguess,     yguess, jacfunc, bound, jacbound, leftbc, posbound, islin,     nmax, ncomp, atol, dllname, initfunc, rpar, ipar, nout, outnames,     forcings, initforc, fcontrol, verbose, cond, lobatto, allpoints,     colp = NULL, fullOut = TRUE, bspline = TRUE, eps = NULL,     epsini = NULL, dae = NULL, ...)\n 2: bvptwp(yini = c(-1, NA), yend = c(1, NA), x = x, func = fun)\n 3: system.time(sol2 <- bvptwp(yini = c(-1, NA), yend = c(1, NA),     x = x, func = fun))\n 4: print(system.time(sol2 <- bvptwp(yini = c(-1, NA), yend = c(1,     NA), x = x, func = fun)))\n 5: eval(expr, .GlobalEnv)\n 6: eval(expr, .GlobalEnv)\n 7: withVisible(eval(expr, .GlobalEnv))\n 8: doTryCatch(return(expr), name, parentenv, handler)\n 9: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n10: tryCatchList(expr, classes, parentenv, handlers)\n11: tryCatch(expr, error = function(e) {    call <- conditionCall(e)    if (!is.null(call)) {        if (identical(call[[1L]], quote(doTryCatch)))             call <- sys.call(-4L)        dcall <- deparse(call)[1L]        prefix <- paste(\"Error in\", dcall, \": \")        LONG <- 75L        sm <- strsplit(conditionMessage(e), \"\\n\")[[1L]]        w <- 14L + nchar(dcall, type = \"w\") + nchar(sm[1L], type = \"w\")        if (is.na(w))             w <- 14L + nchar(dcall, type = \"b\") + nchar(sm[1L],                 type = \"b\")        if (w > LONG)             prefix <- paste0(prefix, \"\\n  \")    }    else prefix <- \"Error : \"    msg <- paste0(prefix, conditionMessage(e), \"\\n\")    .Internal(seterrmessage(msg[1L]))    if (!silent && isTRUE(getOption(\"show.error.messages\"))) {        cat(msg, file = outFile)        .Internal(printDeferredWarnings())    }    invisible(structure(msg, class = \"try-error\", condition = e))})\n12: try(withVisible(eval(expr, .GlobalEnv)), silent = TRUE)\n13: evalFunc(ce, options)\n14: tryCatchList(expr, classes, parentenv, handlers)\n15: tryCatch(evalFunc(ce, options), finally = {    cat(\"\\n\")    sink()})\n16: driver$runcode(drobj, chunk, chunkopts)\n17: utils::Sweave(...)\n18: engine$weave(file, quiet = quiet, encoding = enc)\n19: doTryCatch(return(expr), name, parentenv, handler)\n20: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n21: tryCatchList(expr, classes, parentenv, handlers)\n22: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }}, error = function(e) {    OK <<- FALSE    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n23: tools:::.buildOneVignette(\"bvpSolve.Rnw\", \"/Volumes/Builds/packages/high-sierra-x86_64/results/4.0/bvpSolve.Rcheck/vign_test/bvpSolve\",     TRUE, FALSE, \"bvpSolve\", \"latin1\", \"/Volumes/Temp/tmp/RtmpY6HYMM/file3f1a3443c8b2.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\nsh: line 1: 16405 Segmentation fault: 11  '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla --no-echo > '/Volumes/Temp/tmp/RtmpY6HYMM/file3f1a1259e8f6' 2>&1 < '/Volumes/Temp/tmp/RtmpY6HYMM/file3f1a4ccd77e3'\n--- re-building ‘bvpTests.Rnw’ using Sweave\nLoading required package: deSolve\n\nAttaching package: ‘bvpSolve’\n\nThe following object is masked from ‘package:stats’:\n\n    approx\n\n\n *** caught segfault ***\naddress 0x0, cause 'memory not mapped'\n\nTraceback:\n 1: bvpsolver(1, yini, x, func, yend, parms, order, ynames, xguess,     yguess, jacfunc, bound, jacbound, leftbc, posbound, islin,     nmax, ncomp, atol, dllname, initfunc, rpar, ipar, nout, outnames,     forcings, initforc, fcontrol, verbose, cond, lobatto, allpoints,     colp = NULL, fullOut = TRUE, bspline = TRUE, eps = NULL,     epsini = NULL, dae = NULL, ...)\n 2: bvptwp(yini = c(1, NA), yend = c(0, NA), x = seq(0, 1, by = 0.01),     func = Prob1)\n 3: system.time(mod1 <- bvptwp(yini = c(1, NA), yend = c(0, NA),     x = seq(0, 1, by = 0.01), func = Prob1))\n 4: print(system.time(mod1 <- bvptwp(yini = c(1, NA), yend = c(0,     NA), x = seq(0, 1, by = 0.01), func = Prob1)))\n 5: eval(expr, .GlobalEnv)\n 6: eval(expr, .GlobalEnv)\n 7: withVisible(eval(expr, .GlobalEnv))\n 8: doTryCatch(return(expr), name, parentenv, handler)\n 9: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n10: tryCatchList(expr, c",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-release-osx-x86_64"
                        ]
                    },
                    {
                        "version": "1.4",
                        "output": "Errors in running code in vignettes:\nwhen running code in ‘bvpSolve.Rnw’\n  ...\n 7: withVisible(eval(ei, envir))\n 8: source(output, echo = TRUE)\n 9: doTryCatch(return(expr), name, parentenv, handler)\n10: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n11: tryCatchList(expr, classes, parentenv, handlers)\n12: tryCatch({    source(output, echo = TRUE)}, error = function(e) {    cat(\"\\n  When sourcing \", sQuote(output), \":\\n\", sep = \"\")    stop(conditionMessage(e), call. = FALSE, domain = NA)})\n13: tools:::.run_one_vignette(\"bvpSolve.Rnw\", \"/Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/bvpSolve.Rcheck/00_pkg_src/bvpSolve/vignettes\",     encoding = \"latin1\", pkgdir = \"/Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/bvpSolve.Rcheck/00_pkg_src/bvpSolve\")\nAn irrecoverable exception occurred. R is aborting now ...\n\n... incomplete output.  Crash?\nwhen running code in ‘bvpTests.Rnw’\n  ...\n 7: withVisible(eval(ei, envir))\n 8: source(output, echo = TRUE)\n 9: doTryCatch(return(expr), name, parentenv, handler)\n10: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n11: tryCatchList(expr, classes, parentenv, handlers)\n12: tryCatch({    source(output, echo = TRUE)}, error = function(e) {    cat(\"\\n  When sourcing \", sQuote(output), \":\\n\", sep = \"\")    stop(conditionMessage(e), call. = FALSE, domain = NA)})\n13: tools:::.run_one_vignette(\"bvpTests.Rnw\", \"/Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/bvpSolve.Rcheck/00_pkg_src/bvpSolve/vignettes\",     encoding = \"latin1\", pkgdir = \"/Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/bvpSolve.Rcheck/00_pkg_src/bvpSolve\")\nAn irrecoverable exception occurred. R is aborting now ...\n\n... incomplete output.  Crash?\n\n  ‘bvpSolve.Rnw’using ‘latin1’... failed to complete the test\n  ‘bvpTests.Rnw’using ‘latin1’... failed to complete the test",
                        "check": "running R code from vignettes",
                        "flavors": [
                            "r-oldrel-osx-x86_64"
                        ]
                    },
                    {
                        "version": "1.4",
                        "output": "Error(s) in re-building vignettes:\nsh: line 1: 27152 Segmentation fault: 11  '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla --slave > '/tmp/RtmpCRztDv/file6a0b3463e361' 2>&1 < '/tmp/RtmpCRztDv/file6a0b9e51026'\n--- re-building ‘bvpSolve.Rnw’ using Sweave\nLoading required package: deSolve\n\nAttaching package: ‘bvpSolve’\n\nThe following object is masked from ‘package:stats’:\n\n    approx\n\n\n *** caught segfault ***\naddress 0x0, cause 'memory not mapped'\n\nTraceback:\n 1: bvpsolver(1, yini, x, func, yend, parms, order, ynames, xguess,     yguess, jacfunc, bound, jacbound, leftbc, posbound, islin,     nmax, ncomp, atol, dllname, initfunc, rpar, ipar, nout, outnames,     forcings, initforc, fcontrol, verbose, cond, lobatto, allpoints,     colp = NULL, fullOut = TRUE, bspline = TRUE, eps = NULL,     epsini = NULL, dae = NULL, ...)\n 2: bvptwp(yini = c(-1, NA), yend = c(1, NA), x = x, func = fun)\n 3: system.time(sol2 <- bvptwp(yini = c(-1, NA), yend = c(1, NA),     x = x, func = fun))\n 4: print(system.time(sol2 <- bvptwp(yini = c(-1, NA), yend = c(1,     NA), x = x, func = fun)))\n 5: eval(expr, .GlobalEnv)\n 6: eval(expr, .GlobalEnv)\n 7: withVisible(eval(expr, .GlobalEnv))\n 8: doTryCatch(return(expr), name, parentenv, handler)\n 9: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n10: tryCatchList(expr, classes, parentenv, handlers)\n11: tryCatch(expr, error = function(e) {    call <- conditionCall(e)    if (!is.null(call)) {        if (identical(call[[1L]], quote(doTryCatch)))             call <- sys.call(-4L)        dcall <- deparse(call)[1L]        prefix <- paste(\"Error in\", dcall, \": \")        LONG <- 75L        sm <- strsplit(conditionMessage(e), \"\\n\")[[1L]]        w <- 14L + nchar(dcall, type = \"w\") + nchar(sm[1L], type = \"w\")        if (is.na(w))             w <- 14L + nchar(dcall, type = \"b\") + nchar(sm[1L],                 type = \"b\")        if (w > LONG)             prefix <- paste0(prefix, \"\\n  \")    }    else prefix <- \"Error : \"    msg <- paste0(prefix, conditionMessage(e), \"\\n\")    .Internal(seterrmessage(msg[1L]))    if (!silent && isTRUE(getOption(\"show.error.messages\"))) {        cat(msg, file = outFile)        .Internal(printDeferredWarnings())    }    invisible(structure(msg, class = \"try-error\", condition = e))})\n12: try(withVisible(eval(expr, .GlobalEnv)), silent = TRUE)\n13: evalFunc(ce, options)\n14: tryCatchList(expr, classes, parentenv, handlers)\n15: tryCatch(evalFunc(ce, options), finally = {    cat(\"\\n\")    sink()})\n16: driver$runcode(drobj, chunk, chunkopts)\n17: utils::Sweave(...)\n18: engine$weave(file, quiet = quiet, encoding = enc)\n19: doTryCatch(return(expr), name, parentenv, handler)\n20: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n21: tryCatchList(expr, classes, parentenv, handlers)\n22: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }}, error = function(e) {    OK <<- FALSE    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n23: tools:::.buildOneVignette(\"bvpSolve.Rnw\", \"/Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/bvpSolve.Rcheck/vign_test/bvpSolve\",     TRUE, FALSE, \"bvpSolve\", \"latin1\", \"/tmp/RtmpCRztDv/file6a0b7937a5c3.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\nsh: line 1: 27158 Segmentation fault: 11  '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla --slave > '/tmp/RtmpCRztDv/file6a0b175e0150' 2>&1 < '/tmp/RtmpCRztDv/file6a0b1ca8372c'\n--- re-building ‘bvpTests.Rnw’ using Sweave\nLoading required package: deSolve\n\nAttaching package: ‘bvpSolve’\n\nThe following object is masked from ‘package:stats’:\n\n    approx\n\n\n *** caught segfault ***\naddress 0x0, cause 'memory not mapped'\n\nTraceback:\n 1: bvpsolver(1, yini, x, func, yend, parms, order, ynames, xguess,     yguess, jacfunc, bound, jacbound, leftbc, posbound, islin,     nmax, ncomp, atol, dllname, initfunc, rpar, ipar, nout, outnames,     forcings, initforc, fcontrol, verbose, cond, lobatto, allpoints,     colp = NULL, fullOut = TRUE, bspline = TRUE, eps = NULL,     epsini = NULL, dae = NULL, ...)\n 2: bvptwp(yini = c(1, NA), yend = c(0, NA), x = seq(0, 1, by = 0.01),     func = Prob1)\n 3: system.time(mod1 <- bvptwp(yini = c(1, NA), yend = c(0, NA),     x = seq(0, 1, by = 0.01), func = Prob1))\n 4: print(system.time(mod1 <- bvptwp(yini = c(1, NA), yend = c(0,     NA), x = seq(0, 1, by = 0.01), func = Prob1)))\n 5: eval(expr, .GlobalEnv)\n 6: eval(expr, .GlobalEnv)\n 7: withVisible(eval(expr, .GlobalEnv))\n 8: doTryCatch(return(expr), name, parentenv, handler)\n 9: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n10: tryCatchList(expr, classes, parentenv, handlers)\n11: tryCatch(e",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-oldrel-osx-x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "move",
            "date_updated": "2020-06-07T15:03:21.000Z",
            "summary": {
                "any": true,
                "ok": 5,
                "note": 2,
                "warn": 0,
                "error": 5,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "4.0.0",
                    "tinstall": 38.43,
                    "tcheck": 326.14,
                    "ttotal": 364.57,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/move-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "4.0.0",
                    "tinstall": 30.28,
                    "tcheck": 234.98,
                    "ttotal": 265.26,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/move-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "4.0.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 331.47,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/move-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "4.0.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 328.82,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/move-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "4.0.0",
                    "tinstall": 78,
                    "tcheck": 664,
                    "ttotal": 742,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/move-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "4.0.0",
                    "tinstall": 35,
                    "tcheck": 316.26,
                    "ttotal": 351.26,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/move-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "4.0.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 396.3,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/move-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "4.0.0",
                    "tinstall": 35.83,
                    "tcheck": 322.45,
                    "ttotal": 358.28,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/move-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "3.3.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/move-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "3.3.0",
                    "tinstall": 73,
                    "tcheck": 483,
                    "ttotal": 556,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/move-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "4.0.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/move-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "4.0.0",
                    "tinstall": 50,
                    "tcheck": 451,
                    "ttotal": 501,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/move-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "4.0.0",
                        "output": "Running examples in ‘move-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: brownian.bridge.dyn\n> ### Title: Calculates a dynamic Brownian Bridge\n> ### Aliases: brownian.bridge.dyn\n> ###   brownian.bridge.dyn,.MoveTrackSingle,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,MoveStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,.MoveTrackSingle,missing,missing,numeric-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,missing,numeric,ANY-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,numeric,missing,ANY-method\n> ###   brownian.bridge.dyn,dBMvariance,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceBurst,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,ANY,RasterLayer,missing,character-method\n> \n> ### ** Examples\n> \n> ## create a move object\n> data(leroy)\n> ## change projection method to aeqd and center the coordinate system to the track\n> data2 <- spTransform(leroy[30:90,], CRSobj=\"+proj=aeqd +ellps=WGS84\", center=TRUE)\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\n> \n> ## create a DBBMM object\n> dbbmm <- brownian.bridge.dyn(object=data2, location.error=12, dimSize=125, ext=1.2, \n+ \t\t\t     time.step=2, margin=15)\nComputational size: 1.1e+07\n> \n> plot(dbbmm)\n> \n> ## Don't show: \n> data(fishers)\n>   leroy <- leroy[1:50]\n>   ricky <- spTransform(move(system.file(\"extdata\",\"ricky.csv.gz\", package=\"move\"))[1:50], \n+ \t\t       crs(leroy))\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\n>   stack <- moveStack(list(leroy,ricky))\nWarning in FUN(X[[i]], ...) :\n  CRS object has comment, which is lost in output\nError in .local(x, ...) : All objects need to be equally projected.\nCalls: moveStack -> moveStack -> .local\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-solaris-x86",
                            "r-oldrel-osx-x86_64"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "  Running ‘test-all.R’ [112s/137s]\nRunning the tests in ‘tests/test-all.R’ failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"move\")\n  Loading required package: move\n  Loading required package: geosphere\n  Loading required package: sp\n  Loading required package: raster\n  Loading required package: rgdal\n  rgdal: version: 1.5-8, (SVN revision 990)\n  Geospatial Data Abstraction Library extensions to R successfully loaded\n  Loaded GDAL runtime: GDAL 2.3.2, released 2018/09/21\n  Path to GDAL shared files: /usr/share/gdal\n  GDAL binary built with GEOS: TRUE \n  Loaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\n  Path to PROJ shared files: (autodetected)\n  Linking to sp version:1.4-2\n  To mute warnings of possible GDAL/OSR exportToProj4() degradation,\n  use options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\n  ── 1. Error: Brownian bridge, running with character and vector input to locatio\n  error in evaluating the argument 'x' in selecting a method for function 'spTransform': All objects need to be equally projected.\n  Backtrace:\n   1. sp::spTransform(...)\n   6. base::.handleSimpleError(...)\n   7. base:::h(simpleError(msg, call))\n  \n  List of 2\n   $ Leroy  : num [1:918] 101.4 157.4 26.5 -133.2 -108.4 ...\n   $ Ricky.T: num [1:999] 115.7 70.2 -18.2 -78.9 76.5 ...\n  ── 2. Error: /data/gannet/ripley/R/packages/tests-clang/move/man/brownian.bridge\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(list(leroy, ricky))\n   2. move::moveStack(list(leroy, ricky))\n   3. move:::.local(x, ...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 6.38 5.61 12.67 9.65 11.73 ...\n   $ Ricky.T: num [1:999] 153.35 12.62 7.81 10.23 13.18 ...\n  List of 2\n   $ Leroy  : Named num [1:919] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:919] \"Leroy1\" \"Leroy2\" \"Leroy3\" \"Leroy4\" ...\n   $ Ricky.T: Named num [1:1000] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:1000] \"Ricky.T1\" \"Ricky.T2\" \"Ricky.T3\" \"Ricky.T4\" ...\n  ── 3. Error: /data/gannet/ripley/R/packages/tests-clang/move/man/moveStack.Rd  ─\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(l)\n   2. move::moveStack(l)\n   3. move:::.local(x, ...)\n  \n  class       : Move \n  features    : 919 \n  extent      : -73.93067, -73.84366, 42.70898, 42.7687  (xmin, xmax, ymin, ymax)\n  crs         : +proj=longlat +datum=WGS84 +no_defs \n  variables   : 17\n  names       :      timestamp, eobs.battery.voltage, eobs.horizontal.accuracy.estimate, eobs.key.bin.checksum, eobs.speed.accuracy.estimate,    eobs.start.timestamp, eobs.status, eobs.temperature, eobs.type.of.fix, eobs.used.time.to.get.fix, ground.speed, heading, height.above.ellipsoid,      utm.easting,     utm.northing, ... \n  min values  :     1234354605,                 3596,                              3.07,               3258904,                         0.27, 2009-02-11 12:14:59.000,           A,               13,                3,                         4,         0.01,       0,                 -169.6, 587507.837877134, 4729143.16566605, ... \n  max values  : 1236158219.998,                 3666,                             97.02,            4291715164,                        33.04, 2009-03-04 09:15:01.000,           A,               35,                3,                       119,        31.71,  359.79,                    349, 594679.382402579, 4735720.47868847, ... \n  timestamps  : 2009-02-11 12:16:45 ... 2009-03-04 09:16:59 Time difference of 21 days  (start ... end, duration) \n  sensors     : gps \n  indiv. data : eobs.fix.battery.voltage, manually.marked.outlier, visible, sensor.type, individual.taxon.canonical.name, tag.local.identifier, individual.local.identifier, study.name, study.timezone \n  indiv. value: 0 NA true gps Martes pennanti 74 Leroy Urban fisher GPS tracking Eastern Standard Time \n  unused rec. : 1071 \n  study name  : Urban fisher GPS tracking \n  date created: 2020-04-14 11:26:46 \n  class      : DBBMM \n  dimensions : 45, 19, 855  (nrow, ncol, ncell)\n  resolution : 1031.224, 1031.224  (x, y)\n  extent     : -6292594, -6273001, 5993337, 6039743  (xmin, xmax, ymin, ymax)\n  crs        : +proj=aeqd +lat_0=0 +lon_0=0 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs \n  source     : memory\n  names      : layer \n  values     : 0, 0.3007784  (min, max)\n  \n  List of 2\n   $ Leroy  : num [1:918] 0.00715 0.00659 0.01461 0.01069 0.01313 ...\n   $ Ricky.T: num [1:999] 0.0928 0.0825 0.0691 0.0769 0.3766 ...\n  List of 2\n   $ Leroy  : num [1:918] 14.9 14.2 14.5 15 14.9 ...\n   $ Ricky.T: num [1:999] 27.55 2.55 1.883 2.217 0.583 ...\n  List of 2\n   $ Leroy  : POSIXct[1:919], format: \"2009-02-11 12:16:45\" \"2009-02-11 12:31:38\" ...\n   $ Ricky.T: POSIXct[1:1000], format: \"2010-02-09 17:01:23\" \"2010-02-09 17:28:56\" ...\n  List of 2\n   $ Leroy  : num [1:917] 56 -130.9 -159.7 24.8 -179.2 ...\n   $ Ricky.T: num [1:998] -45.5 -88.4 -60.7 155.4 -108.9 ...\n  Formal class '.unUsedRecords' [package \"move\"] with 3 slots\n   ",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "Error(s) in re-building vignettes:\n--- re-building ‘browseMovebank.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\n--- finished re-building ‘browseMovebank.Rmd’\n\n--- re-building ‘move.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\nLoading required package: geosphere\nLoading required package: sp\nLoading required package: raster\nLoading required package: rgdal\nrgdal: version: 1.5-8, (SVN revision 990)\nGeospatial Data Abstraction Library extensions to R successfully loaded\nLoaded GDAL runtime: GDAL 2.3.2, released 2018/09/21\nPath to GDAL shared files: /usr/share/gdal\nGDAL binary built with GEOS: TRUE \nLoaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\nPath to PROJ shared files: (autodetected)\nLinking to sp version:1.4-2\nTo mute warnings of possible GDAL/OSR exportToProj4() degradation,\nuse options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\nQuitting from lines 107-112 (move.Rmd) \nError: processing vignette 'move.Rmd' failed with diagnostics:\nAll objects need to be equally projected.\n--- failed re-building ‘move.Rmd’\n\nSUMMARY: processing the following file failed:\n  ‘move.Rmd’\n\nError: Vignette re-building failed.\nExecution halted",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "  Running ‘test-all.R’ [122s/241s]\nRunning the tests in ‘tests/test-all.R’ failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"move\")\n  Loading required package: move\n  Loading required package: geosphere\n  Loading required package: sp\n  Loading required package: raster\n  Loading required package: rgdal\n  rgdal: version: 1.5-8, (SVN revision 990)\n  Geospatial Data Abstraction Library extensions to R successfully loaded\n  Loaded GDAL runtime: GDAL 2.3.2, released 2018/09/21\n  Path to GDAL shared files: /usr/share/gdal\n  GDAL binary built with GEOS: TRUE \n  Loaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\n  Path to PROJ shared files: (autodetected)\n  Linking to sp version:1.4-2\n  To mute warnings of possible GDAL/OSR exportToProj4() degradation,\n  use options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\n  ── 1. Error: Brownian bridge, running with character and vector input to locatio\n  error in evaluating the argument 'x' in selecting a method for function 'spTransform': All objects need to be equally projected.\n  Backtrace:\n   1. sp::spTransform(...)\n   6. base::.handleSimpleError(...)\n   7. base:::h(simpleError(msg, call))\n  \n  List of 2\n   $ Leroy  : num [1:918] 101.4 157.4 26.5 -133.2 -108.4 ...\n   $ Ricky.T: num [1:999] 115.7 70.2 -18.2 -78.9 76.5 ...\n  ── 2. Error: /data/gannet/ripley/R/packages/tests-devel/move/man/brownian.bridge\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(list(leroy, ricky))\n   2. move::moveStack(list(leroy, ricky))\n   3. move:::.local(x, ...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 6.38 5.61 12.67 9.65 11.73 ...\n   $ Ricky.T: num [1:999] 153.35 12.62 7.81 10.23 13.18 ...\n  List of 2\n   $ Leroy  : Named num [1:919] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:919] \"Leroy1\" \"Leroy2\" \"Leroy3\" \"Leroy4\" ...\n   $ Ricky.T: Named num [1:1000] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:1000] \"Ricky.T1\" \"Ricky.T2\" \"Ricky.T3\" \"Ricky.T4\" ...\n  ── 3. Error: /data/gannet/ripley/R/packages/tests-devel/move/man/moveStack.Rd  ─\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(l)\n   2. move::moveStack(l)\n   3. move:::.local(x, ...)\n  \n  class       : Move \n  features    : 919 \n  extent      : -73.93067, -73.84366, 42.70898, 42.7687  (xmin, xmax, ymin, ymax)\n  crs         : +proj=longlat +datum=WGS84 +no_defs \n  variables   : 17\n  names       :      timestamp, eobs.battery.voltage, eobs.horizontal.accuracy.estimate, eobs.key.bin.checksum, eobs.speed.accuracy.estimate,    eobs.start.timestamp, eobs.status, eobs.temperature, eobs.type.of.fix, eobs.used.time.to.get.fix, ground.speed, heading, height.above.ellipsoid,      utm.easting,     utm.northing, ... \n  min values  :     1234354605,                 3596,                              3.07,               3258904,                         0.27, 2009-02-11 12:14:59.000,           A,               13,                3,                         4,         0.01,       0,                 -169.6, 587507.837877134, 4729143.16566605, ... \n  max values  : 1236158219.998,                 3666,                             97.02,            4291715164,                        33.04, 2009-03-04 09:15:01.000,           A,               35,                3,                       119,        31.71,  359.79,                    349, 594679.382402579, 4735720.47868847, ... \n  timestamps  : 2009-02-11 12:16:45 ... 2009-03-04 09:16:59 Time difference of 21 days  (start ... end, duration) \n  sensors     : gps \n  indiv. data : eobs.fix.battery.voltage, manually.marked.outlier, visible, sensor.type, individual.taxon.canonical.name, tag.local.identifier, individual.local.identifier, study.name, study.timezone \n  indiv. value: 0 NA true gps Martes pennanti 74 Leroy Urban fisher GPS tracking Eastern Standard Time \n  unused rec. : 1071 \n  study name  : Urban fisher GPS tracking \n  date created: 2020-04-14 11:26:46 \n  class      : DBBMM \n  dimensions : 45, 19, 855  (nrow, ncol, ncell)\n  resolution : 1031.224, 1031.224  (x, y)\n  extent     : -6292594, -6273001, 5993337, 6039743  (xmin, xmax, ymin, ymax)\n  crs        : +proj=aeqd +lat_0=0 +lon_0=0 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs \n  source     : memory\n  names      : layer \n  values     : 0, 0.3007784  (min, max)\n  \n  List of 2\n   $ Leroy  : num [1:918] 0.00715 0.00659 0.01461 0.01069 0.01313 ...\n   $ Ricky.T: num [1:999] 0.0928 0.0825 0.0691 0.0769 0.3766 ...\n  List of 2\n   $ Leroy  : num [1:918] 14.9 14.2 14.5 15 14.9 ...\n   $ Ricky.T: num [1:999] 27.55 2.55 1.883 2.217 0.583 ...\n  List of 2\n   $ Leroy  : POSIXct[1:919], format: \"2009-02-11 12:16:45\" \"2009-02-11 12:31:38\" ...\n   $ Ricky.T: POSIXct[1:1000], format: \"2010-02-09 17:01:23\" \"2010-02-09 17:28:56\" ...\n  List of 2\n   $ Leroy  : num [1:917] 56 -130.9 -159.7 24.8 -179.2 ...\n   $ Ricky.T: num [1:998] -45.5 -88.4 -60.7 155.4 -108.9 ...\n  Formal class '.unUsedRecords' [package \"move\"] with 3 slots\n   ",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "Error(s) in re-building vignettes:\n--- re-building ‘browseMovebank.Rmd’ using rmarkdown\n--- finished re-building ‘browseMovebank.Rmd’\n\n--- re-building ‘move.Rmd’ using rmarkdown\nLoading required package: geosphere\nLoading required package: sp\nLoading required package: raster\nLoading required package: rgdal\nrgdal: version: 1.5-8, (SVN revision 990)\nGeospatial Data Abstraction Library extensions to R successfully loaded\nLoaded GDAL runtime: GDAL 2.3.2, released 2018/09/21\nPath to GDAL shared files: /usr/share/gdal\nGDAL binary built with GEOS: TRUE \nLoaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\nPath to PROJ shared files: (autodetected)\nLinking to sp version:1.4-2\nTo mute warnings of possible GDAL/OSR exportToProj4() degradation,\nuse options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\nQuitting from lines 107-112 (move.Rmd) \nError: processing vignette 'move.Rmd' failed with diagnostics:\nAll objects need to be equally projected.\n--- failed re-building ‘move.Rmd’\n\nSUMMARY: processing the following file failed:\n  ‘move.Rmd’\n\nError: Vignette re-building failed.\nExecution halted",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "  installed size is  5.5Mb\n  sub-directories of 1Mb or more:\n    R      1.1Mb\n    libs   1.9Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "  Running ‘test-all.R’ [99s/116s]\nRunning the tests in ‘tests/test-all.R’ failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"move\")\n  Loading required package: move\n  Loading required package: geosphere\n  Loading required package: sp\n  Loading required package: raster\n  Loading required package: rgdal\n  rgdal: version: 1.5-8, (SVN revision 990)\n  Geospatial Data Abstraction Library extensions to R successfully loaded\n  Loaded GDAL runtime: GDAL 2.2.4, released 2018/03/19\n  Path to GDAL shared files: /usr/local/share/gdal\n  GDAL binary built with GEOS: TRUE \n  Loaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\n  Path to PROJ shared files: (autodetected)\n  Linking to sp version:1.4-2\n  To mute warnings of possible GDAL/OSR exportToProj4() degradation,\n  use options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\n  List of 2\n   $ Leroy  : num [1:918] 101.4 157.4 26.5 -133.2 -108.4 ...\n   $ Ricky.T: num [1:999] 115.7 70.2 -18.2 -78.9 76.5 ...\n  ── 1. Error: /tmp/RtmpPUa4CO/R.INSTALL50e7366d1a7b/move/man/brownian.bridge.dyn.\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(list(leroy, ricky))\n   2. move::moveStack(list(leroy, ricky))\n   3. move:::.local(x, ...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 6.38 5.61 12.67 9.65 11.73 ...\n   $ Ricky.T: num [1:999] 153.35 12.62 7.81 10.23 13.18 ...\n  List of 2\n   $ Leroy  : Named num [1:919] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:919] \"Leroy1\" \"Leroy2\" \"Leroy3\" \"Leroy4\" ...\n   $ Ricky.T: Named num [1:1000] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:1000] \"Ricky.T1\" \"Ricky.T2\" \"Ricky.T3\" \"Ricky.T4\" ...\n  ── 2. Error: /tmp/RtmpPUa4CO/R.INSTALL50e7366d1a7b/move/man/moveStack.Rd  ──────\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(l)\n   2. move::moveStack(l)\n   3. move:::.local(x, ...)\n  \n  class       : Move \n  features    : 919 \n  extent      : -73.93067, -73.84366, 42.70898, 42.7687  (xmin, xmax, ymin, ymax)\n  crs         : +proj=longlat +datum=WGS84 +no_defs \n  variables   : 17\n  names       :      timestamp, eobs.battery.voltage, eobs.horizontal.accuracy.estimate, eobs.key.bin.checksum, eobs.speed.accuracy.estimate,    eobs.start.timestamp, eobs.status, eobs.temperature, eobs.type.of.fix, eobs.used.time.to.get.fix, ground.speed, heading, height.above.ellipsoid,      utm.easting,     utm.northing, ... \n  min values  :     1234354605,                 3596,                              3.07,               3258904,                         0.27, 2009-02-11 12:14:59.000,           A,               13,                3,                         4,         0.01,       0,                 -169.6, 587507.837877134, 4729143.16566605, ... \n  max values  : 1236158219.998,                 3666,                             97.02,            4291715164,                        33.04, 2009-03-04 09:15:01.000,           A,               35,                3,                       119,        31.71,  359.79,                    349, 594679.382402579, 4735720.47868847, ... \n  timestamps  : 2009-02-11 12:16:45 ... 2009-03-04 09:16:59 Time difference of 21 days  (start ... end, duration) \n  sensors     : gps \n  indiv. data : eobs.fix.battery.voltage, manually.marked.outlier, visible, sensor.type, individual.taxon.canonical.name, tag.local.identifier, individual.local.identifier, study.name, study.timezone \n  indiv. value: 0 NA true gps Martes pennanti 74 Leroy Urban fisher GPS tracking Eastern Standard Time \n  unused rec. : 1071 \n  study name  : Urban fisher GPS tracking \n  date created: 2020-04-14 11:26:46 \n  class      : DBBMM \n  dimensions : 45, 19, 855  (nrow, ncol, ncell)\n  resolution : 1031.224, 1031.224  (x, y)\n  extent     : -6292594, -6273001, 5993337, 6039743  (xmin, xmax, ymin, ymax)\n  crs        : +proj=aeqd +lat_0=0 +lon_0=0 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs \n  source     : memory\n  names      : layer \n  values     : 0, 0.3007784  (min, max)\n  \n  List of 2\n   $ Leroy  : num [1:918] 0.00715 0.00659 0.01461 0.01069 0.01313 ...\n   $ Ricky.T: num [1:999] 0.0928 0.0825 0.0691 0.0769 0.3766 ...\n  List of 2\n   $ Leroy  : num [1:918] 14.9 14.2 14.5 15 14.9 ...\n   $ Ricky.T: num [1:999] 27.55 2.55 1.883 2.217 0.583 ...\n  List of 2\n   $ Leroy  : POSIXct[1:919], format: \"2009-02-11 12:16:45\" \"2009-02-11 12:31:38\" ...\n   $ Ricky.T: POSIXct[1:1000], format: \"2010-02-09 17:01:23\" \"2010-02-09 17:28:56\" ...\n  List of 2\n   $ Leroy  : num [1:917] 56 -130.9 -159.7 24.8 -179.2 ...\n   $ Ricky.T: num [1:998] -45.5 -88.4 -60.7 155.4 -108.9 ...\n  Formal class '.unUsedRecords' [package \"move\"] with 3 slots\n    ..@ timestampsUnUsedRecords: POSIXct[1:1071], format: \"2009-02-11 00:00:01\" \"2009-02-11 00:15:01\" ...\n    ..@ sensorUnUsedRecords    : Factor w/ 1 level \"gps\": 1 1 1 1 1 1 1 1 1 1 ...\n    ..@ dataUnUsedRecords      :'data.frame':\t1071 obs. of  19 variables:\n    .. ..$ timestamp                        : POSIXct[1:1071], forma",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘browseMovebank.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\n--- finished re-building ‘browseMovebank.Rmd’\n\n--- re-building ‘move.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\nLoading required package: geosphere\nLoading required package: sp\nLoading required package: raster\nLoading required package: rgdal\nrgdal: version: 1.5-8, (SVN revision 990)\nGeospatial Data Abstraction Library extensions to R successfully loaded\nLoaded GDAL runtime: GDAL 2.2.4, released 2018/03/19\nPath to GDAL shared files: /usr/local/share/gdal\nGDAL binary built with GEOS: TRUE \nLoaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\nPath to PROJ shared files: (autodetected)\nLinking to sp version:1.4-2\nTo mute warnings of possible GDAL/OSR exportToProj4() degradation,\nuse options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\nQuitting from lines 107-112 (move.Rmd) \nError: processing vignette 'move.Rmd' failed with diagnostics:\nAll objects need to be equally projected.\n--- failed re-building ‘move.Rmd’\n\nSUMMARY: processing the following file failed:\n  ‘move.Rmd’\n\nError: Vignette re-building failed.\nExecution halted",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "  installed size is  5.5Mb\n  sub-directories of 1Mb or more:\n    R      1.1Mb\n    libs   1.9Mb",
                        "check": "installed package size",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "Running examples in 'move-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: brownian.bridge.dyn\n> ### Title: Calculates a dynamic Brownian Bridge\n> ### Aliases: brownian.bridge.dyn\n> ###   brownian.bridge.dyn,.MoveTrackSingle,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,MoveStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,.MoveTrackSingle,missing,missing,numeric-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,missing,numeric,ANY-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,numeric,missing,ANY-method\n> ###   brownian.bridge.dyn,dBMvariance,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceBurst,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,ANY,RasterLayer,missing,character-method\n> \n> ### ** Examples\n> \n> ## create a move object\n> data(leroy)\n> ## change projection method to aeqd and center the coordinate system to the track\n> data2 <- spTransform(leroy[30:90,], CRSobj=\"+proj=aeqd +ellps=WGS84\", center=TRUE)\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in spTransform(xSP, CRSobj, ...) :\n  NULL source CRS comment, falling back to PROJ string\n> \n> ## create a DBBMM object\n> dbbmm <- brownian.bridge.dyn(object=data2, location.error=12, dimSize=125, ext=.45, \n+ \t\t\t     time.step=2, margin=15)\nWarning in proj4string(object) :\n  CRS object has comment, which is lost in output\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\nWarning in FUN(X[[i]], ...) :\n  CRS object has comment, which is lost in output\nComputational size: 5.2e+06\nError in .local(object, raster, location.error = location.error, ext = ext,  : \n  Higher x grid not large enough, consider extending the raster in that direction or enlarging the ext argument\nCalls: brownian.bridge.dyn ... brownian.bridge.dyn -> brownian.bridge.dyn -> .local\nExecution halted",
                        "check": "running examples for arch ‘i386’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "Running examples in 'move-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: brownian.bridge.dyn\n> ### Title: Calculates a dynamic Brownian Bridge\n> ### Aliases: brownian.bridge.dyn\n> ###   brownian.bridge.dyn,.MoveTrackSingle,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,MoveStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,.MoveTrackSingle,missing,missing,numeric-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,missing,numeric,ANY-method\n> ###   brownian.bridge.dyn,SpatialPointsDataFrame,numeric,missing,ANY-method\n> ###   brownian.bridge.dyn,dBMvariance,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceStack,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,dBMvarianceBurst,RasterLayer,missing,numeric-method\n> ###   brownian.bridge.dyn,ANY,RasterLayer,missing,character-method\n> \n> ### ** Examples\n> \n> ## create a move object\n> data(leroy)\n> ## change projection method to aeqd and center the coordinate system to the track\n> data2 <- spTransform(leroy[30:90,], CRSobj=\"+proj=aeqd +ellps=WGS84\", center=TRUE)\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in spTransform(xSP, CRSobj, ...) :\n  NULL source CRS comment, falling back to PROJ string\n> \n> ## create a DBBMM object\n> dbbmm <- brownian.bridge.dyn(object=data2, location.error=12, dimSize=125, ext=.45, \n+ \t\t\t     time.step=2, margin=15)\nWarning in proj4string(object) :\n  CRS object has comment, which is lost in output\nWarning in showSRID(uprojargs, format = \"PROJ\", multiline = \"NO\") :\n  Discarded datum Unknown based on WGS84 ellipsoid in CRS definition\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\nWarning in proj4string(x) :\n  CRS object has comment, which is lost in output\nWarning in FUN(X[[i]], ...) :\n  CRS object has comment, which is lost in output\nComputational size: 5.2e+06\nError in .local(object, raster, location.error = location.error, ext = ext,  : \n  Higher x grid not large enough, consider extending the raster in that direction or enlarging the ext argument\nCalls: brownian.bridge.dyn ... brownian.bridge.dyn -> brownian.bridge.dyn -> .local\nExecution halted",
                        "check": "running examples for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "  Running 'test-all.R' [128s]\nRunning the tests in 'tests/test-all.R' failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"move\")\n  Loading required package: move\n  Loading required package: geosphere\n  Loading required package: sp\n  Loading required package: raster\n  Loading required package: rgdal\n  rgdal: version: 1.5-8, (SVN revision 990)\n  Geospatial Data Abstraction Library extensions to R successfully loaded\n  Loaded GDAL runtime: GDAL 3.0.4, released 2020/01/28\n  Path to GDAL shared files: D:/temp/RtmpGGag0q/RLIBS_3343072b27a3/rgdal/gdal\n  GDAL binary built with GEOS: TRUE \n  Loaded PROJ runtime: Rel. 6.3.1, February 10th, 2020, [PJ_VERSION: 631]\n  Path to PROJ shared files: D:/temp/RtmpGGag0q/RLIBS_3343072b27a3/rgdal/proj\n  Linking to sp version:1.4-2\n  To mute warnings of possible GDAL/OSR exportToProj4() degradation,\n  use options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\n  -- 1. Error: Brownian bridge, running with character and vector input to locatio\n  All objects need to be equally projected.\n  Backtrace:\n   1. sp::spTransform(...)\n   3. move::moveStack(list(leroy[1:75, ], ricky[1:73, ]))\n   4. move:::.local(x, ...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 101.4 157.4 26.5 -133.2 -108.4 ...\n   $ Ricky.T: num [1:999] 115.7 70.2 -18.2 -78.9 76.5 ...\n  -- 2. Error: D:/temp/RtmpOUPT1O/R.INSTALLfc1871e17191/move/man/brownian.bridge.d\n  Higher x grid not large enough, consider extending the raster in that direction or enlarging the ext argument\n  Backtrace:\n   1. move::brownian.bridge.dyn(...)\n   2. move::brownian.bridge.dyn(...)\n   4. move::brownian.bridge.dyn(...)\n   6. move::brownian.bridge.dyn(...)\n   8. move::brownian.bridge.dyn(...)\n   9. move:::.local(...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 6.38 5.61 12.67 9.65 11.73 ...\n   $ Ricky.T: num [1:999] 153.35 12.62 7.81 10.23 13.18 ...\n  List of 2\n   $ Leroy  : Named num [1:919] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:919] \"Leroy1\" \"Leroy2\" \"Leroy3\" \"Leroy4\" ...\n   $ Ricky.T: Named num [1:1000] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:1000] \"Ricky.T1\" \"Ricky.T2\" \"Ricky.T3\" \"Ricky.T4\" ...\n  -- 3. Error: D:/temp/RtmpOUPT1O/R.INSTALLfc1871e17191/move/man/moveStack.Rd  ---\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(l)\n   2. move::moveStack(l)\n   3. move:::.local(x, ...)\n  \n  class       : Move \n  features    : 919 \n  extent      : -73.93067, -73.84366, 42.70898, 42.7687  (xmin, xmax, ymin, ymax)\n  crs         : +proj=longlat +ellps=WGS84 +datum=WGS84 +towgs84=0,0,0 \n  variables   : 17\n  names       :      timestamp, eobs.battery.voltage, eobs.horizontal.accuracy.estimate, eobs.key.bin.checksum, eobs.speed.accuracy.estimate,    eobs.start.timestamp, eobs.status, eobs.temperature, eobs.type.of.fix, eobs.used.time.to.get.fix, ground.speed, heading, height.above.ellipsoid,      utm.easting,     utm.northing, ... \n  min values  :     1234354605,                 3596,                              3.07,               3258904,                         0.27, 2009-02-11 12:14:59.000,           A,               13,                3,                         4,         0.01,       0,                 -169.6, 587507.837877134, 4729143.16566605, ... \n  max values  : 1236158219.998,                 3666,                             97.02,            4291715164,                        33.04, 2009-03-04 09:15:01.000,           A,               35,                3,                       119,        31.71,  359.79,                    349, 594679.382402579, 4735720.47868847, ... \n  timestamps  : 2009-02-11 12:16:45 ... 2009-03-04 09:16:59 Time difference of 21 days  (start ... end, duration) \n  sensors     : gps \n  indiv. data : eobs.fix.battery.voltage, manually.marked.outlier, visible, sensor.type, individual.taxon.canonical.name, tag.local.identifier, individual.local.identifier, study.name, study.timezone \n  indiv. value: 0 NA true gps Martes pennanti 74 Leroy Urban fisher GPS tracking Eastern Standard Time \n  unused rec. : 1071 \n  date created: 2015-09-15 17:38:46 \n  class      : DBBMM \n  dimensions : 42, 45, 1890  (nrow, ncol, ncell)\n  resolution : 253.3226, 253.3226  (x, y)\n  extent     : -5698.789, 5700.728, -5319.348, 5320.201  (xmin, xmax, ymin, ymax)\n  crs        : +proj=aeqd +ellps=WGS84 +lon_0=-73.8871629 +lat_0=42.73884025 \n  source     : memory\n  names      : layer \n  values     : 8.628914e-18, 0.1115657  (min, max)\n  \n  List of 2\n   $ Leroy  : num [1:918] 0.00715 0.00659 0.01461 0.01069 0.01313 ...\n   $ Ricky.T: num [1:999] 0.0928 0.0825 0.0691 0.0769 0.3766 ...\n  List of 2\n   $ Leroy  : num [1:918] 14.9 14.2 14.5 15 14.9 ...\n   $ Ricky.T: num [1:999] 27.55 2.55 1.883 2.217 0.583 ...\n  List of 2\n   $ Leroy  : POSIXct[1:919], format: \"2009-02-11 13:16:45\" \"2009-02-11 13:31:38\" ...\n   $ Ricky.T: POSIXct[1:1000], format: \"2010-02-09 18:01:23\" \"2010-02-09 18:28:56\" ...\n  List of 2\n   $ Leroy  : num [1:917] 56 -130.9 -159.7 24.8 -179.2",
                        "check": "running tests for arch ‘i386’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "  Running 'test-all.R' [123s]\nRunning the tests in 'tests/test-all.R' failed.\nComplete output:\n  > library(testthat)\n  > test_check(\"move\")\n  Loading required package: move\n  Loading required package: geosphere\n  Loading required package: sp\n  Loading required package: raster\n  Loading required package: rgdal\n  rgdal: version: 1.5-8, (SVN revision 990)\n  Geospatial Data Abstraction Library extensions to R successfully loaded\n  Loaded GDAL runtime: GDAL 3.0.4, released 2020/01/28\n  Path to GDAL shared files: D:/temp/RtmpGGag0q/RLIBS_3343072b27a3/rgdal/gdal\n  GDAL binary built with GEOS: TRUE \n  Loaded PROJ runtime: Rel. 6.3.1, February 10th, 2020, [PJ_VERSION: 631]\n  Path to PROJ shared files: D:/temp/RtmpGGag0q/RLIBS_3343072b27a3/rgdal/proj\n  Linking to sp version:1.4-2\n  To mute warnings of possible GDAL/OSR exportToProj4() degradation,\n  use options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\n  -- 1. Error: Brownian bridge, running with character and vector input to locatio\n  All objects need to be equally projected.\n  Backtrace:\n   1. sp::spTransform(...)\n   3. move::moveStack(list(leroy[1:75, ], ricky[1:73, ]))\n   4. move:::.local(x, ...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 101.4 157.4 26.5 -133.2 -108.4 ...\n   $ Ricky.T: num [1:999] 115.7 70.2 -18.2 -78.9 76.5 ...\n  -- 2. Error: D:/temp/RtmpOUPT1O/R.INSTALLfc1871e17191/move/man/brownian.bridge.d\n  Higher x grid not large enough, consider extending the raster in that direction or enlarging the ext argument\n  Backtrace:\n   1. move::brownian.bridge.dyn(...)\n   2. move::brownian.bridge.dyn(...)\n   4. move::brownian.bridge.dyn(...)\n   6. move::brownian.bridge.dyn(...)\n   8. move::brownian.bridge.dyn(...)\n   9. move:::.local(...)\n  \n  List of 2\n   $ Leroy  : num [1:918] 6.38 5.61 12.67 9.65 11.73 ...\n   $ Ricky.T: num [1:999] 153.35 12.62 7.81 10.23 13.18 ...\n  List of 2\n   $ Leroy  : Named num [1:919] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:919] \"Leroy1\" \"Leroy2\" \"Leroy3\" \"Leroy4\" ...\n   $ Ricky.T: Named num [1:1000] NA NA NA NA NA NA NA NA NA NA ...\n    ..- attr(*, \"names\")= chr [1:1000] \"Ricky.T1\" \"Ricky.T2\" \"Ricky.T3\" \"Ricky.T4\" ...\n  -- 3. Error: D:/temp/RtmpOUPT1O/R.INSTALLfc1871e17191/move/man/moveStack.Rd  ---\n  All objects need to be equally projected.\n  Backtrace:\n   1. move::moveStack(l)\n   2. move::moveStack(l)\n   3. move:::.local(x, ...)\n  \n  class       : Move \n  features    : 919 \n  extent      : -73.93067, -73.84366, 42.70898, 42.7687  (xmin, xmax, ymin, ymax)\n  crs         : +proj=longlat +ellps=WGS84 +datum=WGS84 +towgs84=0,0,0 \n  variables   : 17\n  names       :      timestamp, eobs.battery.voltage, eobs.horizontal.accuracy.estimate, eobs.key.bin.checksum, eobs.speed.accuracy.estimate,    eobs.start.timestamp, eobs.status, eobs.temperature, eobs.type.of.fix, eobs.used.time.to.get.fix, ground.speed, heading, height.above.ellipsoid,      utm.easting,     utm.northing, ... \n  min values  :     1234354605,                 3596,                              3.07,               3258904,                         0.27, 2009-02-11 12:14:59.000,           A,               13,                3,                         4,         0.01,       0,                 -169.6, 587507.837877134, 4729143.16566605, ... \n  max values  : 1236158219.998,                 3666,                             97.02,            4291715164,                        33.04, 2009-03-04 09:15:01.000,           A,               35,                3,                       119,        31.71,  359.79,                    349, 594679.382402579, 4735720.47868847, ... \n  timestamps  : 2009-02-11 12:16:45 ... 2009-03-04 09:16:59 Time difference of 21 days  (start ... end, duration) \n  sensors     : gps \n  indiv. data : eobs.fix.battery.voltage, manually.marked.outlier, visible, sensor.type, individual.taxon.canonical.name, tag.local.identifier, individual.local.identifier, study.name, study.timezone \n  indiv. value: 0 NA true gps Martes pennanti 74 Leroy Urban fisher GPS tracking Eastern Standard Time \n  unused rec. : 1071 \n  date created: 2015-09-15 17:38:46 \n  class      : DBBMM \n  dimensions : 42, 45, 1890  (nrow, ncol, ncell)\n  resolution : 253.3226, 253.3226  (x, y)\n  extent     : -5698.789, 5700.728, -5319.348, 5320.201  (xmin, xmax, ymin, ymax)\n  crs        : +proj=aeqd +ellps=WGS84 +lon_0=-73.8871629 +lat_0=42.73884025 \n  source     : memory\n  names      : layer \n  values     : 8.628914e-18, 0.1115657  (min, max)\n  \n  List of 2\n   $ Leroy  : num [1:918] 0.00715 0.00659 0.01461 0.01069 0.01313 ...\n   $ Ricky.T: num [1:999] 0.0928 0.0825 0.0691 0.0769 0.3766 ...\n  List of 2\n   $ Leroy  : num [1:918] 14.9 14.2 14.5 15 14.9 ...\n   $ Ricky.T: num [1:999] 27.55 2.55 1.883 2.217 0.583 ...\n  List of 2\n   $ Leroy  : POSIXct[1:919], format: \"2009-02-11 13:16:45\" \"2009-02-11 13:31:38\" ...\n   $ Ricky.T: POSIXct[1:1000], format: \"2010-02-09 18:01:23\" \"2010-02-09 18:28:56\" ...\n  List of 2\n   $ Leroy  : num [1:917] 56 -130.9 -159.7 24.8 -179.2",
                        "check": "running tests for arch ‘x64’",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "3.3.0",
                        "output": "Error(s) in re-building vignettes:\n--- re-building 'browseMovebank.Rmd' using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\n--- finished re-building 'browseMovebank.Rmd'\n\n--- re-building 'move.Rmd' using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.\nLoading required package: geosphere\nLoading required package: sp\nLoading required package: raster\nLoading required package: rgdal\nrgdal: version: 1.5-8, (SVN revision 990)\nGeospatial Data Abstraction Library extensions to R successfully loaded\nLoaded GDAL runtime: GDAL 3.0.4, released 2020/01/28\nPath to GDAL shared files: D:/temp/RtmpGGag0q/RLIBS_334303a44405c/rgdal/gdal\nGDAL binary built with GEOS: TRUE \nLoaded PROJ runtime: Rel. 6.3.1, February 10th, 2020, [PJ_VERSION: 631]\nPath to PROJ shared files: D:/temp/RtmpGGag0q/RLIBS_334303a44405c/rgdal/proj\nLinking to sp version:1.4-2\nTo mute warnings of possible GDAL/OSR exportToProj4() degradation,\nuse options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\nQuitting from lines 106-110 (move.Rmd) \nError: processing vignette 'move.Rmd' failed with diagnostics:\nAll objects need to be equally projected.\n--- failed re-building 'move.Rmd'\n\nSUMMARY: processing the following file failed:\n  'move.Rmd'\n\nError: Vignette re-building failed.\nExecution halted",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "  Running ‘test-all.R’ [79s/87s]\nRunning the tests in ‘tests/test-all.R’ failed.\nLast 13 lines of output:\n  password:\n  username:\n  password:\n  username:\n  password:\n  ══ testthat results  ═══════════════════════════════════════════════════════════\n  [ OK: 484 | SKIPPED: 6 | WARNINGS: 259 | FAILED: 5 ]\n  1. Error: Brownian bridge, running with character and vector input to location error for stacks (@test.brownian.bridge.dyn.R#203) \n  2. Error: /Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/move.Rcheck/00_pkg_src/move/man/brownian.bridge.dyn.Rd \n  3. Error: /Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/move.Rcheck/00_pkg_src/move/man/moveStack.Rd \n  4. Failure: moveAde (@test.moveAde.R#38) \n  5. Failure: equalproj (@test.smallFunctions.R#71) \n  \n  Error: testthat unit tests failed\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-oldrel-osx-x86_64"
                        ]
                    },
                    {
                        "version": "4.0.0",
                        "output": "Error(s) in re-building vignettes:\n--- re-building ‘browseMovebank.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n--- finished re-building ‘browseMovebank.Rmd’\n\n--- re-building ‘move.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\nLoading required package: geosphere\nLoading required package: sp\nLoading required package: raster\nLoading required package: rgdal\nrgdal: version: 1.5-8, (SVN revision 990)\nGeospatial Data Abstraction Library extensions to R successfully loaded\nLoaded GDAL runtime: GDAL 2.4.2, released 2019/06/28\nPath to GDAL shared files: /Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/Rlib/3.6/rgdal/gdal\nGDAL binary built with GEOS: FALSE \nLoaded PROJ runtime: Rel. 5.2.0, September 15th, 2018, [PJ_VERSION: 520]\nPath to PROJ shared files: /Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/Rlib/3.6/rgdal/proj\nLinking to sp version:1.4-2\nTo mute warnings of possible GDAL/OSR exportToProj4() degradation,\nuse options(\"rgdal_show_exportToProj4_warnings\"=\"none\") before loading rgdal.\nQuitting from lines 107-112 (move.Rmd) \nError: processing vignette 'move.Rmd' failed with diagnostics:\nAll objects need to be equally projected.\n--- failed re-building ‘move.Rmd’\n\nSUMMARY: processing the following file failed:\n  ‘move.Rmd’\n\nError: Vignette re-building failed.\nExecution halted",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-oldrel-osx-x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "bvpSolve",
            "date_updated": "2020-06-07T15:03:21.000Z",
            "summary": {
                "any": true,
                "ok": 10,
                "note": 0,
                "warn": 0,
                "error": 2,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.4",
                    "tinstall": 31.02,
                    "tcheck": 100.24,
                    "ttotal": 131.26,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.4",
                    "tinstall": 25.92,
                    "tcheck": 73.34,
                    "ttotal": 99.26,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 165.19,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 153.71,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.4",
                    "tinstall": 89,
                    "tcheck": 123,
                    "ttotal": 212,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.4",
                    "tinstall": 30.66,
                    "tcheck": 97.42,
                    "ttotal": 128.08,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 192.1,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.4",
                    "tinstall": 30.84,
                    "tcheck": 99.73,
                    "ttotal": 130.57,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.4",
                    "tinstall": 71,
                    "tcheck": 179,
                    "ttotal": 250,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.4",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/bvpSolve-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.4",
                    "tinstall": 94,
                    "tcheck": 129,
                    "ttotal": 223,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/bvpSolve-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "1.4",
                        "output": "Running examples in ‘bvpSolve-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: bvpcol\n> ### Title: Solves multipoint boundary value problems of ordinary\n> ###   differential equations or differential algebraic equations, using a\n> ###   collocation method.\n> ### Aliases: bvpcol\n> ### Keywords: math\n> \n> ### ** Examples\n> \n> ## =============================================================================\n> ## Example 1: simple standard problem\n> ## solve the BVP ODE:\n> ## d2y/dt^2=-3py/(p+t^2)^2\n> ## y(t= -0.1)=-0.1/sqrt(p+0.01)\n> ## y(t=  0.1)= 0.1/sqrt(p+0.01)\n> ## where p = 1e-5\n> ##\n> ## analytical solution y(t) = t/sqrt(p + t^2).\n> ##\n> ## The problem is rewritten as a system of 2 ODEs:\n> ## dy=y2\n> ## dy2=-3p*y/(p+t^2)^2\n> ## =============================================================================\n> \n> #--------------------------------\n> # Derivative function\n> #--------------------------------\n> fun <- function(t, y, pars) { \n+   dy1 <- y[2]\n+   dy2 <- - 3 * p * y[1] / (p+t*t)^2\n+   return(list(c(dy1,\n+                 dy2))) }\n> \n> # parameter value\n> p    <- 1e-5\n> \n> # initial and final condition; second conditions unknown\n> init <- c(-0.1 / sqrt(p+0.01), NA)\n> end  <- c( 0.1 / sqrt(p+0.01), NA)\n> \n> # Solve bvp\n> sol  <- bvpcol(yini = init, yend = end, \n+                x = seq(-0.1, 0.1, by = 0.001), func = fun)\n\n *** caught segfault ***\naddress 0x0, cause 'memory not mapped'\n\nTraceback:\n 1: bvpsolver(2, yini, x, func, yend, parms, order, ynames, xguess,     yguess, jacfunc, bound, jacbound, leftbc, posbound, islin,     nmax, ncomp, atol, dllname, initfunc, rpar, ipar, nout, outnames,     forcings, initforc, fcontrol, verbose, cond = FALSE, lobatto = FALSE,     allpoints = TRUE, colp = colp, fullOut = fullOut, bspline = bspline,     eps = NULL, epsini = NULL, dae = dae, ...)\n 2: bvpcol(yini = init, yend = end, x = seq(-0.1, 0.1, by = 0.001),     func = fun)\nAn irrecoverable exception occurred. R is aborting now ...",
                        "check": "examples",
                        "flavors": [
                            "r-release-osx-x86_64",
                            "r-oldrel-osx-x86_64"
                        ]
                    },
                    {
                        "version": "1.4",
                        "output": "Errors in running code in vignettes:\nwhen running code in ‘bvpSolve.Rnw’\n  ...\n 7: withVisible(eval(ei, envir))\n 8: source(output, echo = TRUE)\n 9: doTryCatch(return(expr), name, parentenv, handler)\n10: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n11: tryCatchList(expr, classes, parentenv, handlers)\n12: tryCatch({    source(output, echo = TRUE)}, error = function(e) {    cat(\"\\n  When sourcing \", sQuote(output), \":\\n\", sep = \"\")    stop(conditionMessage(e), call. = FALSE, domain = NA)})\n13: tools:::.run_one_vignette(\"bvpSolve.Rnw\", \"/Volumes/Builds/packages/high-sierra-x86_64/results/4.0/bvpSolve.Rcheck/00_pkg_src/bvpSolve/vignettes\",     encoding = \"latin1\", pkgdir = \"/Volumes/Builds/packages/high-sierra-x86_64/results/4.0/bvpSolve.Rcheck/00_pkg_src/bvpSolve\")\nAn irrecoverable exception occurred. R is aborting now ...\n\n... incomplete output.  Crash?\nwhen running code in ‘bvpTests.Rnw’\n  ...\n 7: withVisible(eval(ei, envir))\n 8: source(output, echo = TRUE)\n 9: doTryCatch(return(expr), name, parentenv, handler)\n10: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n11: tryCatchList(expr, classes, parentenv, handlers)\n12: tryCatch({    source(output, echo = TRUE)}, error = function(e) {    cat(\"\\n  When sourcing \", sQuote(output), \":\\n\", sep = \"\")    stop(conditionMessage(e), call. = FALSE, domain = NA)})\n13: tools:::.run_one_vignette(\"bvpTests.Rnw\", \"/Volumes/Builds/packages/high-sierra-x86_64/results/4.0/bvpSolve.Rcheck/00_pkg_src/bvpSolve/vignettes\",     encoding = \"latin1\", pkgdir = \"/Volumes/Builds/packages/high-sierra-x86_64/results/4.0/bvpSolve.Rcheck/00_pkg_src/bvpSolve\")\nAn irrecoverable exception occurred. R is aborting now ...\n\n... incomplete output.  Crash?\n\n  ‘bvpSolve.Rnw’ using ‘latin1’... failed to complete the test\n  ‘bvpTests.Rnw’ using ‘latin1’... failed to complete the test",
                        "check": "running R code from vignettes",
                        "flavors": [
                            "r-release-osx-x86_64"
                        ]
                    },
                    {
                        "version": "1.4",
                        "output": "Error(s) in re-building vignettes:\nsh: line 1: 16325 Segmentation fault: 11  '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla --no-echo > '/Volumes/Temp/tmp/RtmpY6HYMM/file3f1a4e2d38ec' 2>&1 < '/Volumes/Temp/tmp/RtmpY6HYMM/file3f1a7af4360c'\n--- re-building ‘bvpSolve.Rnw’ using Sweave\nLoading required package: deSolve\n\nAttaching package: ‘bvpSolve’\n\nThe following object is masked from ‘package:stats’:\n\n    approx\n\n\n *** caught segfault ***\naddress 0x0, cause 'memory not mapped'\n\nTraceback:\n 1: bvpsolver(1, yini, x, func, yend, parms, order, ynames, xguess,     yguess, jacfunc, bound, jacbound, leftbc, posbound, islin,     nmax, ncomp, atol, dllname, initfunc, rpar, ipar, nout, outnames,     forcings, initforc, fcontrol, verbose, cond, lobatto, allpoints,     colp = NULL, fullOut = TRUE, bspline = TRUE, eps = NULL,     epsini = NULL, dae = NULL, ...)\n 2: bvptwp(yini = c(-1, NA), yend = c(1, NA), x = x, func = fun)\n 3: system.time(sol2 <- bvptwp(yini = c(-1, NA), yend = c(1, NA),     x = x, func = fun))\n 4: print(system.time(sol2 <- bvptwp(yini = c(-1, NA), yend = c(1,     NA), x = x, func = fun)))\n 5: eval(expr, .GlobalEnv)\n 6: eval(expr, .GlobalEnv)\n 7: withVisible(eval(expr, .GlobalEnv))\n 8: doTryCatch(return(expr), name, parentenv, handler)\n 9: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n10: tryCatchList(expr, classes, parentenv, handlers)\n11: tryCatch(expr, error = function(e) {    call <- conditionCall(e)    if (!is.null(call)) {        if (identical(call[[1L]], quote(doTryCatch)))             call <- sys.call(-4L)        dcall <- deparse(call)[1L]        prefix <- paste(\"Error in\", dcall, \": \")        LONG <- 75L        sm <- strsplit(conditionMessage(e), \"\\n\")[[1L]]        w <- 14L + nchar(dcall, type = \"w\") + nchar(sm[1L], type = \"w\")        if (is.na(w))             w <- 14L + nchar(dcall, type = \"b\") + nchar(sm[1L],                 type = \"b\")        if (w > LONG)             prefix <- paste0(prefix, \"\\n  \")    }    else prefix <- \"Error : \"    msg <- paste0(prefix, conditionMessage(e), \"\\n\")    .Internal(seterrmessage(msg[1L]))    if (!silent && isTRUE(getOption(\"show.error.messages\"))) {        cat(msg, file = outFile)        .Internal(printDeferredWarnings())    }    invisible(structure(msg, class = \"try-error\", condition = e))})\n12: try(withVisible(eval(expr, .GlobalEnv)), silent = TRUE)\n13: evalFunc(ce, options)\n14: tryCatchList(expr, classes, parentenv, handlers)\n15: tryCatch(evalFunc(ce, options), finally = {    cat(\"\\n\")    sink()})\n16: driver$runcode(drobj, chunk, chunkopts)\n17: utils::Sweave(...)\n18: engine$weave(file, quiet = quiet, encoding = enc)\n19: doTryCatch(return(expr), name, parentenv, handler)\n20: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n21: tryCatchList(expr, classes, parentenv, handlers)\n22: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }}, error = function(e) {    OK <<- FALSE    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n23: tools:::.buildOneVignette(\"bvpSolve.Rnw\", \"/Volumes/Builds/packages/high-sierra-x86_64/results/4.0/bvpSolve.Rcheck/vign_test/bvpSolve\",     TRUE, FALSE, \"bvpSolve\", \"latin1\", \"/Volumes/Temp/tmp/RtmpY6HYMM/file3f1a3443c8b2.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\nsh: line 1: 16405 Segmentation fault: 11  '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla --no-echo > '/Volumes/Temp/tmp/RtmpY6HYMM/file3f1a1259e8f6' 2>&1 < '/Volumes/Temp/tmp/RtmpY6HYMM/file3f1a4ccd77e3'\n--- re-building ‘bvpTests.Rnw’ using Sweave\nLoading required package: deSolve\n\nAttaching package: ‘bvpSolve’\n\nThe following object is masked from ‘package:stats’:\n\n    approx\n\n\n *** caught segfault ***\naddress 0x0, cause 'memory not mapped'\n\nTraceback:\n 1: bvpsolver(1, yini, x, func, yend, parms, order, ynames, xguess,     yguess, jacfunc, bound, jacbound, leftbc, posbound, islin,     nmax, ncomp, atol, dllname, initfunc, rpar, ipar, nout, outnames,     forcings, initforc, fcontrol, verbose, cond, lobatto, allpoints,     colp = NULL, fullOut = TRUE, bspline = TRUE, eps = NULL,     epsini = NULL, dae = NULL, ...)\n 2: bvptwp(yini = c(1, NA), yend = c(0, NA), x = seq(0, 1, by = 0.01),     func = Prob1)\n 3: system.time(mod1 <- bvptwp(yini = c(1, NA), yend = c(0, NA),     x = seq(0, 1, by = 0.01), func = Prob1))\n 4: print(system.time(mod1 <- bvptwp(yini = c(1, NA), yend = c(0,     NA), x = seq(0, 1, by = 0.01), func = Prob1)))\n 5: eval(expr, .GlobalEnv)\n 6: eval(expr, .GlobalEnv)\n 7: withVisible(eval(expr, .GlobalEnv))\n 8: doTryCatch(return(expr), name, parentenv, handler)\n 9: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n10: tryCatchList(expr, c",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-release-osx-x86_64"
                        ]
                    },
                    {
                        "version": "1.4",
                        "output": "Errors in running code in vignettes:\nwhen running code in ‘bvpSolve.Rnw’\n  ...\n 7: withVisible(eval(ei, envir))\n 8: source(output, echo = TRUE)\n 9: doTryCatch(return(expr), name, parentenv, handler)\n10: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n11: tryCatchList(expr, classes, parentenv, handlers)\n12: tryCatch({    source(output, echo = TRUE)}, error = function(e) {    cat(\"\\n  When sourcing \", sQuote(output), \":\\n\", sep = \"\")    stop(conditionMessage(e), call. = FALSE, domain = NA)})\n13: tools:::.run_one_vignette(\"bvpSolve.Rnw\", \"/Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/bvpSolve.Rcheck/00_pkg_src/bvpSolve/vignettes\",     encoding = \"latin1\", pkgdir = \"/Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/bvpSolve.Rcheck/00_pkg_src/bvpSolve\")\nAn irrecoverable exception occurred. R is aborting now ...\n\n... incomplete output.  Crash?\nwhen running code in ‘bvpTests.Rnw’\n  ...\n 7: withVisible(eval(ei, envir))\n 8: source(output, echo = TRUE)\n 9: doTryCatch(return(expr), name, parentenv, handler)\n10: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n11: tryCatchList(expr, classes, parentenv, handlers)\n12: tryCatch({    source(output, echo = TRUE)}, error = function(e) {    cat(\"\\n  When sourcing \", sQuote(output), \":\\n\", sep = \"\")    stop(conditionMessage(e), call. = FALSE, domain = NA)})\n13: tools:::.run_one_vignette(\"bvpTests.Rnw\", \"/Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/bvpSolve.Rcheck/00_pkg_src/bvpSolve/vignettes\",     encoding = \"latin1\", pkgdir = \"/Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/bvpSolve.Rcheck/00_pkg_src/bvpSolve\")\nAn irrecoverable exception occurred. R is aborting now ...\n\n... incomplete output.  Crash?\n\n  ‘bvpSolve.Rnw’using ‘latin1’... failed to complete the test\n  ‘bvpTests.Rnw’using ‘latin1’... failed to complete the test",
                        "check": "running R code from vignettes",
                        "flavors": [
                            "r-oldrel-osx-x86_64"
                        ]
                    },
                    {
                        "version": "1.4",
                        "output": "Error(s) in re-building vignettes:\nsh: line 1: 97307 Segmentation fault: 11  '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla --slave > '/tmp/RtmpNfdn0O/file17c165b9f8b87' 2>&1 < '/tmp/RtmpNfdn0O/file17c1647817b0f'\n--- re-building ‘bvpSolve.Rnw’ using Sweave\nLoading required package: deSolve\n\nAttaching package: ‘bvpSolve’\n\nThe following object is masked from ‘package:stats’:\n\n    approx\n\n\n *** caught segfault ***\naddress 0x0, cause 'memory not mapped'\n\nTraceback:\n 1: bvpsolver(1, yini, x, func, yend, parms, order, ynames, xguess,     yguess, jacfunc, bound, jacbound, leftbc, posbound, islin,     nmax, ncomp, atol, dllname, initfunc, rpar, ipar, nout, outnames,     forcings, initforc, fcontrol, verbose, cond, lobatto, allpoints,     colp = NULL, fullOut = TRUE, bspline = TRUE, eps = NULL,     epsini = NULL, dae = NULL, ...)\n 2: bvptwp(yini = c(-1, NA), yend = c(1, NA), x = x, func = fun)\n 3: system.time(sol2 <- bvptwp(yini = c(-1, NA), yend = c(1, NA),     x = x, func = fun))\n 4: print(system.time(sol2 <- bvptwp(yini = c(-1, NA), yend = c(1,     NA), x = x, func = fun)))\n 5: eval(expr, .GlobalEnv)\n 6: eval(expr, .GlobalEnv)\n 7: withVisible(eval(expr, .GlobalEnv))\n 8: doTryCatch(return(expr), name, parentenv, handler)\n 9: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n10: tryCatchList(expr, classes, parentenv, handlers)\n11: tryCatch(expr, error = function(e) {    call <- conditionCall(e)    if (!is.null(call)) {        if (identical(call[[1L]], quote(doTryCatch)))             call <- sys.call(-4L)        dcall <- deparse(call)[1L]        prefix <- paste(\"Error in\", dcall, \": \")        LONG <- 75L        sm <- strsplit(conditionMessage(e), \"\\n\")[[1L]]        w <- 14L + nchar(dcall, type = \"w\") + nchar(sm[1L], type = \"w\")        if (is.na(w))             w <- 14L + nchar(dcall, type = \"b\") + nchar(sm[1L],                 type = \"b\")        if (w > LONG)             prefix <- paste0(prefix, \"\\n  \")    }    else prefix <- \"Error : \"    msg <- paste0(prefix, conditionMessage(e), \"\\n\")    .Internal(seterrmessage(msg[1L]))    if (!silent && isTRUE(getOption(\"show.error.messages\"))) {        cat(msg, file = outFile)        .Internal(printDeferredWarnings())    }    invisible(structure(msg, class = \"try-error\", condition = e))})\n12: try(withVisible(eval(expr, .GlobalEnv)), silent = TRUE)\n13: evalFunc(ce, options)\n14: tryCatchList(expr, classes, parentenv, handlers)\n15: tryCatch(evalFunc(ce, options), finally = {    cat(\"\\n\")    sink()})\n16: driver$runcode(drobj, chunk, chunkopts)\n17: utils::Sweave(...)\n18: engine$weave(file, quiet = quiet, encoding = enc)\n19: doTryCatch(return(expr), name, parentenv, handler)\n20: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n21: tryCatchList(expr, classes, parentenv, handlers)\n22: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }}, error = function(e) {    OK <<- FALSE    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n23: tools:::.buildOneVignette(\"bvpSolve.Rnw\", \"/Volumes/SSD-Data/Builds/R-dev-web/QA/Simon/packages/el-capitan-x86_64/results/3.6/bvpSolve.Rcheck/vign_test/bvpSolve\",     TRUE, FALSE, \"bvpSolve\", \"latin1\", \"/tmp/RtmpNfdn0O/file17c1638e17c2d.rds\")\nAn irrecoverable exception occurred. R is aborting now ...\nsh: line 1: 97313 Segmentation fault: 11  '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla --slave > '/tmp/RtmpNfdn0O/file17c167eb81be7' 2>&1 < '/tmp/RtmpNfdn0O/file17c1669301baf'\n--- re-building ‘bvpTests.Rnw’ using Sweave\nLoading required package: deSolve\n\nAttaching package: ‘bvpSolve’\n\nThe following object is masked from ‘package:stats’:\n\n    approx\n\n\n *** caught segfault ***\naddress 0x0, cause 'memory not mapped'\n\nTraceback:\n 1: bvpsolver(1, yini, x, func, yend, parms, order, ynames, xguess,     yguess, jacfunc, bound, jacbound, leftbc, posbound, islin,     nmax, ncomp, atol, dllname, initfunc, rpar, ipar, nout, outnames,     forcings, initforc, fcontrol, verbose, cond, lobatto, allpoints,     colp = NULL, fullOut = TRUE, bspline = TRUE, eps = NULL,     epsini = NULL, dae = NULL, ...)\n 2: bvptwp(yini = c(1, NA), yend = c(0, NA), x = seq(0, 1, by = 0.01),     func = Prob1)\n 3: system.time(mod1 <- bvptwp(yini = c(1, NA), yend = c(0, NA),     x = seq(0, 1, by = 0.01), func = Prob1))\n 4: print(system.time(mod1 <- bvptwp(yini = c(1, NA), yend = c(0,     NA), x = seq(0, 1, by = 0.01), func = Prob1)))\n 5: eval(expr, .GlobalEnv)\n 6: eval(expr, .GlobalEnv)\n 7: withVisible(eval(expr, .GlobalEnv))\n 8: doTryCatch(return(expr), name, parentenv, handler)\n 9: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n10: tryCatchList(expr, classes, parentenv, handlers)\n11: tryC",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-oldrel-osx-x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "mxmmod",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": {
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.0.1",
                    "tinstall": 2.4,
                    "tcheck": 56.33,
                    "ttotal": 58.73,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/mxmmod-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.0.1",
                    "tinstall": 1.85,
                    "tcheck": 40.37,
                    "ttotal": 42.22,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/mxmmod-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 76.32,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/mxmmod-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 65.81,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/mxmmod-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.0.1",
                    "tinstall": 9,
                    "tcheck": 84,
                    "ttotal": 93,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/mxmmod-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.0.1",
                    "tinstall": 2.4,
                    "tcheck": 52.58,
                    "ttotal": 54.98,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/mxmmod-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 97.2,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/mxmmod-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.0.1",
                    "tinstall": 2.14,
                    "tcheck": 51.94,
                    "ttotal": 54.08,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/mxmmod-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/mxmmod-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.0.1",
                    "tinstall": 21,
                    "tcheck": 90,
                    "ttotal": 111,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/mxmmod-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.0.1",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/mxmmod-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.0.1",
                    "tinstall": 6,
                    "tcheck": 79,
                    "ttotal": 85,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/mxmmod-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "1.0.1",
                        "output": "Running examples in ‘mxmmod-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: mxMmodModel\n> ### Title: Create an MMOD\n> ### Aliases: mxMmodModel\n> \n> ### ** Examples\n> \n> data(nlsy97depression)\n> # Fit one factor MMOD\n> structure <- list(\n+   F1 = c('nervous', 'down', 'depressed', 'calm', 'happy')\n+ )\n> mmod_model <- mxMmodModel(data=nlsy97depression,\n+                           modelName='1 Factor MMOD',\n+                           idvar='pid', timevar='occasion', structure=structure)\nWarning in mxMmodModel(data = nlsy97depression, modelName = \"1 Factor MMOD\",  :\n  Missing values detected; omitting them.\n> mmod_fit <- OpenMx::mxRun(mmod_model)\nRunning 1 Factor MMOD with 33 parameters\nError: C stack usage  270832788 is too close to the limit\n\n *** caught segfault ***\naddress b3a32d24, cause 'memory not mapped'\n\nTraceback:\n 1: runHelper(model, frontendStart, intervals, silent, suppressWarnings,     unsafe, checkpoint, useSocket, onlyFrontend, useOptimizer,     beginMessage)\n 2: OpenMx::mxRun(mmod_model)\nAn irrecoverable exception occurred. R is aborting now ...",
                        "check": "examples",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "1.0.1",
                        "output": "  Running ‘testthat.R’ [13s/39s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(mxmmod)\n  > \n  > test_check(\"mxmmod\")\n  Error: C stack usage  271357076 is too close to the limit\n  ── 1. Error: Same results as Estabrook 2015 (@test-refimpl.R#104)  ─────────────\n  The job for model '1 Factor MMOD' exited abnormally with the error message: User interrupt\n  Backtrace:\n   1. mxmmod:::mxmmod_ref(df)\n   3. OpenMx::mxRun(mmod_model)\n   4. OpenMx:::runHelper(...)\n   5. OpenMx:::processErrorConditions(model, unsafe, suppressWarnings)\n  \n  Error: C stack usage  271357076 is too close to the limit\n  ── 2. Error: Floating point occasions (@test-refimpl.R#123)  ───────────────────\n  The job for model '1 Factor MMOD' exited abnormally with the error message: User interrupt\n  Backtrace:\n   1. mxmmod:::mxmmod_ref(scaled_nlsy)\n   3. OpenMx::mxRun(mmod_model)\n   4. OpenMx:::runHelper(...)\n   5. OpenMx:::processErrorConditions(model, unsafe, suppressWarnings)\n  \n  \n   *** caught segfault ***\n  address 0, cause 'memory not mapped'\n  \n  Traceback:\n   1: runHelper(model, frontendStart, intervals, silent, suppressWarnings,     unsafe, checkpoint, useSocket, onlyFrontend, useOptimizer,     beginMessage)\n   2: mxRun(mmod_model)\n   3: summary(mxRun(mmod_model))\n   4: mxmmod_ref(df, do_fiml = T)\n   5: eval(code, test_env)\n   6: eval(code, test_env)\n   7: withCallingHandlers({    eval(code, test_env)    if (!handled && !is.null(test)) {        skip_empty()    }}, expectation = handle_expectation, skip = handle_skip, warning = handle_warning,     message = handle_message, error = handle_error)\n   8: doTryCatch(return(expr), name, parentenv, handler)\n   9: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n  10: tryCatchList(expr, names[-nh], parentenv, handlers[-nh])\n  11: doTryCatch(return(expr), name, parentenv, handler)\n  12: tryCatchOne(tryCatchList(expr, names[-nh], parentenv, handlers[-nh]),     names[nh], parentenv, handlers[[nh]])\n  13: tryCatchList(expr, classes, parentenv, handlers)\n  14: tryCatch(withCallingHandlers({    eval(code, test_env)    if (!handled && !is.null(test)) {        skip_empty()    }}, expectation = handle_expectation, skip = handle_skip, warning = handle_warning,     message = handle_message, error = handle_error), error = handle_fatal,     skip = function(e) {    })\n  15: test_code(desc, code, env = parent.frame())\n  16: test_that(\"FIML\", {    df <- na.omit(nlsy97_1983_cohort())    a <- mxmmod_ref(df, do_fiml = T)    b <- estabrook_ref(df)    expect_equal(a$parameters$Estimate[1:33], b$parameters$Estimate,         tolerance = 0.05)    expect_equal(a$parameters$Std.Error[1:33], b$parameters$Std.Error,         tolerance = 0.01)})\n  17: eval(code, test_env)\n  18: eval(code, test_env)\n  19: withCallingHandlers({    eval(code, test_env)    if (!handled && !is.null(test)) {        skip_empty()    }}, expectation = handle_expectation, skip = handle_skip, warning = handle_warning,     message = handle_message, error = handle_error)\n  20: doTryCatch(return(expr), name, parentenv, handler)\n  21: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n  22: tryCatchList(expr, names[-nh], parentenv, handlers[-nh])\n  23: doTryCatch(return(expr), name, parentenv, handler)\n  24: tryCatchOne(tryCatchList(expr, names[-nh], parentenv, handlers[-nh]),     names[nh], parentenv, handlers[[nh]])\n  25: tryCatchList(expr, classes, parentenv, handlers)\n  26: tryCatch(withCallingHandlers({    eval(code, test_env)    if (!handled && !is.null(test)) {        skip_empty()    }}, expectation = handle_expectation, skip = handle_skip, warning = handle_warning,     message = handle_message, error = handle_error), error = handle_fatal,     skip = function(e) {    })\n  27: test_code(NULL, exprs, env)\n  28: source_file(path, new.env(parent = env), chdir = TRUE, wrap = wrap)\n  29: force(code)\n  30: doWithOneRestart(return(expr), restart)\n  31: withOneRestart(expr, restarts[[1L]])\n  32: withRestarts(testthat_abort_reporter = function() NULL, force(code))\n  33: with_reporter(reporter = reporter, start_end_reporter = start_end_reporter,     {        reporter$start_file(basename(path))        lister$start_file(basename(path))        source_file(path, new.env(parent = env), chdir = TRUE,             wrap = wrap)        reporter$.end_context()        reporter$end_file()    })\n  34: FUN(X[[i]], ...)\n  35: lapply(paths, test_file, env = env, reporter = current_reporter,     start_end_reporter = FALSE, load_helpers = FALSE, wrap = wrap)\n  36: force(code)\n  37: doWithOneRestart(return(expr), restart)\n  38: withOneRestart(expr, restarts[[1L]])\n  39: withRestarts(testthat_abort_reporter = function() NULL, force(code))\n  40: with_reporter(reporter = current_reporter, results <- lapply(paths,     test_file, env = env, reporter = current_reporter, start_end_reporter = FALSE,     load_helpers = FALSE, wrap = wrap))\n  41: test_files(paths, reporter = reporter, env = env, stop_on_failure = stop_on_failure,     ",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "1.0.1",
                        "output": "Error(s) in re-building vignettes:\n  ...\n--- re-building ‘mmod_tutorial.Rmd’ using rmarkdown\nWarning in engine$weave(file, quiet = quiet, encoding = enc) :\n  Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.\n── Attaching packages ─────────────────────────────────────── tidyverse 1.3.0 ──\n✔ ggplot2 3.3.1     ✔ purrr   0.3.4\n✔ tibble  3.0.1     ✔ dplyr   1.0.0\n✔ tidyr   1.1.0     ✔ stringr 1.4.0\n✔ readr   1.3.1     ✔ forcats 0.5.0\n── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──\n✖ dplyr::filter() masks stats::filter()\n✖ dplyr::lag()    masks stats::lag()\nTo take full advantage of multiple cores, use:\n  mxOption(key='Number of Threads', value=parallel::detectCores()) #now\n  Sys.setenv(OMP_NUM_THREADS=parallel::detectCores()) #before library(OpenMx)\n\n *** caught segfault ***\naddress 6898bb96, cause 'memory not mapped'\n\nTraceback:\n 1: runHelper(model, frontendStart, intervals, silent, suppressWarnings,     unsafe, checkpoint, useSocket, onlyFrontend, useOptimizer,     beginMessage)\n 2: mxRun(mmod_model)\n 3: eval(expr, envir, enclos)\n 4: eval(expr, envir, enclos)\n 5: withVisible(eval(expr, envir, enclos))\n 6: withCallingHandlers(withVisible(eval(expr, envir, enclos)), warning = wHandler,     error = eHandler, message = mHandler)\n 7: handle(ev <- withCallingHandlers(withVisible(eval(expr, envir,     enclos)), warning = wHandler, error = eHandler, message = mHandler))\n 8: timing_fn(handle(ev <- withCallingHandlers(withVisible(eval(expr,     envir, enclos)), warning = wHandler, error = eHandler, message = mHandler)))\n 9: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)\n10: evaluate::evaluate(...)\n11: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))\n12: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))\n13: block_exec(params)\n14: call_block(x)\n15: process_group.block(group)\n16: process_group(group)\n17: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = \"\\n\", file = output %n% \"\")        message(\"Quitting from lines \", paste(current_lines(i),             collapse = \"-\"), \" (\", knit_concord$get(\"infile\"),             \") \")    })\n18: process_file(text, output)\n19: knit(input, text = text, envir = envir, quiet = quiet)\n20: knit2html(..., force_v1 = TRUE)\n21: (if (grepl(\"\\\\.[Rr]md$\", file)) knit2html_v1 else if (grepl(\"\\\\.[Rr]rst$\",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv(), ...)\n22: vweave(...)\n23: engine$weave(file, quiet = quiet, encoding = enc)\n24: doTryCatch(return(expr), name, parentenv, handler)\n25: tryCatchOne(expr, names, parentenv, handlers[[1L]])\n26: tryCatchList(expr, classes, parentenv, handlers)\n27: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    output <- find_vignette_product(name, by = \"weave\", engine = engine)    if (!have.makefile && vignette_is_tex(output)) {        texi2pdf(file = output, clean = FALSE, quiet = quiet)        output <- find_vignette_product(name, by = \"texi2pdf\",             engine = engine)    }    outputs <- c(outputs, output)}, error = function(e) {    thisOK <<- FALSE    fails <<- c(fails, file)    message(gettextf(\"Error: processing vignette '%s' failed with diagnostics:\\n%s\",         file, conditionMessage(e)))})\n28: tools:::buildVignettes(dir = \"/home/ripley/R/packages/tests32/mxmmod.Rcheck/vign_test/mxmmod\",     ser_elibs = \"/tmp/RtmplRaytw/file2c9b21291b44.rds\")\nAn irrecoverable exception occurred. R is aborting now ...",
                        "check": "re-building of vignette outputs",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "ifa",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 11,
                "warn": 0,
                "error": 1,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "7.0",
                    "tinstall": 7.29,
                    "tcheck": 21.86,
                    "ttotal": 29.15,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/ifa-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "7.0",
                    "tinstall": 6.42,
                    "tcheck": 17.49,
                    "ttotal": 23.91,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/ifa-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "7.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 46.16,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/ifa-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "7.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 36.97,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/ifa-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "7.0",
                    "tinstall": 20,
                    "tcheck": 67,
                    "ttotal": 87,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/ifa-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "7.0",
                    "tinstall": 7.32,
                    "tcheck": 22,
                    "ttotal": 29.32,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/ifa-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "7.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 73.2,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/ifa-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "7.0",
                    "tinstall": 6.59,
                    "tcheck": 22.04,
                    "ttotal": 28.63,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/ifa-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "7.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/ifa-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "7.0",
                    "tinstall": 16,
                    "tcheck": 48,
                    "ttotal": 64,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/ifa-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "7.0",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/ifa-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "7.0",
                    "tinstall": 13,
                    "tcheck": 58,
                    "ttotal": 71,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/ifa-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "7.0",
                        "output": "Malformed Description field: should contain one or more complete sentences.",
                        "check": "DESCRIPTION meta-information",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "7.0",
                        "output": "NB: .First.lib is obsolete and will not be used in R >= 3.0.0\n\nifa.em: no visible global function definition for 'runif'\nifa.init.pca: no visible global function definition for 'var'\nifa.init.pca: no visible global function definition for 'cor'\nifa.init.pca: no visible global function definition for 'runif'\nifa.init.random: no visible global function definition for 'runif'\nifa.init.random: no visible global function definition for 'var'\nUndefined global functions or variables:\n  cor runif var\nConsider adding\n  importFrom(\"stats\", \"cor\", \"runif\", \"var\")\nto your NAMESPACE file.",
                        "check": "R code for possible problems",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "7.0",
                        "output": "File ‘ifa/libs/ifa.so’:\n  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’\n\nIt is good practice to register native routines and to disable symbol\nsearch.\n\nSee ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.",
                        "check": "compiled code",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc"
                        ]
                    },
                    {
                        "version": "7.0",
                        "output": "Running examples in ‘ifa-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: ifa.bic\n> ### Title: A function to compute the BIC\n> ### Aliases: ifa.bic\n> ### Keywords: multivariate\n> \n> ### ** Examples\n> \n> data(memory)\n\n *** caught segfault ***\naddress 144959bc, cause 'memory not mapped'\n\nTraceback:\n 1: sub(\".*\\\\.\", \"\", x)\n 2: fileExt(file)\n 3: data(memory)\nAn irrecoverable exception occurred. R is aborting now ...",
                        "check": "examples",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        }
    ]
}
```


```r
cchecks::cch_pkgs_search(q = "memory")
```
```r
$error
NULL

$count
[1] 539

$returned
[1] 30

$data
[90m# A tibble: 30 x 5[39m
   package date_updated summary$any   $ok $note $warn $error $fail checks
   [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m 1[39m allan   2020-06-06T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 2[39m allan   2020-06-07T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 3[39m cluste… 2020-06-06T… TRUE            0    11     0      1     0 [90m<df[,[0m…
[90m 4[39m cluste… 2020-06-07T… TRUE            0    11     0      1     0 [90m<df[,[0m…
[90m 5[39m move    2020-06-06T… TRUE            5     2     0      5     0 [90m<df[,[0m…
[90m 6[39m bvpSol… 2020-06-06T… TRUE           10     0     0      2     0 [90m<df[,[0m…
[90m 7[39m move    2020-06-07T… TRUE            5     2     0      5     0 [90m<df[,[0m…
[90m 8[39m bvpSol… 2020-06-07T… TRUE           10     0     0      2     0 [90m<df[,[0m…
[90m 9[39m mxmmod  2020-06-06T… TRUE           11     0     0      1     0 [90m<df[,[0m…
[90m10[39m ifa     2020-06-06T… TRUE            0    11     0      1     0 [90m<df[,[0m…
[90m# … with 20 more rows, and 7 more variables: check_details$details [3m[90m<list>[90m[23m,[39m
[90m#   $additional_issues [3m[90m<list>[90m[23m, $version [3m[90m<chr>[90m[23m, $check [3m[90m<chr>[90m[23m, $result [3m[90m<chr>[90m[23m,[39m
[90m#   $output [3m[90m<chr>[90m[23m, $flavors [3m[90m<list>[90m[23m[39m

```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&limit=2 | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 23916
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 08 Jun 2020 12:37:27 GMT

```
```json
{
    "error": null,
    "count": 54,
    "returned": 2,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": {
                "any": true,
                "ok": 0,
                "note": 9,
                "warn": 0,
                "error": 3,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "1.01",
                    "tinstall": 2.81,
                    "tcheck": 32.04,
                    "ttotal": 34.85,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.31,
                    "tcheck": 26.11,
                    "ttotal": 28.42,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 51.32,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 41.22,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 8,
                    "tcheck": 50,
                    "ttotal": 58,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.78,
                    "tcheck": 32.05,
                    "ttotal": 34.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 67.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.04,
                    "tcheck": 32.14,
                    "ttotal": 35.18,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 68,
                    "ttotal": 74,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 8,
                    "tcheck": 47,
                    "ttotal": 55,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/allan-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "1.01",
                        "output": "Malformed Description field: should contain one or more complete sentences.",
                        "check": "DESCRIPTION meta-information",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "allanVarSelect: no visible global function definition for 'read.csv'\nfitvbiglm: no visible global function definition for 'read.csv'\nfitvbiglm: no visible global function definition for 'update'\ngetbestchunksize: no visible global function definition for 'read.csv'\ngetbestchunksize: no visible global function definition for\n  'object.size'\npredictvbiglm: no visible global function definition for 'read.csv'\npredictvbiglm: no visible global function definition for 'predict'\npredictvbiglm: no visible global function definition for\n  'weighted.mean'\nreadinbigdata : <anonymous>: no visible global function definition for\n  'read.csv'\nUndefined global functions or variables:\n  object.size predict read.csv update weighted.mean\nConsider adding\n  importFrom(\"stats\", \"predict\", \"update\", \"weighted.mean\")\n  importFrom(\"utils\", \"object.size\", \"read.csv\")\nto your NAMESPACE file.",
                        "check": "R code for possible problems",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "prepare_Rd: allan-package.Rd:49-51: Dropping empty section \\seealso\nprepare_Rd: allanVarSelect.Rd:59-60: Dropping empty section \\details\nprepare_Rd: allanVarSelect.Rd:66-67: Dropping empty section \\references\nprepare_Rd: allanVarSelect.Rd:78-79: Dropping empty section \\seealso\nprepare_Rd: fitvbiglm.Rd:38-39: Dropping empty section \\details\nprepare_Rd: fitvbiglm.Rd:49-50: Dropping empty section \\note\nprepare_Rd: fitvbiglm.Rd:43-44: Dropping empty section \\references\nprepare_Rd: fitvbiglm.Rd:53-54: Dropping empty section \\seealso\nprepare_Rd: getbestchunksize.Rd:35-36: Dropping empty section \\details\nprepare_Rd: getbestchunksize.Rd:46-47: Dropping empty section \\note\nprepare_Rd: getbestchunksize.Rd:40-41: Dropping empty section \\references\nprepare_Rd: getbestchunksize.Rd:50-51: Dropping empty section \\seealso\nprepare_Rd: predictvbiglm.Rd:44-45: Dropping empty section \\details\nprepare_Rd: predictvbiglm.Rd:56-57: Dropping empty section \\note\nprepare_Rd: predictvbiglm.Rd:50-51: Dropping empty section \\references\nprepare_Rd: predictvbiglm.Rd:60-61: Dropping empty section \\seealso\nprepare_Rd: readinbigdata.Rd:42-43: Dropping empty section \\note\nprepare_Rd: readinbigdata.Rd:45-46: Dropping empty section \\seealso",
                        "check": "Rd files",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-devel-windows-ix86+x86_64",
                            "r-patched-linux-x86_64",
                            "r-patched-solaris-x86",
                            "r-release-linux-x86_64",
                            "r-release-osx-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-osx-x86_64",
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Rd file 'allan-package.Rd':\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=smallchunk,weights=~cont0)\n\nRd file 'allanVarSelect.Rd':\n  \\usage lines wider than 90 characters:\n     allanVarSelect(BaseModel, TrnDataSetFile, ValDataSetFile, ResponseCol = 1, NumOfSteps = 10, criteria = \"AIC\", currentchunksize = -1, si ... [TRUNCATED]\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n\nRd file 'fitvbiglm.Rd':\n  \\usage lines wider than 90 characters:\n     fitvbiglm(BaseModel, filename, currentchunksize = -1, silent = TRUE, MemoryAllowed = 0.5, TestedRows = 1000, AdjFactor = 0.095)\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n\nRd file 'getbestchunksize.Rd':\n  \\usage lines wider than 90 characters:\n     getbestchunksize(filename, MemoryAllowed = 0.5, TestedRows = 1000, AdjFactor = 0.095, silent = TRUE)\n  \\examples lines wider than 100 characters:\n             #This is done by reading in a number of rows(1000 by default)and then measuring the size of the memory\n             #used.  Memory allwed is specified in Gb.  The adjfactor is a factor used to adjust memory for overhead\n\nRd file 'predictvbiglm.Rd':\n  \\usage lines wider than 90 characters:\n     predictvbiglm(BaseModel, ValFileName, currentchunksize = -1, ResponseCol = 1, silent = TRUE, MemoryAllowed = 0.5, TestedRows = 1000, Ad ... [TRUNCATED]\n  \\examples lines wider than 100 characters:\n     bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n     predictvbiglm<-function(BaseModel,ValFileName,currentchunksize=-1,ResponseCol=1,silent=TRUE,MemoryAllowed=0.5,TestedRows=1000,AdjFactor ... [TRUNCATED]\n                     currentchunksize<-getbestchunksize(ValFileName,MemoryAllowed=MemoryAllowed,TestedRows=TestedRows,AdjFactor=AdjFactor,si ... [TRUNCATED]\n                             weightvector<-as.vector(eval(parse(text=paste(\"CurrentDataSet\",\"$\",weightname,sep=\"\"))))\n                     CurrentVariance=sum(((CurrentDataSet[,ResponseCol]-CurrentMean)^2)*weightvector)/sum(weightvector)\n\nRd file 'readinbigdata.Rd':\n  \\examples lines wider than 100 characters:\n             #The return value is either the next chunk of data or NULL if there is no additional data left.\n             #Additionally if a reset=TRUE flag is passed, then the data stream goes back to the beginning.\n\nThese lines will be truncated in the PDF manual.",
                        "check": "Rd line widths",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang",
                            "r-devel-linux-x86_64-debian-gcc",
                            "r-devel-linux-x86_64-fedora-clang",
                            "r-devel-linux-x86_64-fedora-gcc",
                            "r-patched-linux-x86_64",
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpkR6d3Z/RLIBS_e6d44df74e5b/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpkR6d3Z/RLIBS_e6d44df74e5b/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpgj63MA/RLIBS_22004641a1e91/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpgj63MA/RLIBS_22004641a1e91/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpW8NuS5/RLIBS_23dd4e8681b/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpW8NuS5/RLIBS_23dd4e8681b/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": [

                ]
            }
        },
        {
            "package": "aws",
            "date_updated": "2020-05-09T15:03:14.000Z",
            "summary": {
                "any": true,
                "ok": 11,
                "note": 0,
                "warn": 0,
                "error": 1,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "2.4-2",
                    "tinstall": 23.11,
                    "tcheck": 109.92,
                    "ttotal": 133.03,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "2.4-2",
                    "tinstall": 20.83,
                    "tcheck": 81.49,
                    "ttotal": 102.32,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 162.76,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/aws-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 155.6,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/aws-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "2.4-2",
                    "tinstall": 63,
                    "tcheck": 130,
                    "ttotal": 193,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "2.4-2",
                    "tinstall": 22.49,
                    "tcheck": 105.22,
                    "ttotal": 127.71,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 200.6,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/aws-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "2.4-2",
                    "tinstall": 22.12,
                    "tcheck": 104.62,
                    "ttotal": 126.74,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-release-osx-x86_64",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-osx-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "2.4-2",
                    "tinstall": 50,
                    "tcheck": 101,
                    "ttotal": 151,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-oldrel-osx-x86_64",
                    "version": "2.4-2",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-osx-x86_64/aws-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "2.4-2",
                    "tinstall": 62,
                    "tcheck": 123,
                    "ttotal": 185,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/aws-00check.html"
                }
            ],
            "check_details": {
                "version": "2.4-2",
                "check": "running R code from vignettes",
                "result": "ERROR",
                "output": "Errors in running code in vignettes:\nwhen running code in ‘aws-Example.Rnw’\n  ...\n> yhat0 <- kernsm(y1, h = 10)\n\n> yhat1 <- aws(y1, hmax = 100)\nRunning PS with lambda= 14.6  hmax= 100 number of iterations: 22  memory step OFF \nEstimated variance:  0.0845 \nProgress:step 1 hakt 1.03 \nOMP: Error #15: Initializing libomp.dylib, but found libomp.dylib already initialized.\nOMP: Hint This means that multiple copies of the OpenMP runtime have been linked into the program. That is dangerous, since it can degrade performance or cause incorrect results. The best thing to do is to ensure that only a single OpenMP runtime is linked into the process, e.g. by avoiding static linking of the OpenMP runtime in any library. As an unsafe, unsupported, undocumented workaround you can set the environment variable KMP_DUPLICATE_LIB_OK=TRUE to allow the program to continue to execute, but that may cause crashes or silently produce incorrect results. For more information, please see http://openmp.llvm.org/\n\n... incomplete output.  Crash?\n\n  ‘aws-Example.Rnw’... failed to complete the test",
                "flavors": [
                    "r-oldrel-osx-x86_64"
                ],
                "additional_issues": [

                ]
            }
        }
    ]
}
```


```r
cchecks::cch_pkgs_search(q = "memory", one_each = TRUE, limit = 2)
```
```r
$error
NULL

$count
[1] 54

$returned
[1] 2

$data
[90m# A tibble: 2 x 5[39m
  package date_updated summary$any   $ok $note $warn $error $fail checks
  [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m1[39m allan   2020-06-06T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m2[39m aws     2020-05-09T… TRUE           11     0     0      1     0 [90m<df[,[0m…
[90m# … with 7 more variables: check_details$details [3m[90m<list>[90m[23m,[39m
[90m#   $additional_issues [3m[90m<list>[90m[23m, $version [3m[90m<chr>[90m[23m, $check [3m[90m<chr>[90m[23m, $result [3m[90m<chr>[90m[23m,[39m
[90m#   $output [3m[90m<chr>[90m[23m, $flavors [3m[90m<list>[90m[23m[39m

```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&fields=package | jq .
```
```yaml
HTTP/1.1 200 OK
Access-Control-Allow-Methods: HEAD, GET
Access-Control-Allow-Origin: *
Cache-Control: public, must-revalidate, max-age=60
Content-Length: 1195
Content-Type: application/json; charset=utf8
Server: Caddy
X-Content-Type-Options: nosniff
Date: Mon, 08 Jun 2020 12:37:29 GMT

```
```json
{
    "error": null,
    "count": 54,
    "returned": 10,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "aws",
            "date_updated": "2020-05-09T15:03:14.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bayesCT",
            "date_updated": "2020-05-12T15:03:16.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bigsparser",
            "date_updated": "2020-05-28T15:03:12.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "blockmodeling",
            "date_updated": "2020-05-09T15:03:14.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bvpSolve",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "clusternor",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cooccurNet",
            "date_updated": "2020-06-06T16:04:14.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "corr2D",
            "date_updated": "2020-05-16T15:03:16.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cusum",
            "date_updated": "2020-05-09T15:03:15.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        }
    ]
}
```


```r
cchecks::cch_pkgs_search(q = "memory", one_each = TRUE, fields = "package")
```
```r
$error
NULL

$count
[1] 54

$returned
[1] 30

$data
[90m# A tibble: 30 x 5[39m
   package       date_updated             summary checks check_details
   [3m[90m<chr>[39m[23m         [3m[90m<chr>[39m[23m                    [3m[90m<lgl>[39m[23m   [3m[90m<lgl>[39m[23m  [3m[90m<lgl>[39m[23m        
[90m 1[39m allan         2020-06-06T16:04:14.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 2[39m aws           2020-05-09T15:03:14.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 3[39m bayesCT       2020-05-12T15:03:16.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 4[39m bigsparser    2020-05-28T15:03:12.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 5[39m blockmodeling 2020-05-09T15:03:14.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 6[39m bvpSolve      2020-06-06T16:04:14.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 7[39m clusternor    2020-06-06T16:04:14.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 8[39m cooccurNet    2020-06-06T16:04:14.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 9[39m corr2D        2020-05-16T15:03:16.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m10[39m cusum         2020-05-09T15:03:15.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m# … with 20 more rows[39m

```
