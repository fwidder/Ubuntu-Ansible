FROM ubuntu:latest

MAINTAINER Florian Widder <florian.widder@live.de>

RUN apt update
RUN apt upgrade
RUN apt install python3
RUN apt install software-properties-common
RUN add-apt-repository --yes --update ppa:ansible/ansible
RUN apt install ansible ansible-playbook ansible-lint

VOLUME /playbook
WORKDIR /playbook

CMD echo $(ansible --version)
