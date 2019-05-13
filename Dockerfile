FROM python:3.7.2-alpine3.9
LABEL maintainer="metalgearangel@gmail.com"

RUN pip install -U pip && pip install youtube-dl

WORKDIR /tmp/Downloads/

ENTRYPOINT ["youtube-dl"]
