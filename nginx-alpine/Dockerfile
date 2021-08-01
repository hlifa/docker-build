# Version: 0.0.2
FROM alpine:3.12.4
MAINTAINER Jesse Hu "hu2014jesse@gmail.com"

RUN apk update && apk add nginx=1.18.0-r1

WORKDIR /etc/nginx

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /data1/www

VOLUME ["/etc/nginx/conf.d", "/data1/www"]

ENTRYPOINT ["/usr/sbin/nginx"]

CMD ["-h"]

EXPOSE 80 8080
