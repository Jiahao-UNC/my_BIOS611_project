FROM rocker/rstudio:4.3.2

WORKDIR /home/rstudio/project

RUN echo 'options(repos = c(CRAN = "https://cloud.r-project.org"))' >> /usr/local/lib/R/etc/Rprofile.site && \
    R -e "install.packages(c('tidyverse','data.table','readxl','janitor','lubridate','ggplot2'))"

COPY . /home/rstudio/project