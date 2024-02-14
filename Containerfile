FROM quay.io/rockylinux/rockylinux:9

RUN dnf -y upgrade
RUN dnf install -y git python3 python3-pip cairo-devel

COPY . /wiki
WORKDIR /wiki
RUN pip install -r requirements.txt
