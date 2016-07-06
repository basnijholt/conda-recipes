# Conda-recipes for my [binstar](http://binstar.org/basnijholt)

Install `kwant` with:
```
conda install -c basnijholt kwant=1.2.2
```

In order to install [Kwant](kwant-project.org/) I made some recipes to compile it and its dependencies.

My recipes
  - [MUMPS](mumps.enseeiht.fr) Sequential version, with SCOTCH and Metis (non-python)
  - [SCOTCH](https://www.labri.fr/perso/pelegrin/scotch/) (non-python)
  - [Metis](http://glaros.dtc.umn.edu/gkhome/metis/metis/overview) (non-python)
  - [Tinyarray](kwant-project.org/)
  - [Kwant](kwant-project.org/)

For Mac OS X you need to have X-Code installed, do with `xcode-select --install`

For Linux it should work out of the box.



To make the build as reproducible as possible I created a Docker image (also in this repo) where I build the linux-64 packages.

### Installation
Clone this repo and don't `cd` into it.

You need to have Docker installed:

```sh
docker build --tag="build" conda-recipes/docker_build/
docker run -v ${PWD}/conda-recipes/:/conda-recipes/ -it build
```
After you enter your new Docker image:
```sh
conda build /conda-recipes/scotch/
conda install -y scotch --use-local
conda build /conda-recipes/metis/
conda install -y metis --use-local
conda build /conda-recipes/mumps_seq/
conda install -y mumps_seq --use-local
conda build /conda-recipes/tinyarray/
conda install -y tinyarray --use-local
conda build /conda-recipes/kwant/
conda install -y kwant --use-local
conda build /conda-recipes/discretizer/
conda install -y discretizer --use-local
```
