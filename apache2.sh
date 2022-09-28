#!/usr/bin/env bash
service cron start
printenv >> /etc/environment
crontab /cron.txt
apache2-foreground