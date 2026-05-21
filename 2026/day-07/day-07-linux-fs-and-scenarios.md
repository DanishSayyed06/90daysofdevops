## Task

# will create notes covering

- Linux File System Hierarchy (the most important directories)
- Practice solving real-world scenarios step by step

# Linux File System Hierarchy 

### `/ (root)` 
- Its the base of system 
- I would use this to navigating the full system structure

### `/home`
- It home directory of User 
- I would use this to list home directories for user 

### `/root`
- Home directory of root user 
- Its access belong to only root user 
- I would use this when logged in as root

### `/etc`
- It contains configuration files and contains configuration files of users and passwords
- I would use this when checking config files

### `/var/log`
- Stores system and service logs.
- These logs are important for troubleshooting, monitoring 
- I would use this to check logs

### `/tmp`
- It Stored Temporary files 
- I would use this for temporary scripts

## Additional Directories (Good to Know):

### `/bin`
- It contains Binaries and programs  
- I would use to refer some core command 

### `/usr/bin` 
- Contains the majority of user command binaries
- I will use this to look for commands
- I would use this to know which command is installed 

### `/opt`
- Optional third-party applications
- I would use to checking manually installed apps

# Scenario-Based Practice 

## Scenario 1: Service Not Starting
A web application service called 'myapp' failed to start after a server reboot.
What commands would you run to diagnose the issue?
Write at least 4 commands in order.

# Step 1 : `systemctl status myapp`
- Check if the service is running,failed or stopped

# Step 2 : `journalctl -u myapp -n 50`
- If service is failed check logs

# Step 3 : `systemctl is-enabled myapp`
- To check if service starts automatically on boot

# Step 4 : `systemctl restart myapp`
- For restarting the service 

## Scenario 2: High CPU Usage
Your manager reports that the application server is slow.
You SSH into the server. What commands would you run to identify
which process is using high CPU?

# Step 1 : `top`
- Why : To Check live CPU usage

# Step 2 : `ps aux --sort=-%cpu | head -10
- Why : To Look for processes sorted by CPU percentage

# Step 3 : `pgrep`
- Why : To Get PID of specific process 

# Step 4 : `Kill`
- Why : Kill CPU intensive processes if needed 

## Scenario 3: Finding Service Logs

A developer asks: "Where are the logs for the 'docker' service?"
The service is managed by systemd.
What commands would you use?

# Step 1 : `systemctl status docker`
- Why : Check service status first

# Step 2 : `journalctl -u docker -n 50`
- Why : Check last 50 lines of logs

# Step 3 : `journalctl -u docker -f`
- Why : Check logs real-time

## Scenario 4: File Permissions Issue
A script at /home/user/backup.sh is not executing.
When you run it: ./backup.sh
You get: "Permission denied"

What commands would you use to fix this?

# Step 1 : 
`ls -l /home/user/backup.sh`
- Why : To check what  permissions  are given to backup.sh
- Output = -rw-r--r-- (notice no 'x' = not executable)

# Step 2 : `Command: chmod +x /home/user/backup.sh`
- Why :to grant premission for  execute 
 
# Step 3 : `ls -l /home/user/backup.sh`
- Why : To check if the file get the permission 
- Output = -rwxr-xr-x (notice 'x' = executable)

# Step 4 : `./backup.sh`
- Why : To Run file
 

