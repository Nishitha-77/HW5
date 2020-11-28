FROM httpd:latest

WORKDIR /mnt/f/q1_b

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Indian

RUN apt-get -y update
RUN apt-get install -y apache2

EXPOSE 80

COPY index.html /var/www/html/index.html

CMD [ "/usr/sbin/apache2ctl","-D", "FOREGROUND" ]

