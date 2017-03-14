# Written by Eric Crosson
# 2017-03-09
#
# This makefile provides targets to make the provided docker container
# and subject it to tests.

all:
	bin/build-docker

test:
	bundle exec rspec spec/Dockerfile_spec.rb
