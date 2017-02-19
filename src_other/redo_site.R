# setup ----
library(tidyverse)
library(blogdown)

dir_prj  = path.expand('~/github/ecoquants.github.io')
dir_site = path.expand('~/github/ecoquants.github.io/src')
theme    = file.path(dir_prj, "themes/hugo-theme-bootstrap4-carousel")

# getwd() # src_other/ for Rmd, vs Rproj
if (!getwd() == dir_prj){
  if (getwd() == dir_site){ 
    setwd(dir_prj)
  } else {
    stop('getwd() not in dir_prj or dir_site')
  }
}
stopifnot(getwd() == dir_prj)

# rm old
rm_except = c('CNAME','README.md','ecoquants.github.io.Rproj','src_other','src_replace','themes')
setdiff(list.files(), rm_except) %>% 
  unlink(recursive=T, force=T)

# blogdown::new_site() parts ----

# create site
hugo_cmd(c("new site", "src", "--force", "-f", "html"))

# setwd to src
setwd(dir_site)

# install_theme() with example
file.copy(theme, "themes", recursive=T)
file.copy(
  list.files(file.path(theme, "exampleSite"), full.names = TRUE), 
  ".", recursive = T, overwrite = T)

# change config to theme and publishDir
blogdown:::change_config("theme", sprintf('"%s"', basename(theme)))
blogdown:::change_config("publishDir", '".."')

# sample content
blogdown:::dir_create(file.path("content", "post"))
file.copy(blogdown:::pkg_file("resources", "2015-07-23-r-rmarkdown.Rmd"), "content/post/")

# open 
#blogdown:::open_file("content/post/2015-07-23-r-rmarkdown.Rmd")

# serve # setwd('~/github/ecoquants.github.io/src') 
blogdown::serve_site()

