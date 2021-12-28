FROM ubuntu:latest

MAINTAINER Florian Widder <florian.widder@live.de>

RUN sudo apt update
RUN sudo apt upgrade
RUN sudo apt install python3
RUN sudo apt install software-properties-common
RUN sudo add-apt-repository --yes --update ppa:ansible/ansible
RUN sudo apt install ansible ansible-playbook ansible-lint

VOLUME /playbook
WORKDIR /playbook

CMD echo $(ansible --version)
