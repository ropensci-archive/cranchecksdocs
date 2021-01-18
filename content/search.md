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
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 198862
date: Mon, 18 Jan 2021 13:34:59 GMT

```
```json
{
    "error": null,
    "count": 1312,
    "returned": 10,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-12-19T15:03:46.000Z",
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
                    "tinstall": 3.12,
                    "tcheck": 33.95,
                    "ttotal": 37.07,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.21,
                    "tcheck": 27.61,
                    "ttotal": 29.82,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 55.86,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 7,
                    "tcheck": 56,
                    "ttotal": 63,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.03,
                    "tcheck": 33.15,
                    "ttotal": 36.18,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 72.6,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.82,
                    "tcheck": 32.69,
                    "ttotal": 35.51,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 5,
                    "tcheck": 44,
                    "ttotal": 49,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 4,
                    "tcheck": 56,
                    "ttotal": 60,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpw3Qwsc/RLIBS_b627c072bb3a84/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpw3Qwsc/RLIBS_b627c072bb3a84/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpq4JFjl/RLIBS_705f643cb03201/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpq4JFjl/RLIBS_705f643cb03201/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpUZ1rpl/RLIBS_af4e41a7340b2/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpUZ1rpl/RLIBS_af4e41a7340b2/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-12-20T15:03:46.000Z",
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
                    "tinstall": 3.12,
                    "tcheck": 33.95,
                    "ttotal": 37.07,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.17,
                    "tcheck": 27.08,
                    "ttotal": 29.25,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 56.84,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 7,
                    "tcheck": 56,
                    "ttotal": 63,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.18,
                    "tcheck": 33.09,
                    "ttotal": 36.27,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 72.6,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.82,
                    "tcheck": 32.69,
                    "ttotal": 35.51,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 5,
                    "tcheck": 44,
                    "ttotal": 49,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 4,
                    "tcheck": 56,
                    "ttotal": 60,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpw3Qwsc/RLIBS_b627c072bb3a84/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpw3Qwsc/RLIBS_b627c072bb3a84/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpq4JFjl/RLIBS_705f643cb03201/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpq4JFjl/RLIBS_705f643cb03201/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpUZ1rpl/RLIBS_af4e41a7340b2/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpUZ1rpl/RLIBS_af4e41a7340b2/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-12-21T15:03:46.000Z",
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
                    "tinstall": 2.52,
                    "tcheck": 34.4,
                    "ttotal": 36.92,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.27,
                    "tcheck": 27,
                    "ttotal": 29.27,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 56.84,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 7,
                    "tcheck": 56,
                    "ttotal": 63,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.18,
                    "tcheck": 33.09,
                    "ttotal": 36.27,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 72.6,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.82,
                    "tcheck": 32.69,
                    "ttotal": 35.51,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 5,
                    "tcheck": 44,
                    "ttotal": 49,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 4,
                    "tcheck": 55,
                    "ttotal": 59,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpw3Qwsc/RLIBS_b627c072bb3a84/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpw3Qwsc/RLIBS_b627c072bb3a84/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpq4JFjl/RLIBS_705f643cb03201/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpq4JFjl/RLIBS_705f643cb03201/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpqmoeTz/RLIBS_8a5d4049f25a8a/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpqmoeTz/RLIBS_8a5d4049f25a8a/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-12-22T15:03:50.000Z",
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
                    "tinstall": 2.52,
                    "tcheck": 34.4,
                    "ttotal": 36.92,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.02,
                    "tcheck": 26.98,
                    "ttotal": 29,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 56.84,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 51,
                    "ttotal": 57,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.18,
                    "tcheck": 33.09,
                    "ttotal": 36.27,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 72.6,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.93,
                    "tcheck": 32.65,
                    "ttotal": 35.58,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 5,
                    "tcheck": 44,
                    "ttotal": 49,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 4,
                    "tcheck": 55,
                    "ttotal": 59,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpq4JFjl/RLIBS_705f643cb03201/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpq4JFjl/RLIBS_705f643cb03201/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpqmoeTz/RLIBS_8a5d4049f25a8a/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpqmoeTz/RLIBS_8a5d4049f25a8a/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-12-23T15:03:51.000Z",
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
                    "tinstall": 2.52,
                    "tcheck": 34.4,
                    "ttotal": 36.92,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.34,
                    "tcheck": 26.95,
                    "ttotal": 29.29,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 56.84,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 51,
                    "ttotal": 57,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.58,
                    "tcheck": 32.52,
                    "ttotal": 35.1,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.93,
                    "tcheck": 32.65,
                    "ttotal": 35.58,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 7,
                    "tcheck": 44,
                    "ttotal": 51,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 4,
                    "tcheck": 55,
                    "ttotal": 59,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpqmoeTz/RLIBS_8a5d4049f25a8a/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpqmoeTz/RLIBS_8a5d4049f25a8a/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-12-24T15:03:50.000Z",
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
                    "tinstall": 3.01,
                    "tcheck": 33.83,
                    "ttotal": 36.84,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.15,
                    "tcheck": 26.76,
                    "ttotal": 28.91,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 56.84,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 51,
                    "ttotal": 57,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.58,
                    "tcheck": 32.52,
                    "ttotal": 35.1,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.48,
                    "tcheck": 33.06,
                    "ttotal": 35.54,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 7,
                    "tcheck": 44,
                    "ttotal": 51,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 4,
                    "tcheck": 55,
                    "ttotal": 59,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpqmoeTz/RLIBS_8a5d4049f25a8a/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpqmoeTz/RLIBS_8a5d4049f25a8a/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-12-25T15:03:55.000Z",
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
                    "tinstall": 2.79,
                    "tcheck": 33.89,
                    "ttotal": 36.68,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.3,
                    "tcheck": 27.05,
                    "ttotal": 29.35,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 56.84,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 51,
                    "ttotal": 57,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.77,
                    "tcheck": 32.71,
                    "ttotal": 35.48,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.48,
                    "tcheck": 33.06,
                    "ttotal": 35.54,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 7,
                    "tcheck": 44,
                    "ttotal": 51,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 5,
                    "tcheck": 45,
                    "ttotal": 50,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmp0gTt97/RLIBS_307427d72119/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmp0gTt97/RLIBS_307427d72119/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-12-26T15:03:50.000Z",
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
                    "tinstall": 2.79,
                    "tcheck": 33.89,
                    "ttotal": 36.68,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.31,
                    "tcheck": 26.92,
                    "ttotal": 29.23,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 56.84,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 51,
                    "ttotal": 57,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.77,
                    "tcheck": 32.71,
                    "ttotal": 35.48,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.62,
                    "tcheck": 33.04,
                    "ttotal": 35.66,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 7,
                    "tcheck": 44,
                    "ttotal": 51,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 5,
                    "tcheck": 45,
                    "ttotal": 50,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmp0gTt97/RLIBS_307427d72119/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmp0gTt97/RLIBS_307427d72119/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-12-27T15:03:49.000Z",
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
                    "tinstall": 2.83,
                    "tcheck": 33.51,
                    "ttotal": 36.34,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.21,
                    "tcheck": 27.24,
                    "ttotal": 29.45,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 54.98,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 51,
                    "ttotal": 57,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.13,
                    "tcheck": 32.65,
                    "ttotal": 35.78,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.62,
                    "tcheck": 33.04,
                    "ttotal": 35.66,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 7,
                    "tcheck": 44,
                    "ttotal": 51,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 5,
                    "tcheck": 45,
                    "ttotal": 50,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmp0gTt97/RLIBS_307427d72119/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmp0gTt97/RLIBS_307427d72119/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "allan",
            "date_updated": "2020-12-28T15:03:53.000Z",
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
                    "tinstall": 2.83,
                    "tcheck": 33.51,
                    "ttotal": 36.34,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.34,
                    "tcheck": 28.09,
                    "ttotal": 30.43,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 54.98,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.95,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 6,
                    "tcheck": 51,
                    "ttotal": 57,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.13,
                    "tcheck": 32.65,
                    "ttotal": 35.78,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 68.3,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.62,
                    "tcheck": 33.04,
                    "ttotal": 35.66,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 7,
                    "tcheck": 44,
                    "ttotal": 51,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 5,
                    "tcheck": 45,
                    "ttotal": 50,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpuEtbIA/RLIBS_7e4e3c4b9170b5/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpMPpWqD/RLIBS_234cf04a0154d3/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmp0gTt97/RLIBS_307427d72119/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmp0gTt97/RLIBS_307427d72119/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
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
[1] 1312

$returned
[1] 30

$data
[90m# A tibble: 30 x 5[39m
   package date_updated summary$any   $ok $note $warn $error $fail checks
   [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m 1[39m allan   2020-12-19T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 2[39m allan   2020-12-20T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 3[39m allan   2020-12-21T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 4[39m allan   2020-12-22T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 5[39m allan   2020-12-23T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 6[39m allan   2020-12-24T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 7[39m allan   2020-12-25T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 8[39m allan   2020-12-26T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m 9[39m allan   2020-12-27T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m10[39m allan   2020-12-28T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m# … with 20 more rows, and 2 more variables: check_details$details [3m[90m<list>[90m[23m,[39m
[90m#   $additional_issues [3m[90m<lgl>[90m[23m[39m

```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&limit=2 | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 54979
date: Mon, 18 Jan 2021 13:35:18 GMT

```
```json
{
    "error": null,
    "count": 57,
    "returned": 2,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-12-19T15:03:46.000Z",
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
                    "tinstall": 3.12,
                    "tcheck": 33.95,
                    "ttotal": 37.07,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "1.01",
                    "tinstall": 2.21,
                    "tcheck": 27.61,
                    "ttotal": 29.82,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 55.86,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/allan-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 44.83,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/allan-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 7,
                    "tcheck": 56,
                    "ttotal": 63,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 3.03,
                    "tcheck": 33.15,
                    "ttotal": 36.18,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 72.6,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/allan-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "1.01",
                    "tinstall": 2.82,
                    "tcheck": 32.69,
                    "ttotal": 35.51,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 5,
                    "tcheck": 44,
                    "ttotal": 49,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "1.01",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "NOTE",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/allan-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "1.01",
                    "tinstall": 4,
                    "tcheck": 56,
                    "ttotal": 60,
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                            "r-release-macos-x86_64",
                            "r-release-windows-ix86+x86_64",
                            "r-oldrel-macos-x86_64",
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
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpw3Qwsc/RLIBS_b627c072bb3a84/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpw3Qwsc/RLIBS_b627c072bb3a84/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-devel-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/Rtmpq4JFjl/RLIBS_705f643cb03201/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/Rtmpq4JFjl/RLIBS_705f643cb03201/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    },
                    {
                        "version": "1.01",
                        "output": "Running examples in 'allan-Ex.R' failed\nThe error most likely occurred in:\n\n> ### Name: allanVarSelect\n> ### Title: Memory Unlimited Forward Stepwise Variable Selection for Linear\n> ###   Models\n> ### Aliases: allanVarSelect\n> ### Keywords: stepwise linear regression memory\n> \n> ### ** Examples\n> \n> #Get external data.  For your own data skip this next line and replace all\n> #instance of SampleData with \"YourFile.csv\".\n> SampleData=system.file(\"extdata\",\"SampleDataFile.csv\", package = \"allan\")\n> \n> #fit smaller data to biglm object\n> columnnames<-names(read.csv(SampleData, nrows=2,header=TRUE))\n> datafeed<-readinbigdata(SampleData,chunksize=1000,col.names=columnnames)\n> datafeed(TRUE)\n> firstchunk<-datafeed(FALSE)\n> \n> #create a biglm model from the small chunk with all variables that will be consdered\n> #for variable selection.\n> bigmodel <- biglm(PurePremium ~ cont1 + cont2 + cont3 + cont4 + cont5,data=firstchunk,weights=~cont0)\n> \n> #now run variable selection\n> FinalModel<-allanVarSelect(bigmodel,SampleData,SampleData,NumOfSteps=2,criteria=\"MSE\",silent=FALSE)\n[1] \"Total memory usage for 1000 lines:\"\n110560 bytes\n[1] \"Chunksize for dataframe after adjustment factor:\"\n[1] 429630\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529253.65122942\"      \"1529265.34987705\" \"1.29997019294336e+129\" \n                                                \n                \"cont3\"                     \"1\" \n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Iterating Through Dataset and Updating Coefficients\"\n[1] \"Criteria:MSE\"\n[1] \"Iteration Result\"\n               AICValue                BICValue                MSEValue \n     \"1529255.65122942\"      \"1529273.19920087\" \"1.29902541076004e+129\" \n                                                \n                \"cont1\"                     \"2\" \n[1] \"Final Results of Variable Selection:\"\n                 AICValue           BICValue           MSEValue               \nIterationSummary \"1529253.65122942\" \"1529265.34987705\" \"1.29997019294336e+129\"\nIterationSummary \"1529255.65122942\" \"1529273.19920087\" \"1.29902541076004e+129\"\n                            \nIterationSummary \"cont3\" \"1\"\nIterationSummary \"cont1\" \"2\"\n[1] \"Results Stored in $SelectionSummary\"\n> \n> \n> \n> \n> \n> \n> \n> cleanEx()\nWarning in .Internal(gc(verbose, reset, full)) :\n  closing unused connection 3 (D:/temp/RtmpUZ1rpl/RLIBS_af4e41a7340b2/allan/extdata/SampleDataFile.csv)\nError: connections left open:\n\tD:/temp/RtmpUZ1rpl/RLIBS_af4e41a7340b2/allan/extdata/SampleDataFile.csv (file)\nExecution halted",
                        "check": "examples",
                        "flavors": [
                            "r-oldrel-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
            }
        },
        {
            "package": "antaresViz",
            "date_updated": "2021-01-12T15:03:51.000Z",
            "summary": {
                "any": true,
                "ok": 6,
                "note": 0,
                "warn": 0,
                "error": 6,
                "fail": 0
            },
            "checks": [
                {
                    "flavor": "r-devel-linux-x86_64-debian-clang",
                    "version": "0.15.3",
                    "tinstall": 23.41,
                    "tcheck": 301.81,
                    "ttotal": 325.22,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-clang/antaresViz-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-debian-gcc",
                    "version": "0.15.3",
                    "tinstall": 18.23,
                    "tcheck": 299.34,
                    "ttotal": 317.57,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-debian-gcc/antaresViz-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-clang",
                    "version": "0.15.3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 377.3,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-clang/antaresViz-00check.html"
                },
                {
                    "flavor": "r-devel-linux-x86_64-fedora-gcc",
                    "version": "0.15.3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 348.69,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-linux-x86_64-fedora-gcc/antaresViz-00check.html"
                },
                {
                    "flavor": "r-devel-windows-ix86+x86_64",
                    "version": "0.15.3",
                    "tinstall": 154,
                    "tcheck": 314,
                    "ttotal": 468,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-devel-windows-ix86+x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-patched-linux-x86_64",
                    "version": "0.15.3",
                    "tinstall": 22.18,
                    "tcheck": 297.17,
                    "ttotal": 319.35,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-linux-x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-patched-solaris-x86",
                    "version": "0.15.3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 490.5,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-patched-solaris-x86/antaresViz-00check.html"
                },
                {
                    "flavor": "r-release-linux-x86_64",
                    "version": "0.15.3",
                    "tinstall": 23.96,
                    "tcheck": 295.88,
                    "ttotal": 319.84,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-linux-x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-release-macos-x86_64",
                    "version": "0.15.3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-macos-x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-release-windows-ix86+x86_64",
                    "version": "0.15.3",
                    "tinstall": 46,
                    "tcheck": 364,
                    "ttotal": 410,
                    "status": "ERROR",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-release-windows-ix86+x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-oldrel-macos-x86_64",
                    "version": "0.15.3",
                    "tinstall": 0,
                    "tcheck": 0,
                    "ttotal": 0,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-macos-x86_64/antaresViz-00check.html"
                },
                {
                    "flavor": "r-oldrel-windows-ix86+x86_64",
                    "version": "0.15.3",
                    "tinstall": 34,
                    "tcheck": 247,
                    "ttotal": 281,
                    "status": "OK",
                    "check_url": "https://www.R-project.org/nosvn/R.check/r-oldrel-windows-ix86+x86_64/antaresViz-00check.html"
                }
            ],
            "check_details": {
                "details": [
                    {
                        "version": "0.15.3",
                        "output": "  Running 'testthat.R' [125s/75s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.9.0-CAPI-1.16.2 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  == Skipped tests ===============================================================\n  * .runExchangesStackTest is not TRUE (8)\n  * .runPlotMapTest is not TRUE (1)\n  * .runProdStackTest is not TRUE (4)\n  * .runTsPlotTest is not TRUE (1)\n  \n  == Warnings ====================================================================\n  -- Warning (test-exchangesStack.R:5:3): no interactive -------------------------\n  'memory.limit()' is Windows-specific\n  Backtrace:\n   1. antaresRead::readAntares(links = \"all\", timeStep = \"daily\", showProgress = FALSE) test-exchangesStack.R:5:2\n   3. utils::memory.limit()\n  \n  == Failed tests ================================================================\n  -- Error (test-prodStack.R:309:3): prodStack must work with refStudy, if interactive is set to TRUE and if x and refStudy are antaresData,  --\n  Error: $ operator is invalid for atomic vectors\n  Backtrace:\n      x\n   1. \\-antaresViz:::.get_data_from_htmlwidget(PS3) test-prodStack.R:309:2\n  -- Error (test-prodStack.R:338:3): prodStack must work with refStudy, if interactive is set to TRUE and if x a list of antaresData and refStudy an antaresData,  --\n  Error: $ operator is invalid for atomic vectors\n  Backtrace:\n      x\n   1. \\-antaresViz:::.get_data_from_htmlwidget(PS3, widgetsNumber = 2) test-prodStack.R:338:2\n  -- Error (test-prodStack.R:388:3): prodStack must work with refStudy, if interactive is set to TRUE and if x is an antaresDataList and refStudy an antaresDataList,  --\n  Error: $ operator is invalid for atomic vectors\n  Backtrace:\n      x\n   1. \\-antaresViz:::.get_data_from_htmlwidget(PS3, widgetsNumber = 1) test-prodStack.R:388:2\n  -- Error (test-prodStack.R:442:3): prodStack must work with refStudy, if interactive is set to TRUE and if x is a list of antaresDataList and refStudy an antaresDataList ,  --\n  Error: $ operator is invalid for atomic vectors\n  Backtrace:\n      x\n   1. \\-antaresViz:::.get_data_from_htmlwidget(PS3, widgetsNumber = 3) test-prodStack.R:442:2\n  \n  [ FAIL 4 | WARN 1 | SKIP 14 | PASS 287 ]\n  Error: Test failures\n  Execution halted",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-clang"
                        ]
                    },
                    {
                        "version": "0.15.3",
                        "output": "  Running ‘testthat.R’ [165s/200s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.9.0-CAPI-1.16.2 \n   Linking to sp version: 1.4-5 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  ══ Skipped tests ═══════════════════════════════════════════════════════════════\n  ● .runExchangesStackTest is not TRUE (8)\n  ● .runPlotMapTest is not TRUE (1)\n  ● .runProdStackTest is not TRUE (4)\n  ● .runTsPlotTest is not TRUE (1)\n  \n  ══ Warnings ════════════════════════════════════════════════════════════════════\n  ── Warning (test-exchangesStack.R:5:3): no interactive ─────────────────────────\n  'memory.limit()' is Windows-specific\n  Backtrace:\n   1. antaresRead::readAntares(links = \"all\", timeStep = \"daily\", showProgress = FALSE) test-exchangesStack.R:5:2\n   3. utils::memory.limit()\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  Computation failed in `stat_binhex()`:\n    Package `hexbin` required for `stat_binhex`.\n    Please install and try again.\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::ggplotly_build(p)\n    6. plotly:::by_layer(function(l, d) l$compute_statistic(d, layout))\n    7. plotly:::f(l = layers[[i]], d = data[[i]])\n    8. l$compute_statistic(d, layout)\n    9. ggplot2:::f(..., self = self)\n   10. self$stat$compute_layer(data, params, layout)\n   11. ggplot2:::f(..., self = self)\n   12. ggplot2:::dapply(...)\n   13. ggplot2:::apply_fun(df)\n   14. ggplot2:::fun(x, ...)\n   15. base::tryCatch(...)\n   16. base:::tryCatchList(expr, classes, parentenv, handlers)\n   17. base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])\n   18. value[[3L]](cond)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"x\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to max; returning -Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"x\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n   1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n   3. plotly:::ggplotly.ggplot(p)\n   4. plotly::gg2list(...)\n   5. plotly:::layers2traces(data, prestats_data, layout, plot)\n   7. plotly:::to_basic.GeomHex(...)\n   8. ggplot2::resolution(data[[\"x\"]], FALSE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"y\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to max; returning -Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"y\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n   1. antaresViz::plotXY(dta, \"NODU\", \"L",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-debian-gcc"
                        ]
                    },
                    {
                        "version": "0.15.3",
                        "output": "  Running ‘testthat.R’ [115s/213s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.8.1-CAPI-1.13.3 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  ══ Skipped tests ═══════════════════════════════════════════════════════════════\n  ● .runExchangesStackTest is not TRUE (8)\n  ● .runPlotMapTest is not TRUE (1)\n  ● .runProdStackTest is not TRUE (4)\n  ● .runTsPlotTest is not TRUE (1)\n  \n  ══ Warnings ════════════════════════════════════════════════════════════════════\n  ── Warning (test-exchangesStack.R:5:3): no interactive ─────────────────────────\n  'memory.limit()' is Windows-specific\n  Backtrace:\n   1. antaresRead::readAntares(links = \"all\", timeStep = \"daily\", showProgress = FALSE) test-exchangesStack.R:5:2\n   3. utils::memory.limit()\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  Computation failed in `stat_binhex()`:\n    Package `hexbin` required for `stat_binhex`.\n    Please install and try again.\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::ggplotly_build(p)\n    6. plotly:::by_layer(function(l, d) l$compute_statistic(d, layout))\n    7. plotly:::f(l = layers[[i]], d = data[[i]])\n    8. l$compute_statistic(d, layout)\n    9. ggplot2:::f(..., self = self)\n   10. self$stat$compute_layer(data, params, layout)\n   11. ggplot2:::f(..., self = self)\n   12. ggplot2:::dapply(...)\n   13. ggplot2:::apply_fun(df)\n   14. ggplot2:::fun(x, ...)\n   15. base::tryCatch(...)\n   16. base:::tryCatchList(expr, classes, parentenv, handlers)\n   17. base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])\n   18. value[[3L]](cond)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"x\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to max; returning -Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"x\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n   1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n   3. plotly:::ggplotly.ggplot(p)\n   4. plotly::gg2list(...)\n   5. plotly:::layers2traces(data, prestats_data, layout, plot)\n   7. plotly:::to_basic.GeomHex(...)\n   8. ggplot2::resolution(data[[\"x\"]], FALSE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"y\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to max; returning -Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"y\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n   1. antaresViz::plotXY(dta, \"NODU\", \"L",
                        "check": "tests",
                        "flavors": [
                            "r-devel-linux-x86_64-fedora-clang"
                        ]
                    },
                    {
                        "version": "0.15.3",
                        "output": "  Running ‘testthat.R’ [123s/159s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.6.4-CAPI-1.10.4 \n   Linking to sp version: 1.4-4 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  ══ Skipped tests ═══════════════════════════════════════════════════════════════\n  ● .runExchangesStackTest is not TRUE (8)\n  ● .runPlotMapTest is not TRUE (1)\n  ● .runProdStackTest is not TRUE (4)\n  ● .runTsPlotTest is not TRUE (1)\n  \n  ══ Warnings ════════════════════════════════════════════════════════════════════\n  ── Warning (test-exchangesStack.R:5:3): no interactive ─────────────────────────\n  'memory.limit()' is Windows-specific\n  Backtrace:\n   1. antaresRead::readAntares(links = \"all\", timeStep = \"daily\", showProgress = FALSE) test-exchangesStack.R:5:2\n   3. utils::memory.limit()\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  Computation failed in `stat_binhex()`:\n    Package `hexbin` required for `stat_binhex`.\n    Please install and try again.\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::ggplotly_build(p)\n    6. plotly:::by_layer(function(l, d) l$compute_statistic(d, layout))\n    7. plotly:::f(l = layers[[i]], d = data[[i]])\n    8. l$compute_statistic(d, layout)\n    9. ggplot2:::f(..., self = self)\n   10. self$stat$compute_layer(data, params, layout)\n   11. ggplot2:::f(..., self = self)\n   12. ggplot2:::dapply(...)\n   13. ggplot2:::apply_fun(df)\n   14. ggplot2:::fun(x, ...)\n   15. base::tryCatch(...)\n   16. base:::tryCatchList(expr, classes, parentenv, handlers)\n   17. base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])\n   18. value[[3L]](cond)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"x\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to max; returning -Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"x\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n   1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n   3. plotly:::ggplotly.ggplot(p)\n   4. plotly::gg2list(...)\n   5. plotly:::layers2traces(data, prestats_data, layout, plot)\n   7. plotly:::to_basic.GeomHex(...)\n   8. ggplot2::resolution(data[[\"x\"]], FALSE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"y\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to max; returning -Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"y\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n   1. antaresViz::plotXY(dta, \"NODU\", \"L",
                        "check": "tests",
                        "flavors": [
                            "r-patched-solaris-x86"
                        ]
                    },
                    {
                        "version": "0.15.3",
                        "output": "  Running ‘testthat.R’ [129s/135s]\nRunning the tests in ‘tests/testthat.R’ failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.9.0-CAPI-1.16.2 \n   Linking to sp version: 1.4-5 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  ══ Skipped tests ═══════════════════════════════════════════════════════════════\n  ● .runExchangesStackTest is not TRUE (8)\n  ● .runPlotMapTest is not TRUE (1)\n  ● .runProdStackTest is not TRUE (4)\n  ● .runTsPlotTest is not TRUE (1)\n  \n  ══ Warnings ════════════════════════════════════════════════════════════════════\n  ── Warning (test-exchangesStack.R:5:3): no interactive ─────────────────────────\n  'memory.limit()' is Windows-specific\n  Backtrace:\n   1. antaresRead::readAntares(links = \"all\", timeStep = \"daily\", showProgress = FALSE) test-exchangesStack.R:5:2\n   3. utils::memory.limit()\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  Computation failed in `stat_binhex()`:\n    Package `hexbin` required for `stat_binhex`.\n    Please install and try again.\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::ggplotly_build(p)\n    6. plotly:::by_layer(function(l, d) l$compute_statistic(d, layout))\n    7. plotly:::f(l = layers[[i]], d = data[[i]])\n    8. l$compute_statistic(d, layout)\n    9. ggplot2:::f(..., self = self)\n   10. self$stat$compute_layer(data, params, layout)\n   11. ggplot2:::f(..., self = self)\n   12. ggplot2:::dapply(...)\n   13. ggplot2:::apply_fun(df)\n   14. ggplot2:::fun(x, ...)\n   15. base::tryCatch(...)\n   16. base:::tryCatchList(expr, classes, parentenv, handlers)\n   17. base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])\n   18. value[[3L]](cond)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"x\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to max; returning -Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"x\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n   1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n   3. plotly:::ggplotly.ggplot(p)\n   4. plotly::gg2list(...)\n   5. plotly:::layers2traces(data, prestats_data, layout, plot)\n   7. plotly:::to_basic.GeomHex(...)\n   8. ggplot2::resolution(data[[\"x\"]], FALSE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"y\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to max; returning -Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"y\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  ── Warning (test-plotXY.R:6:5): prodStack, no interactive ──────────────────────\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n   1. antaresViz::plotXY(dta, \"NODU\", \"L",
                        "check": "tests",
                        "flavors": [
                            "r-release-linux-x86_64"
                        ]
                    },
                    {
                        "version": "0.15.3",
                        "output": "  Running 'testthat.R' [100s]\nRunning the tests in 'tests/testthat.R' failed.\nComplete output:\n  > library(testthat)\n  > library(antaresViz)\n  Loading required package: antaresRead\n  Loading required package: antaresProcessing\n  \n  Attaching package: 'antaresProcessing'\n  \n  The following object is masked from 'package:testthat':\n  \n      compare\n  \n  Loading required package: spMaps\n  Loading required package: sp\n  Loading required package: raster\n  \n  Attaching package: 'raster'\n  \n  The following object is masked from 'package:antaresProcessing':\n  \n      getValues\n  \n  Loading required package: rgeos\n  rgeos version: 0.5-5, (SVN revision 640)\n   GEOS runtime version: 3.8.0-CAPI-1.13.1 \n   Linking to sp version: 1.4-5 \n   Polygon checking: TRUE \n  \n  > \n  > test_check(\"antaresViz\")\n  == Skipped tests ===============================================================\n  * .runExchangesStackTest is not TRUE (8)\n  * .runPlotMapTest is not TRUE (1)\n  * .runProdStackTest is not TRUE (4)\n  * .runTsPlotTest is not TRUE (1)\n  \n  == Warnings ====================================================================\n  -- Warning (test-plotXY.R:6:5): prodStack, no interactive ----------------------\n  Computation failed in `stat_binhex()`:\n    Package `hexbin` required for `stat_binhex`.\n    Please install and try again.\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::ggplotly_build(p)\n    6. plotly:::by_layer(function(l, d) l$compute_statistic(d, layout))\n    7. plotly:::f(l = layers[[i]], d = data[[i]])\n    8. l$compute_statistic(d, layout)\n    9. ggplot2:::f(..., self = self)\n   10. self$stat$compute_layer(data, params, layout)\n   11. ggplot2:::f(..., self = self)\n   12. ggplot2:::dapply(...)\n   13. ggplot2:::apply_fun(df)\n   14. ggplot2:::fun(x, ...)\n   15. base::tryCatch(...)\n   16. base:::tryCatchList(expr, classes, parentenv, handlers)\n   17. base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])\n   18. value[[3L]](cond)\n  -- Warning (test-plotXY.R:6:5): prodStack, no interactive ----------------------\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"x\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  -- Warning (test-plotXY.R:6:5): prodStack, no interactive ----------------------\n  no non-missing arguments to max; returning -Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"x\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  -- Warning (test-plotXY.R:6:5): prodStack, no interactive ----------------------\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n   1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n   3. plotly:::ggplotly.ggplot(p)\n   4. plotly::gg2list(...)\n   5. plotly:::layers2traces(data, prestats_data, layout, plot)\n   7. plotly:::to_basic.GeomHex(...)\n   8. ggplot2::resolution(data[[\"x\"]], FALSE)\n  -- Warning (test-plotXY.R:6:5): prodStack, no interactive ----------------------\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"y\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  -- Warning (test-plotXY.R:6:5): prodStack, no interactive ----------------------\n  no non-missing arguments to max; returning -Inf\n  Backtrace:\n    1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n    3. plotly:::ggplotly.ggplot(p)\n    4. plotly::gg2list(...)\n    5. plotly:::layers2traces(data, prestats_data, layout, plot)\n    7. plotly:::to_basic.GeomHex(...)\n    8. ggplot2::resolution(data[[\"y\"]], FALSE)\n   10. base::range(x, na.rm = TRUE)\n  -- Warning (test-plotXY.R:6:5): prodStack, no interactive ----------------------\n  no non-missing arguments to min; returning Inf\n  Backtrace:\n   1. antaresViz::plotXY(dta, \"NODU\", \"LOAD\", precision = 50, sizeOnCount = FALSE) test-plotXY.R:6:4\n   3. plotly:::ggplotly.ggplot(p)\n   4. plotly::gg2list(...)\n   5. plotly:::layers2traces(data, prestats_data, layout, plot)\n   7. plotly:::to_basic.GeomHex(...)\n   8. ggplot2::resolution(data[[\"y\"]], FALSE)\n  \n  == Faile",
                        "check": "tests",
                        "flavors": [
                            "r-release-windows-ix86+x86_64"
                        ]
                    }
                ],
                "additional_issues": null
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
[1] 57

$returned
[1] 2

$data
[90m# A tibble: 2 x 5[39m
  package date_updated summary$any   $ok $note $warn $error $fail checks
  [3m[90m<chr>[39m[23m   [3m[90m<chr>[39m[23m        [3m[90m<lgl>[39m[23m       [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m  [3m[90m<int>[39m[23m [3m[90m<int>[39m[23m [3m[90m<list>[39m[23m
[90m1[39m allan   2020-12-19T… TRUE            0     9     0      3     0 [90m<df[,[0m…
[90m2[39m antare… 2021-01-12T… TRUE            6     0     0      6     0 [90m<df[,[0m…
[90m# … with 2 more variables: check_details$details [3m[90m<list>[90m[23m,[39m
[90m#   $additional_issues [3m[90m<lgl>[90m[23m[39m

```

```shell
curl https://cranchecks.info/search?q=memory&one_each=true&fields=package | jq .
```
```yaml
HTTP/2 200 
access-control-allow-methods: HEAD, GET
access-control-allow-origin: *
cache-control: public, must-revalidate, max-age=60
content-type: application/json; charset=utf8
server: Caddy
x-content-type-options: nosniff
content-length: 1200
date: Mon, 18 Jan 2021 13:35:33 GMT

```
```json
{
    "error": null,
    "count": 57,
    "returned": 10,
    "data": [
        {
            "package": "allan",
            "date_updated": "2020-12-19T15:03:46.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "antaresViz",
            "date_updated": "2021-01-12T15:03:51.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "aws",
            "date_updated": "2020-12-19T15:03:46.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "batchtools",
            "date_updated": "2020-12-19T15:03:46.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "blockmodeling",
            "date_updated": "2020-12-19T15:03:46.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "bssm",
            "date_updated": "2020-12-19T15:03:46.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "clusternor",
            "date_updated": "2020-12-23T15:03:51.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "compboost",
            "date_updated": "2020-12-19T15:03:46.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "cooccurNet",
            "date_updated": "2020-12-19T15:03:45.000Z",
            "summary": null,
            "checks": null,
            "check_details": null
        },
        {
            "package": "ctsemOMX",
            "date_updated": "2020-12-23T15:03:51.000Z",
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
[1] 57

$returned
[1] 30

$data
[90m# A tibble: 30 x 5[39m
   package       date_updated             summary checks check_details
   [3m[90m<chr>[39m[23m         [3m[90m<chr>[39m[23m                    [3m[90m<lgl>[39m[23m   [3m[90m<lgl>[39m[23m  [3m[90m<lgl>[39m[23m        
[90m 1[39m allan         2020-12-19T15:03:46.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 2[39m antaresViz    2021-01-12T15:03:51.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 3[39m aws           2020-12-19T15:03:46.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 4[39m batchtools    2020-12-19T15:03:46.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 5[39m blockmodeling 2020-12-19T15:03:46.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 6[39m bssm          2020-12-19T15:03:46.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 7[39m clusternor    2020-12-23T15:03:51.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 8[39m compboost     2020-12-19T15:03:46.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m 9[39m cooccurNet    2020-12-19T15:03:45.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m10[39m ctsemOMX      2020-12-23T15:03:51.000Z [31mNA[39m      [31mNA[39m     [31mNA[39m           
[90m# … with 20 more rows[39m

```
