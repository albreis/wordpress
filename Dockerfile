FROM wordpress
RUN apt-get update && apt-get install -y cron wget curl vim
COPY php.ini /usr/local/etc/php/conf.d/wordpress.ini
COPY cron.txt /
COPY cron.sh /
COPY --from=wordpress:cli /usr/local/bin/wp /usr/local/bin/wp
CMD ["/cron.sh"]