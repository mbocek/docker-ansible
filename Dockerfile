FROM python:3.9.7-slim-bullseye

RUN pip install pip --upgrade
RUN pip install ansible==4.6.0

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass

WORKDIR /work