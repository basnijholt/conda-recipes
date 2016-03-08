FROM ubuntu:trusty
MAINTAINER Bas Nijholt <basnijholt@gmail.com>

RUN cd
RUN apt-get update
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://repo.continuum.io/archive/Anaconda3-2.5.0-Linux-x86_64.sh
RUN /bin/bash Anaconda3-2.5.0-Linux-x86_64.sh -b
RUN echo 'export PATH="/root/anaconda3/bin:$PATH"' > /root/.bashrc
ENV PATH /root/anaconda3/bin:$PATH
RUN conda config --add channels http://conda.anaconda.org/basnijholt

VOLUME ["/home/shared"]
