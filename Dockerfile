FROM ubuntu:xenial
MAINTAINER Eric Crosson <ecrosson@shoretel.com>


ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
software-properties-common \
python-software-properties \
&& add-apt-repository -y ppa:ansible/ansible \
&& apt-get update \
&& apt-get install -y --no-install-recommends \
ansible \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

ARG VERSION
ARG RELEASE_DATE

LABEL vendor="ShoreTel" \
version="${VERSION}" \
release_date="${RELEASE_DATE}"
