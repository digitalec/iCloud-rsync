# iCloud-rsync
Launchd plist to automatically backup iCloud Drive to external location

#### Usage
* `BACKUP_PATH` - The path where the backup of iCloud Drive will be stored
* `LOG_FILE_PATH` (optional) - Path for log file; if not used you must remove the entry!
* `STDOUT_PATH` (optional) - Path to save stdout to; if not used you must remove the entry!
* `STDERR_PATH` (optional) - Path to save stderr to; if not used you must remove the entry!

#### Warning
By default I use `--delete` to keep the backup an exact match of what is in iCloud Drive. Anything in `BACKUP_PATH` that is not in your iCloud Drive will be deleted (iCloud Drive contents are safe and will not be deleted!)
