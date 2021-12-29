
#' Creates a New Data Science Portfolio Website
#' 
#' @description 
#' - Generates the default hugo template skeleton for a Portfolio-Based Data Scientist Website
#' - Provides 2 starter portfolio templates: `raditian` and `kross`.  
#' 
#' 
#' @inheritParams blogdown::new_site
#' @param theme The theme can be defined in several ways. 
#' 
#' __Preset themes__
#' 
#' - `raditian` (default): Custom version of the free hugo raditian theme
#' - `kross`: Custom version of the free hugo kross theme
#' 
#' __A Hugo theme on Github__ 
#' 
#' - A character string of the form user/repo
#' - A GIT branch or tag name after @, i.e. theme can be of the form user/repo@branch). 
#' - A full URL to the zip file or tarball of the theme. 
#' 
#' __No Theme__
#' 
#' If `theme = NA`, no themes will be installed, and you have to manually install a theme.
#'   
#' 
#' @param ... Additional arguments can be passed to [blogdown::new_site()].
#' 
#' 
#' @export
new_portfolio_site <- function(
  dir = ".",
  force = NA,
  install_hugo = TRUE, 
  sample = FALSE,
  format = "yaml", 
  theme = c("raditian", "kross"), 
  theme_example = TRUE, 
  netlify = TRUE,
  ...
) {
  
  theme <- theme[[1]]
  
  if (theme == "raditian") {
    theme <- "business-science/raditian-free-hugo-theme-data-science"
  }
  
  if (theme == "kross") {
    theme <- "business-science/kross-hugo-data-science"
  }
  
  blogdown::new_site(
    dir = dir,
    force = force,
    install_hugo = install_hugo, 
    sample = sample,
    format = format, 
    theme = theme, 
    theme_example = theme_example, 
    netlify = netlify,
    ...
  )
  
  # blogdown::new_site() doesn't copy .forestry directory 
  # Will copy the .forestry directory if it exists
  theme_dir <- fs::dir_ls("themes") # returns themes/kross-hugo-data-science
  
  forestry_dir <-fs::path_join(c(theme_dir, "/exampleSite/.forestry/"))
  
  if (fs::dir_exists(forestry_dir)) {
    fs::dir_copy(forestry_dir, ".")
  }
  
  
}