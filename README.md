# CRAN checks API docs

Generated with Hugo using the [docuapi theme](https://github.com/bep/docuapi).

## Developer notes

### Hugo

The theme uses Hugo modules so instead of having a themes folder I refer to the theme as module in `config.toml`.

Here is what I did to be able to serve the site **locally**:

* I installed Go.

* I ran [`hugo mod init ugly-dummy`](https://discourse.gohugo.io/t/hugo-modules-for-dummies/20758) (I could have chosen another name).

For **Netlify**, 

* I used docuapi's own Netlify config as a guide.

* I ran `npm init` to create the `package.json` Netlify needs to install dependencies.

### Rmd

I wanted to display R code and its output as well as Shell code (curl&jq) and their output.

For that I tweaked the docuapi theme, and added two knitr hooks, see content/maintainers.Rmd and its results in content/maintainers.md.

* Code chunks with no shell option are rendered in R code fences (output included)

* Code chunks with results="asis" (for shell code) have the shell part of their source rendered in shell code fences and the pretty output in JSON code fences or XML code fences. These three languages (shell, JSON, XML) are rendered in the Shell tab.

* From code chunks with results="asis", headers are rendered in YAML code fences that are displayed in a header tab.

#### Local knitting

When editing an Rmd, knit it to md using `rmarkdown::render()`. 
When editing several Rmd, source `make.R`.

#### Knitting on the cloud

There is a [GitHub Action workflow](.github/workflows/main.yml) that renders all Rmd

* If a commit **to master** contains the string "[docs]" (inspired by [Jenny Bryan's googledrive pkgdown workflow](https://github.com/tidyverse/googledrive/blob/master/.github/workflows/pkgdown.yaml))
* Once a week, at 12:30 UTC on Mondays.
