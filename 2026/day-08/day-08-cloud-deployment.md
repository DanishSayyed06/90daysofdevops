# Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

## Task
- Launch a cloud instance (AWS EC2 or Utho)
- Connect via SSH
- Install Nginx
- Configure security groups for web access (port 80 by default for nginx)
- Extract and save logs to a file
- Verify your webpage is accessible from the internet

Step 1  : SSh into instance from AWS to local terminal  

command : `ssh -i "Josh-Batch-11-danish-key.pem" ubuntu@ec2-3-227-244-77.compute-1.amazonaws.com`

Step 2  : update the system 

Command  : `Sudo apt-get update` 

Step 3   : Install Ngnix

Command  : `sudo apt install ngnix`

Step 4   : Check the Status of Ngnix 

Command  : `sudo systemctl status ngnix`

Step 5   : Check logs of ngnix

Command  : `sudo journalctl -u ngnix`

Step 6   : Save logs to to cloud system 

Command  : `sudo journalctl-u ngnix > ngnix.log`

Step 7   : Save on the local system 
- first open the other terminal where we want to download file 

- For Access Log
Command  : `scp -i "Josh-Batch-11-danish-key.pem ubuntu@ec2-3-227-244-77.compute-1.amazonaws.com:/var/logs/nginx/access.log access.log `

- For nginx log 
Command  : `scp -i Josh-Batch-11-danish-key.pem ubuntu@ec2-3-227-244-77.compute-1.amazonaws.com:~/jornalctl.log jornalctl.log`

## Challenges Faced

- only while downloading the log file to local machine

Solution : I google the error and coe to know that i have to give folder name at last 


## What I Learn

- SSH Cloud instance in Local
- Creating Security Group
- install Nginx and docker 
- Took HTTP Logs in access.log
- Took Logs of Nginx and docker  




