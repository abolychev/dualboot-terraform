variant: fcos
version: 1.2.0
passwd:
  users:
  - name: ${user}
    ssh_authorized_keys:
    - ${key}
    groups:
      - docker
