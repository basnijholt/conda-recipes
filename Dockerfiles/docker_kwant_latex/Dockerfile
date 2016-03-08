FROM ubuntu:trusty
MAINTAINER Bas Nijholt <basnijholt@gmail.com>

RUN apt-get install -y software-properties-common
RUN apt-add-repository -ys ppa:kwant-project/ppa && apt-get update
RUN apt-get install -y python-pip git libncurses5-dev
RUN apt-get build-dep -y python-numpy python-scipy python-matplotlib python-kwant cython
RUN apt-get install -y libhdf5-dev texlive-full
RUN apt-get remove python-matplotlib
RUN apt-get upgrade -y
RUN pip install -U pip
RUN pip install ipython[all]
RUN pip install -U scipy numpy cython kwant matplotlib tinyarray
RUN pip install qutip holoviews dill h5py

VOLUME ["/home/shared"]
