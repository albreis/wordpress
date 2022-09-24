FROM wordpress:latest
RUN apt-get update && apt-get install -y cron wget curl vim
COPY php.ini /usr/local/etc/php/conf.d/wordpress.ini
COPY cron.txt /
COPY apache2.sh /usr/bin/apache2.sh
RUN chmod +x /usr/bin/apache2.sh
COPY --from=wordpress:cli /usr/local/bin/wp /usr/local/bin/wp
CMD ["apache2.sh"]