FROM ubuntu:trusty
MAINTAINER Eric Crosson <ecrosson@shoretel.com>

RUN apt-get update && \
apt-get install -y --no-install-recommends software-properties-common=0.92.37.7 python-software-properties=0.92.37.7 && \
add-apt-repository -y ppa:ansible/ansible && \
apt-get update && \
apt-get install -y --no-install-recommends ansible=2.2.1.0-1ppa~trusty && \
apt-get clean && rm -rf /var/lib/apt/lists/*

# switch to uid/gid identical to host uid/gid (forks/users), if not doing this, files that
# clang-format written will change user and group all to root.
USER 1000:100

ENTRYPOINT []
