#!/bin/bash
DAY="$(date+%Y_%m%d_%T_%H_%M)"
BACKUP="/home/$USER/backups/$DAY-backup-CompanyA.tar.gz"
tar -cvspzf $BACKUP /home/$USER/CompanyA