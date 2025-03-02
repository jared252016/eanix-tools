# Eanix Tools
Eanix Tools is a set of tools for use by system administrators, home enthusiasts, and self-hosters of Linux systems. 
## Available Tools
### rclone-to
A quick wrapper around rclone to easily be able to send file to multiple destinations at once. Works with copy/move/etc.
```
rclone-to copy --destionations servers.txt /path/to/source remote:/path/to/destination
```
This will copy the folder /path/to/source to each server's /path/to/destination. The "remote:" is replaced with the host name. You will need to already have the host configured in rclone config. It can be any host via sftp, cloud storage, etc., as long as it supports the copy and move commands and the destination paths line up.

## Installing Eanix Tools  

To install **Eanix Tools**, simply clone the repository and run:  

```sh
sudo make install
```  

This will automatically install all required dependencies and place the necessary files in the correct locations, allowing you to use them system-wide.  

Alternatively, you can run the tools directly from the `bin/` directory. However, note that not all files are guaranteed to be standalone.  
