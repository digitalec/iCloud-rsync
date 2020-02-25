# iCloud-rsync
 Simple wrapper to copy iCloud Drive to an external source via rsync

#### Usage
Set `BACKUP_PATH` to the path where you want the backup stored.

#### Warning
By default I use `--delete` to keep the backup an exact match of what is in iCloud Drive. Anything in `BACKUP_PATH` that is not in your iCloud Drive will be deleted (iCloud Drive contents are safe and will not be deleted!)