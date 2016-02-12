FROM continuumio/anaconda3:latest
RUN apt-get update && \
    apt-get install -y \
    procps \
    vim \
    telnet \
    zip \
    git
FROM Python 3.5.1
WORKDIR ./
COPY requirements.txt dev-requirement.txt ./
RUN pip install -r requirements.txt
COPY ../
