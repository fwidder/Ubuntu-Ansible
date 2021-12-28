FROM ubuntu:latest

MAINTAINER Florian Widder <florian.widder@live.de>

RUN apt update
RUN apt upgrade --yes
RUN apt install --yes python3
RUN apt install --yes software-properties-common
RUN add-apt-repository --yes --update ppa:ansible/ansible
RUN apt install --yes ansible ansible-playbook ansible-lint

VOLUME /playbook
WORKDIR /playbook

CMD echo $(ansible --version)
