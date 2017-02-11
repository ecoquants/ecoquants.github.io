# ecoquants.github.io

Public website for EcoQuants.com

## Creation

Used [rstudio/blogdown](https://github.com/rstudio/blogdown): Create Blogs and Websites with R Markdown

## Initialize

```r
# install
devtools::install_github('rstudio/blogdown')
blogdown::install_hugo()
library(blogdown)

# create a new site with default theme
blogdown::new_site('.')
```

## Configure Publishing with Github

[Configuring a publishing source for GitHub Pages](https://help.github.com/articles/configuring-a-publishing-source-for-github-pages/):

> If your site is a User or Organization Page that has a repository named <username>.github.io or <orgname>.github.io, you cannot publish your site's source files from different locations. User and Organization Pages that have this type of repository name are only published from the master branch.

Because of this fact for organization page (`*.github.io`), must overlap source content with published content like so:

`config.toml`:

```
publishDir = "."
```

The special blogdown / hugo folders and files are:

```
archetypes/
blogdown/
config.toml
content/
data/
layouts/
static/
themes/
```

## Turn off Jekyll

```bash
touch .nojekyll
```

## Use Different Theme

```r
# install theme
blogdown::install_theme('saey55/hugo-elate-theme')
#blogdown::install_theme('christianmendoza/hugo-smpl-theme')
#blogdown::install_theme('kakawait/hugo-tranquilpeak-theme')
#blogdown::install_theme('jpescador/hugo-future-imperfect')

# build site
blogdown::build_site()
```

## Edit

```r
# build site
blogdown::build_site()

# run server in background
options(servr.daemon = TRUE)
blogdown::serve_site()

#To stop the server, restart your R session or
servr::daemon_stop("4333969472")
```


