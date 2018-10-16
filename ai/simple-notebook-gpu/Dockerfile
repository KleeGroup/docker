FROM nvidia/cuda:9.0-devel

MAINTAINER Kleegroup

WORKDIR /

RUN apt-get update && apt-get -y install curl
RUN curl https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh && bash /tmp/miniconda.sh -bfp /usr/local
RUN conda install -y cudatoolkit=9.0
RUN pip install --upgrade pip && pip install jupyter && jupyter notebook --generate-config

EXPOSE 8888/tcp

CMD jupyter notebook --allow-root --no-browser --ip="0.0.0.0"
