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

# create a new site
blogdown::new_site('new_site')

# install theme
blogdown::install_theme('saey55/hugo-elate-theme')
blogdown::install_theme('christianmendoza/hugo-smpl-theme')
blogdown::install_theme('kakawait/hugo-tranquilpeak-theme')
blogdown::install_theme('jpescador/hugo-future-imperfect')
```

## Edit

```r
# run server in background
options(servr.daemon = TRUE)
blogdown::serve_site()

#To stop the server, restart your R session or
servr::daemon_stop("4333969472")
```

