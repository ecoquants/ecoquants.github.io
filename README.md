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
#blogdown::new_site('.')
new_site(
  dir="./src", install_hugo=T, format = "toml", 
  sample=T, theme = "yihui/hugo-lithium-theme", theme_example=T, serve=F)
```

## Configure Publishing with Github

[Configuring a publishing source for GitHub Pages](https://help.github.com/articles/configuring-a-publishing-source-for-github-pages/):

> If your site is a User or Organization Page that has a repository named <username>.github.io or <orgname>.github.io, you cannot publish your site's source files from different locations. User and Organization Pages that have this type of repository name are only published from the master branch.

Because of this fact for organization page (`*.github.io`), must overlap source content with published content like so:

`config.toml`:

```
#publishDir = "."
publishDir = ".."
```

```r
setwd('src'); serve_site()
new_post("Post Title", rmd = FALSE)
new_content('projects/test.Rmd')
new_content('index.Rmd')
```

## Header

```r
library(leaflet)
leaflet() %>%
  addTiles()
```

```r
serve_site()
```

For referencing figures in Rmd, see example [rstudio/blogdown - inst/resources/2015-07-23-r-rmarkdown.Rmd](https://raw.githubusercontent.com/rstudio/blogdown/35dc95a3896ca23fa7dfa0a38044a3c9e9714ce1/inst/resources/2015-07-23-r-rmarkdown.Rmd) like so:

```
You can also embed plots. See Figure \@ref(fig:pie) for example:

``{r pie, fig.cap='A fancy pie chart.', tidy=FALSE}
```

post(title, kind = "default", open = interactive(), 
    author = getOption("blogdown.author"), categories = NULL, 
    tags = NULL, date = Sys.Date(), file = NULL, subdir = getOption("blogdown.subdir"), 
    rmd = getOption("blogdown.use.rmd", FALSE))
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
setwd('src'); serve_site()

build_site()

# install theme
library(blogdown)
install_theme("yihui/hugo-lithium-theme")

install_theme("yihui/hugo-lithium-theme")

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
servr::daemon_stop("4373619856")
```


