# Eanix Tools
Eanix Tools is a set of tools for use by system administrators, home enthusiasts, and self-hosters of Linux systems. 
## rclone-to
A quick wrapper around rclone to easily be able to send file to multiple destinations at once. Works with copy/move/etc.
```
rclone-to copy --destionations servers.txt /path/to/source remote:/path/to/destination
```
This will copy the folder /path/to/source to each server's /path/to/destination. The "remote:" is replaced with the host name. You will need to already have the host configured in rclone config. It can be any host via sftp, cloud storage, etc., as long as it supports the copy and move commands and the destination paths line up.
