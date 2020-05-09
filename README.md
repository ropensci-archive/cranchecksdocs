# CRAN checks API docs

Generated with Hugo using the [docuapi theme](https://github.com/bep/docuapi).

## Developer notes

### Hugo

The theme uses Hugo modules so instead of having a themes folder I refer to the theme as module in `config.toml`.

Here is what I did to be able to serve the site **locally**

* I installed Go.

* I ran [`hugo mod init ugly-dummy`](https://discourse.gohugo.io/t/hugo-modules-for-dummies/20758) (I could have chosen another name).

For **Netlify**, 

* I used docuapi's own Netlify config as a guide.

* I ran `npm init` to create the `package.json` Netlify needs to install dependencies.

### Rmd

I wanted to display R code and its output as well as Shell code (curl&jq) and their output.

For that I added two knitr hooks, see content/maintainers.Rmd and its results in content/maintainers.md.

* Code chunks with no shell option are rendered in R code fences (output included)

* Code chunks with results="asis" (for shell code) have the shell part of their source and the pretty output in JSON code fences rendered in JS code fences. Why JS? I wanted both the shell script and output to appear in the same language tab and with Slatedocs it seems you can't get several languages in a tab so I chose a language that'd work ok as highlighting for both shell and JSON.

* From code chunks with results="asis", headers are rendered in YAML code fences in a header tab.
