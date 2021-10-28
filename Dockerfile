FROM continuumio/miniconda3

# Cartopy requires some binaries that are just easier to install with conda
RUN conda install -c conda-forge cartopy requests netCDF4 geopandas geocube geoplot
# Install Jupyter Lab
RUN conda install -c conda-forge jupyterlab
ENV JUPYTER_ENABLE_LAB=yes
EXPOSE 8888

WORKDIR /home
CMD jupyter-lab --allow-root --ip=0.0.0.0