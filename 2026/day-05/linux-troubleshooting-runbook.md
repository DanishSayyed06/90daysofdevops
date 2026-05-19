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

  <img width="1413" height="91" alt="Screenshot 2026-05-19 192709" src="https://github.com/user-attachments/assets/b75dd84b-0d2e-4d96-b4b2-37e59cf76d6f" />

Glimpse : It will give usthe version of kernal

- Command : `cat /etc/os-release`

<img width="895" height="345" alt="Screenshot 2026-05-19 192751" src="https://github.com/user-attachments/assets/7e03f7e2-a218-4486-aa8b-4a37bd159036" />

Glimpse : It shows the distribution and release version


## Filesystem sanity

- Command : `mkdir /tmp/runbook-demo`

<img width="1866" height="153" alt="Screenshot 2026-05-19 195413" src="https://github.com/user-attachments/assets/2ef5d3f9-d817-4467-98cc-0faa762776dc" />

Glimpse 1 : First command make directory succesfully 


- Command : `cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo`

<img width="1094" height="124" alt="Screenshot 2026-05-19 195828" src="https://github.com/user-attachments/assets/4e0a959a-693e-486f-b69d-666e7c6284a4" />

Glimpse 2 :  opied the files from /etc/hosts. Filesystem is writable 


## CPU / Memory 

- Command : `ps -o pid,pcpu,pmem,comm -p $(pidof sshd)`

<img width="664" height="121" alt="Screenshot 2026-05-19 200734" src="https://github.com/user-attachments/assets/fa8cbd10-6db5-4779-919f-bb469dac3797" />


- Command : `free -h`

<img width="963" height="151" alt="Screenshot 2026-05-19 195909" src="https://github.com/user-attachments/assets/06367723-7ca3-45e8-99ef-c95b609b06b5" />


## Disk / IO 

- Command : `df -h`

  <img width="987" height="390" alt="Screenshot 2026-05-19 200828" src="https://github.com/user-attachments/assets/e63d9f89-eefd-4931-ba45-f1d9f9272326" />



- Command : `iostat`

  <img width="1073" height="300" alt="Screenshot 2026-05-19 201205" src="https://github.com/user-attachments/assets/cb291564-3e8d-4ec0-a7b2-ea571f0ced17" />


To run this command have to install systat first


## Network

- Command : `sudo ss -tulpn | grep  sshd`

  <img width="1059" height="110" alt="Screenshot 2026-05-19 201345" src="https://github.com/user-attachments/assets/5d978ad1-90fd-4731-b851-4158f2895023" />



- Command : `nc -zv localhost 8888`

  <img width="660" height="76" alt="Screenshot 2026-05-19 203711" src="https://github.com/user-attachments/assets/bc93df6c-cd86-4784-b9f8-9cd296bde42b" />


## Logs

- Command : `journalctl -u docker -n 50`

  <img width="1918" height="925" alt="Screenshot 2026-05-19 201541" src="https://github.com/user-attachments/assets/77b0cce6-01e3-418b-bfae-f9e1bf9210ff" />


  

- Command :`tail -n 50 /var/log/auth.log `

<img width="1898" height="988" alt="Screenshot 2026-05-19 201807" src="https://github.com/user-attachments/assets/6df56fcf-abf0-46e3-8fee-184b53318c6f" />


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
