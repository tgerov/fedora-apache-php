FROM fedora:31
LABEL maintainer "Tsvetan Gerov <tg@linux-bg.com>"
RUN dnf -y update && dnf -y install httpd php php-gd php-pdo php-mbstring php-pear php-mysqlnd supervisor && dnf clean all
RUN mkdir -p /run/php-fpm
COPY config/supervisord.d/httpd.ini /etc/supervisord.d/
COPY config/supervisord.d/php-fpm.ini /etc/supervisord.d/
EXPOSE 80
VOLUME /var/www/html
ENTRYPOINT /usr/bin/supervisord  -n -c /etc/supervisord.conf

