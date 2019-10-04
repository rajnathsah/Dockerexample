FROM python:3.7

RUN mkdir -p /var/dockerexample

WORKDIR /var/dockerdxample

COPY ./ /var/dockerexample

ENTRYPOINT python /var/dockerexample/main.py