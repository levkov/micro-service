FROM searsil/centos7base:latest

RUN yum install -y nginx git redis && \
    pip install Flask gunicorn redis rq rq-dashboard rq-scheduler

RUN mkdir /opt/app
COPY conf/default /etc/nginx/nginx.conf
COPY conf/supervisord.conf /etc/supervisord.conf

EXPOSE 80 9181 8080
