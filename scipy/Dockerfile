FROM jupyter/scipy-notebook
MAINTAINER Bas Nijholt <basnijholt@gmail.com>

#https://github.com/menpo/conda-metis
#https://github.com/dfroger/felisce-conda-recipes/tree/master/openmpi
#https://github.com/conda/conda-recipes/tree/master/scotch

conda install -c https://conda.binstar.org/menpo metis
conda install --channel https://conda.anaconda.org/yungyuc scotch
conda install -c https://conda.binstar.org/felisce openmpi

RUN conda update --all

VOLUME ["/home/shared"]
