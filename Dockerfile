FROM python:3.10.0-slim-bullseye

RUN pip install pip --upgrade --no-cache-dir
RUN pip install ansible==4.6.0 six --no-cache-dir

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass ssh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work
