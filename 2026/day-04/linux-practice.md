# Day 04 – Linux Practice: Processes and Services

## Process commends 

- `pa -aux | head -n 10`        : List top 10 lines of process



- `top`                         : To check 



- `pgrep -lx <process>`          : To get process PID


## Service Commands 

- `systemctl status <service>`     : To Check the Status of Service 


-  `systemctl stop <service>`     : To Stop the Service 

##  Log commands

- `journalctl -u <Service>`       : To Check logs of the Service 


- `journalctl -u <service> | tail -n 10` : To Check the last 10 logs