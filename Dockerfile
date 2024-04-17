FROM python:3.12.2-alpine3.18

RUN apk update && apk add git openssh-client
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
WORKDIR /app