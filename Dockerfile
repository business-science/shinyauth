# VERSION 1.0
# Shiny Version: 1.7.1

FROM rocker/shiny-verse:latest

RUN apt-get update -qq \
    && apt-get -y --no-install-recommends install \
        lbzip2 \
        libfftw3-dev \
        libgdal-dev \
        libgeos-dev \
        libgsl0-dev \
        libgl1-mesa-dev \
        libglu1-mesa-dev \
        libhdf4-alt-dev \
        libhdf5-dev \
        libjq-dev \
        # liblwgeom-dev \ # No longer needed 
        libpq-dev \
        libproj-dev \
        libprotobuf-dev \
        libnetcdf-dev \
        libsqlite3-dev \
        libssl-dev \
        libudunits2-dev \
        netcdf-bin \
        postgis \
        protobuf-compiler \
        sqlite3 \
        tk-dev \
        unixodbc-dev \
        libsasl2-dev \
        libv8-dev \
        libsodium-dev \
            
        # textshaping dependencies - HarfBuzz
        libharfbuzz-dev \
        libfribidi-dev \
        gcc \
        g++ \
        libfreetype6-dev \ 
        libglib2.0-dev \
        libcairo2-dev \
        meson \
        pkg-config \
        gtk-doc-tools \
    # Installs from MRAN (Microsoft), packages tend to be older so must specify cran rstudio mirror
    && install2.r --error --deps TRUE -r http://cran.rstudio.com \
        shiny \
        bslib \
        shinyWidgets \
        shinythemes \
        shinyjs \
        mongolite \
        jsonlite \
        config \
        remotes \
        tidyquant \
        plotly \
    # Installs from GitHub 
    && installGithub.r business-science/shinyauthr
    
        
