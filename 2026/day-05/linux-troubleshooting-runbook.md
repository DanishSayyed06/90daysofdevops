# Day 05 – Linux Troubleshooting Runbook

## Why This Matters for DevOps
Incidents rarely come with perfect clues. A fast, repeatable checklist saves minutes when services misbehave.

This drill builds:
- Habit of capturing evidence before acting
- Confidence reading resource signals (CPU, memory, disk, network)
- Log-first mindset before restarts or escalations

These habits reduce downtime and prevent guesswork in production.


## Targeted Service

-   Docker 

## Environment Basics

- Command : `uname -a`

Glimpse : It will give usthe version of kernal

- Command : `cat /etc/os-release`

Glimpse : It shows the distribution and release version

## Filesystem sanity

- Command : `mkdir /tmp/runbook-demo`


Glimpse 1 : First command make directory succesfully 


- Command : `cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo`



Glimpse 2 :  opied the files from /etc/hosts. Filesystem is writable 


## CPU / Memory 

- Command : `ps -o pid,pcpu,pmem,comm -p $(pidof sshd)`


- Command : `free -h`


## Disk / IO 

- Command : `df -h`


- Command : `iostat`

To run this command have to install systat first


## Network

- Command : `sudo ss -tulpn | grep  sshd`


- Command : `nc -zv localhost 22`

## Logs

- Command : `journalctl -u ssh -n 50`


- Command :`tail -n 50 /var/log/auth.log `


## Quick outcome review

- Docker service running normally 
- Disk and logs size is healthy
- Network port 8888 is open and serving connections.
- No errors in logs.

## If this worsens
- Check logs again 
- Check CPU usage/Disk usage
- Restart service
- Check if port is used by other service
