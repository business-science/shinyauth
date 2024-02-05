# shinyauth
The Dockerfile for the shinyauth R environment used in the [Shiny Developer with AWS](https://university.business-science.io/p/expert-shiny-developer-with-aws-course-ds4b-202a-r/) course. Installs:

- shiny-verse:latest
- shinyWidgets
- shinythemes
- shinyjs
- mongolite
- jsonlite
- config
- remotes
- tidyquant
- plotly
- shinyauthr

# Installation

``` r
remotes::install_github("https://github.com/business-science/shinyauth")
```

# Docker Image Version History

## Version 2.0 

- Updates `quantmod` to fix error accessing Yahoo! Finance data

## Version 1.0 

- Updated to `shiny 1.7.1`

## Version 0.0

- Original Course Version
