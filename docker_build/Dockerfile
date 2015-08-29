FROM ubuntu:trusty
MAINTAINER Bas Nijholt <basnijholt@gmail.com>

RUN cd
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
RUN wget --quiet https://repo.continuum.io/miniconda/Miniconda-3.10.1-Linux-x86_64.sh 
RUN /bin/bash /Miniconda-3.10.1-Linux-x86_64.sh -b
RUN rm Miniconda-3.10.1-Linux-x86_64.sh
RUN echo 'export PATH=/root/miniconda/bin:$PATH' > /root/.bashrc
ENV PATH /root/miniconda/bin:$PATH
RUN conda install -y anaconda-client
RUN conda install -y conda-build
RUN conda config --add channels http://conda.anaconda.org/basnijholt
RUN conda config --add channels http://conda.anaconda.org/nlesc
RUN apt-get install -y build-essential
RUN apt-get install zlib1g-dev

VOLUME ["/home/shared"]
