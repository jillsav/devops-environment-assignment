Automated Backup Configuration for Web Servers

## Objective

To configure automated backups for Apache and Nginx web servers to ensure data integrity and enable disaster recovery.

---

## Scenario

- Sarah manages an Apache web server
- Mike manages a Nginx web server
- Both require scheduled backups of configurations and web content

---

## Backup Configuration

### Apache Backup (Sarah)

Directories included:

- /etc/httpd/
- /var/www/html/

Backup file format:

apache_backup_YYYY-MM-DD.tar.gz

---

### Nginx Backup (Mike)

Directories included:

- /etc/nginx/
- /usr/share/nginx/html/

Backup file format:

nginx_backup_YYYY-MM-DD.tar.gz

---

## Backup Location

All backups are stored in:

/backups/

---

## Scripts

The following scripts were created:

backup_scripts/apache_backup.sh  
backup_scripts/nginx_backup.sh

---

## Script Features

- Creates compressed backups using `tar -czf`
- Automatically generates date-based filenames
- Logs backup process
- Verifies backup integrity using:

tar -tzf backup_file.tar.gz

---

## Sample Commands

Run Apache backup manually:

sudo ./backup_scripts/apache_backup.sh

Run Nginx backup manually:

sudo ./backup_scripts/nginx_backup.sh

---

## Cron Job Configuration

Backups are scheduled using cron:

0 0 * * 2 /path/to/apache_backup.sh

0 0 * * 2 /path/to/nginx_backup.sh



Logs are stored in:

/backups/apache_backup_log.txt  
/backups/nginx_backup_log.txt

---

## Expected Output

- Backup files created in `/backups/`
- Log files generated
- Archive contents successfully listed (verification)

---

## Conclusion

This setup ensures:

- Automated and consistent backups
- Secure storage of critical web server data
- Easy recovery in case of system failure
