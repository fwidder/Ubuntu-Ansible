FROM alpine:latest

LABEL MAINTAINER="Florian Widder <florian.widder@live.de>"

RUN apk add --update --no-cache ansible

VOLUME /playbook

WORKDIR /playbook
CMD echo $(ansible --version)
