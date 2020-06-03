FROM Python:3.7-alpine
MAINTAINER Divesh Kapoor 

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requiements.txt
RUN pip install -r /requiements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
