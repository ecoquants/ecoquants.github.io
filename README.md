# ecoquants.github.io

Public website for EcoQuants.com

## Editing & Publishing

```r
# edit # setwd('src')
blogdown::serve_site()

# publish - net::ERR_INSECURE_RESPONSE in Chrome?
#blogdown::build_site()
```

## TODO
- add routing and siting apps
- make project content type, fix projects
- add in_carousel for different content types: post, app, project
- tweak app/single.html so not card
- include meta Title in Apps and Blog list page for bookmarking
- white selected nav item from menu
- carousel items from archetype
  - https://github.com/spf13/spf13.com/blob/master/layouts/section/project.html
- implement Search: [Site Search is Back! -- Bleve](http://www.blevesearch.com/news/Site-Search/)

  * bleve: [Site Search is Back! -- Bleve](http://www.blevesearch.com/news/Site-Search/)
  * lunrjs:
    * [hugo + gruntjs + lunrjs = <3 search](https://gist.github.com/sebz/efddfc8fdcb6b480f567)
    * [Live Hugo Site search with Lunr.js - tips & tricks - Hugo Discussion](https://discuss.gohugo.io/t/live-hugo-site-search-with-lunr-js/2857)
    * example with [hugo-theme-learn/search.html at master · matcornic/hugo-theme-learn](https://github.com/matcornic/hugo-theme-learn/blob/master/layouts/partials/search.html)
      * [Search Results](https://github.com/matcornic/hugo-theme-learn/search?utf8=%E2%9C%93&q=lunr)
      * [matcornic/hugo-theme-learn: Porting Grav Learn theme to Hugo](https://github.com/matcornic/hugo-theme-learn)
    * [dgrigg/hugo-lunr: Node module for creating lunr.js search indexes for static Hugo sites](https://github.com/dgrigg/hugo-lunr)
  * [How are you implementing site search - support - Hugo Discussion](https://discuss.gohugo.io/t/how-are-you-implementing-site-search/986/4)

- Add Follow Us: Twitter, Facebook, Github
- layouts/sharing-icons.html: fix social media icons with circles
  - [CSS3 Circle Hover Effects for Font Awesome Icons](http://wpandsuch.com/css3-circle-hover-effects-for-font-awesome-icons/)
- info@ecoquants.com: Gmail setup
- left navigation w/ ToC
- contact form & page w/ iframe Google Map (stylized b&w?)
- icon effects, eg on hover: 
  - [Font Awesome Animation](http://l-lin.github.io/font-awesome-animation/)
  - [Change Font Awesome Icon on Hover | Telegraphics, Inc. | Telegraphics Inc.](http://www.telegraphicsinc.com/2014/04/change-font-awesome-icon-on-hover/)
  - [CSS3 Circle Hover Effects for Font Awesome Icons](http://wpandsuch.com/css3-circle-hover-effects-for-font-awesome-icons/)
- visit newer features in [forks of alanorth/hugo-theme-bootstrap4-blog](https://github.com/alanorth/hugo-theme-bootstrap4-blog/network/members): search, bootstrap_v4-alpha-0.6 update,...
- [Using Bootstrap 4 from source with React and nwb](https://medium.com/@jbscript/using-bootstrap-4-from-source-with-react-and-nwb-f26caf395952#.4yh7xdfoj): use only bits of Bootstrap needed
- [Tutorial: Creating an NPM-driven Website | Tutorialzine](http://tutorialzine.com/2015/03/npm-driven-website/): create website w/ bootstrap, google map, save locations

- navbar
  - dropdown menu autopopulate like [navbars example](http://v4-alpha.getbootstrap.com/examples/navbars/)

- carousel: 1080 x 576

## TODO: Effects, later

- [hugo-agency-theme](https://github.com/digitalcraftsman/hugo-agency-theme): Port of Startbootstrap's Agency theme to Hugo
- [Cover](http://wrapbootstrap.com/preview/WB05R798T): Responsive Multipurpose Template - Live Preview - WrapBootstrap
- [Elate](http://themes.gohugo.io/hugo-elate-theme/)
- [kieranhealy](https://github.com/kjhealy/kieranhealy.hugo): Duke academic with publications

## References

### Bootstrap

- [Bootstrap 4 Cheat Sheet](https://hackerthemes.com/bootstrap-cheatsheet/)

## Done

- favicon generated via http://realfavicongenerator.net
- Apps: add linked Code button / github icon to source repo, if available (ie not yet w/ wqck)

## Edit Bootstrap CSS

To edit bootstrap components: `/path/to/site/hugo-theme-bootstrap4-carousel/source/scss/bootstrap.scss`.

### Getting started

- Open a new terminal and go in to the theme's directory : `cd /path/to/site/themes/hugo-theme-bootstrap4-carousel`
- Install dependencies with npm : `npm i`
- Build static files : `npm run build`

```
Rendering Complete, saving .css file...
Wrote CSS to /Users/bbest/github/ecoquants.github.io/src/themes/hugo-theme-bootstrap4-carousel/static/css/style.css.tmp
```

### Code

Please do not edit the `theme.css`, `theme.min.css`, `theme.js` or `theme.min.js` files directly. Prefer working on source 
files and use the `npm run watch` command to automatically rebuild on edit.

### Still sorting

[Bootstrap 4 Tutorial: Working with npm, Grunt.js and Sass (Part 1) - Designmodo](https://designmodo.com/bootstrap-4-npm-grunt-sass/)

Using Grunt.js with npm

If you are a Front-end developer you might have work with the following tasks manually:

- Concatenate all of your JS and CSS files together for production
- Compress/minify CSS, JS and image file sizes
- Use Sass and compile in .css format
- Install necessary tools for website development

```bash
npm install -g grunt-cli
```

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
  
new_site(
  dir="./src", install_hugo=T, format = "toml", 
  sample=T, theme = "alanorth/hugo-theme-bootstrap4-blog", theme_example=T, serve=F) # 
```

- `appernetic/hugo-bootstrap-premium`: nice newsletter subscription modal
- `alanorth/hugo-theme-bootstrap4-blog`: bootstrap v4 with cards

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
# delete 

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


