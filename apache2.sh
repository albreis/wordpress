#!/usr/bin/env bash
service cron start
crontab /cron.txt
apache2-foreground