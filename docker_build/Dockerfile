FROM ubuntu:trusty
MAINTAINER Bas Nijholt <basnijholt@gmail.com>

RUN cd
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y build-essential
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y gfortran
RUN wget wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda3-2.5.0-Linux-x86_64.sh
RUN /bin/bash Anaconda3-2.5.0-Linux-x86_64.sh
RUN echo 'export PATH="/root/anaconda3/bin:$PATH"' > /root/.bashrc
ENV PATH /root/anaconda3/bin:$PATH
RUN conda config --add channels http://conda.anaconda.org/basnijholt


VOLUME ["/home/shared"]
