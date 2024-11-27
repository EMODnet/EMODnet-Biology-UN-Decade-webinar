# Stage 1: Install r2u system and R package dependencies
FROM rocker/r2u:jammy AS r2u-stage

# Pre-install R packages using r2u
RUN Rscript -e "install.packages(c('pak'))" && \
    Rscript -e "pak::pkg_install(c('EMODnet/emodnet.wfs', 'EMODnet/EMODnetWCS', 'lifewatch/eurobis', 'ropensci/rerddap'))"

# Stage 2: Start with rocker/binder for IDE and Jupyter
FROM rocker/binder:4.4 AS final-stage

# Copy installed R packages and configuration from r2u-stage
COPY --from=r2u-stage /usr/local/lib/R /usr/local/lib/R
COPY --from=r2u-stage /usr/lib/R /usr/lib/R
COPY --from=r2u-stage /var/lib/apt/lists /var/lib/apt/lists
COPY --from=r2u-stage /etc/apt/sources.list /etc/apt/sources.list
COPY --from=r2u-stage /usr/bin/apt-get /usr/bin/apt-get

# Switch to root user for system-level installations
USER root
COPY . ${HOME}

# Update and upgrade system packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends libsecret-1-dev && apt-get clean && rm -rf /var/lib/apt/lists/*

# Ensure user permissions for the R library
RUN chown -R rstudio:rstudio /usr/local/lib/R /usr/lib/R

# Switch back to the non-root user for normal use
USER rstudio
WORKDIR /home/rstudio

# Set the command to start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]

