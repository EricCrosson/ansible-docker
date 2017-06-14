# ansible-docker [![Build Status](https://travis-ci.org/EricCrosson/ansible-docker.svg?branch=master)](https://travis-ci.org/EricCrosson/ansible-docker) [![Ubuntu Xenial](https://img.shields.io/badge/ubuntu-xenial-orange.svg)](http://releases.ubuntu.com/16.04/) [![Dockerhub](https://img.shields.io/docker/pulls/hamroctopus/ansible.svg)](https://hub.docker.com/r/hamroctopus/ansible/)

> Docker image providing ansible

## GitLab-CI Example

Use this container to validate your 

```yaml
---
ansible_provision:
  image: hamroctopus/ansible:1.0.0
  script:
    - ansible-playbook -i localhost, site.yml
```

## Related

- [goss](https://github.com/aelsabbahy/goss)

## License

ISC © Eric Crosson
