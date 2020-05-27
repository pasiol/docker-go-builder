FROM ubuntu:20.04
RUN apt-get update && DEBIAN_FRONTEND=noninteractive && apt-get install -y --no-install-recommends tzdata
RUN apt-get -y install golang-go
RUN useradd -m worker
RUN mkdir /home/worker/data && \
    mkdir /home/worker/log && \
    chown -R worker:worker /home/worker
WORKDIR /home/worker/
USER worker