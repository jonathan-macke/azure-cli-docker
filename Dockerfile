FROM azuresdk/azure-cli-python:latest

MAINTAINER jonathan.macke@worldline.com

RUN mkdir /awl-azure-cli && mkdir /app && apk add curl
ENV PATH=/awl-azure-cli:$PATH

COPY scripts /awl-azure-cli