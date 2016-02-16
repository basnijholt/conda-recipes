# Conda-recipes for my [binstar](http://binstar.org/basnijholt)

In order to install [Kwant](kwant-project.org/) I made some recipes to compile it and its dependencies.

My recipes
  - [MUMPS](mumps.enseeiht.fr) Sequential version, with SCOTCH and Metis (non-python)
  - [SCOTCH](https://www.labri.fr/perso/pelegrin/scotch/) (non-python)
  - Tinyarray
  - Kwant
  - lapack


For Mac OS X you need to have X-Code installed, do with `xcode-select --install`

For some older OSs you might need to install `conda instal gcc`, if that doesn't install you might need `sudo apt-get install libc-dev`


To make the build as reproducible as possible I created a Docker image (also in this repo) where I build the linux-64 packages.

### Installation
Clone this repo and don't `cd` into it.

You need to have Docker installed:

```sh
docker build --tag="build" conda-recipes/docker_build/
docker run -v /path/to/conda-recipes/:/conda-recipes/ -it build
```
After you enter your new Docker image:
```sh
conda build /conda-recipes/scotch5/
conda install -y scotch5 --use-local
conda build /conda-recipes/metis/
conda install -y metis --use-local
conda build /conda-recipes/lapack/
conda install -y lapack --use-local
conda build /conda-recipes/mumps_seq/
conda install -y mumps --use-local
conda build /conda-recipes/tinyarray/
conda install -y tinyarray --use-local
conda build /conda-recipes/kwant/
conda install -y kwant --use-local
```
