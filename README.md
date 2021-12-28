# Docker Ansible

Ansible in Docker Container

## How to use

Assuming the following folder structure:

```bash
.
├── inventory
├── .ansible.cfg
├── my_playbooks
│   └── playbook.yml
│   └── playbook-with-role.yml
└── roles
```

> The Ansible Config File (.ansible.cfg) is optional. If exists, it will be used automatically.

### Run Ad-Hoc Commands

```bash
docker run ghcr.io/fwidder/ubuntu-ansible:main ansible localhost -a "echo My Test Command"
```

### Use Inventory

```bash
docker run -v "$(pwd)/inventory:/etc/ansible/hosts" ghcr.io/fwidder/ubuntu-ansible:main ansible all -a "echo My Test Command"
```

### Run Playbooks

```bash
docker run -v "$(pwd)/my_playbooks/:/playbook/" ghcr.io/fwidder/ubuntu-ansible:main ansible-playbook playbook.yml
```

### Install Roles

```bash
docker run -v "$(pwd)/roles/:/usr/share/ansible/collections/" ghcr.io/fwidder/ubuntu-ansible:main ansible-galaxy collection install community.docker -p /usr/share/ansible/collections
```

### Use Roles

```bash
docker run -v "$(pwd)/roles/:/usr/share/ansible/collections/" ghcr.io/fwidder/ubuntu-ansible:main ansible-playbook playbook-with-role.yml
```
