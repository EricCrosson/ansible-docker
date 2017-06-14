# ansible-docker [![Ubuntu Xenial](https://img.shields.io/badge/ubuntu-xenial-orange.svg)](http://releases.ubuntu.com/16.04/)

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
