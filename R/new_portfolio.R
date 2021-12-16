
#' Creates a New Data Science Portfolio Website
#' 
#' @description 
#' - Generates the default hugo template skeleton for a Portfolio-Based Data Scientist Website
#' - Uses a modified version of the `raditian-free-hugo-theme` specifically designed for data science portfolios available at: 
#'   `business-science/raditian-free-hugo-theme-data-science`.  
#' 
#' 
#' @inheritParams blogdown::new_site
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
  theme = "business-science/raditian-free-hugo-theme-data-science", 
  theme_example = TRUE, 
  netlify = TRUE,
  ...
) {
  
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
  
}