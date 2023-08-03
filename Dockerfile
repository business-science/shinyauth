# VERSION 3.0
# Shiny Version: 1.7.1

FROM rocker/shiny-verse:latest

# Update new packages
RUN apt-get update -qq 

# Get cargo
RUN apt-get install cargo -y

# Install R package dependencies
RUN apt-get -y --no-install-recommends install \
        libtesseract-dev \
        libleptonica-dev \
        tesseract-ocr \
        tesseract-ocr-eng \
        libpoppler-cpp-dev \
        poppler-data \
        libmagick++-dev \
        libxml2 \
        libcurl4-openssl-dev \
        libxml2-dev \
        git-core \
        libssl-dev \
        libgtk2.0-dev \
        libcairo2-dev \
        libxt-dev \
        xvfb \
        xauth \
        libfftw3-dev \
        libx11-dev \
        libtiff-dev \
        xfonts-base \
        libavfilter-dev \
        librsvg2-dev \
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
        libharfbuzz-dev \
        libfribidi-dev \
        gcc \
        g++ \
        libfreetype6-dev \ 
        libglib2.0-dev \
        libcairo2-dev \
        meson \
        pkg-config \
        gtk-doc-tools 

# Install R packages
RUN install2.r --error --deps TRUE -r http://cran.rstudio.com \
        gifski 

RUN install2.r --error --deps TRUE -r http://cran.rstudio.com \
        tesseract \
        av \
        # gifski \
        pdftools \
        magick \
        rsvg \
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
        plotly 

RUN installGithub.r \
    business-science/shinyauthr
    
    
        
