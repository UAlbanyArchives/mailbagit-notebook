FROM ubuntu:20.04
MAINTAINER Gregory Wiedeman gwiedeman@albany.edu

ENV TZ=America/New_York \
    DEBIAN_FRONTEND=noninteractive \
    MAILBAG_LOG_LEVEL=info \
    IN_CONTAINER=true

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential && \
    apt-get install -y libgtk-3-dev && \
    apt-get install -y python3-pip && \
    apt-get install -y curl && \
    \
    pip install libpff-python==20211114 && \
    \
    curl -L -o /tmp/wkhtmltox_0.12.6-1.focal_amd64.deb \
       https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb && \
    apt-get install -y /tmp/wkhtmltox_0.12.6-1.focal_amd64.deb && \
    \
    curl -L -o /tmp/google-chrome-stable_current_amd64.deb \
        https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -y /tmp/google-chrome-stable_current_amd64.deb && \
    \
    pip install mailbagit[pst] -U

RUN apt install -y git

RUN git clone https://github.com/UAlbanyArchives/mailbagit-notebook

ADD sampleData /mailbagit-notebook/sampleData

WORKDIR /mailbagit-notebook

RUN pip install jupyter

ADD .jupyter/jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
