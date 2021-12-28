FROM alpine:latest

LABEL MAINTAINER="Florian Widder <florian.widder@live.de>"

RUN apk add --update ansible && \
    apk cache clean

VOLUME /playbook

WORKDIR /playbook
CMD echo $(ansible --version)
