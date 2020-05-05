# CRAN checks API docs

Generated with Hugo using the docuapi theme.

## Developer notes

The theme uses Hugo modules so instead of having a themes folder I refer to the theme as module in `config.toml`.

Here is what I did to be able to serve the site **locally**

* I installed Go.

* I ran [`hugo mod init ugly-dummy`](https://discourse.gohugo.io/t/hugo-modules-for-dummies/20758) (I could have chosen another name).

For **Netlify**, 

* I used docuapi's own Netlify config as a guide.

* I ran `npm init` to create the `package.json` Netlify needs to install dependencies.
