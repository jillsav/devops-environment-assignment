#!/bin/bash

DATE=$(date +%F)
BACKUP_FILE="/backups/nginx_backup_$DATE.tar.gz"
LOG_FILE="/backups/nginx_backup_log.txt"

echo "Starting Nginx backup - $(date)" >> $LOG_FILE

tar -czf $BACKUP_FILE /etc/nginx /usr/share/nginx/html 2>> $LOG_FILE

echo "Backup created: $BACKUP_FILE" >> $LOG_FILE

echo "Verifying backup contents:" >> $LOG_FILE
tar -tzf $BACKUP_FILE >> $LOG_FILE

echo "Backup completed - $(date)" >> $LOG_FILE
echo "----------------------------------" >> $LOG_FILE
