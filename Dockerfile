FROM python:2.7-alpine
MAINTAINER Reza Andriyunanto <andriyunantoreza@gmail.com>

ENV INSTALL_PATH /web_app
RUN mkdir $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY requirements requirements

RUN pip install -r requirements

COPY . .

CMD gunicorn -b 0.0.0.0:8000 --access-logfile - "web_app.app:create_app()"