# Day 04 – Linux Practice: Processes and Services

## Process commends 

- `pa -aux | head -n 10`        : List top 10 lines of process

 <img width="1600" height="275" alt="WhatsApp Image 2026-05-18 at 12 02 13 AM (2)" src="https://github.com/user-attachments/assets/3c002126-b07b-46c7-8b3d-6a748170e3f5" />




- `top`                         : To check

  <img width="1600" height="829" alt="WhatsApp Image 2026-05-18 at 12 02 13 AM (3)" src="https://github.com/user-attachments/assets/01d7829f-a08d-4056-bf4a-5d80d200906a" />





- `pgrep -lx <process>`          : To get process PID

  <img width="685" height="133" alt="WhatsApp Image 2026-05-18 at 12 02 12 AM" src="https://github.com/user-attachments/assets/e36c174d-492e-4a08-81f0-62e91e3495ae" />


## Service Commands 

- `systemctl status <service>`     : To Check the Status of Service

  <img width="1217" height="531" alt="WhatsApp Image 2026-05-18 at 12 02 32 AM" src="https://github.com/user-attachments/assets/e7fd16db-0ee7-418c-8f9a-2c5509f8b0dc" />



-  `systemctl stop <service>`     : To Stop the Service

  <img width="795" height="181" alt="WhatsApp Image 2026-05-18 at 12 02 31 AM" src="https://github.com/user-attachments/assets/076c317a-cb24-4994-97e6-aa8fe4312b62" />


##  Log commands

- `journalctl -u <Service>`       : To Check logs of the Service

  <img width="1600" height="837" alt="WhatsApp Image 2026-05-18 at 12 02 13 AM (4)" src="https://github.com/user-attachments/assets/07fdbba9-fd83-4db7-8adf-2b56c7eec2a9" />



- `journalctl -u <service> | tail -n 10` : To Check the last 10 logs

  <img width="1600" height="290" alt="WhatsApp Image 2026-05-18 at 12 02 13 AM" src="https://github.com/user-attachments/assets/8bffe36c-2cb9-4892-9dfe-3f8a9b30b252" />

  ## What I Learn ?

  - How to Run Sevice
  - How to Stop Sevice
  - How to Check Logs of Service
  - How to Check Logs with last 10 lines
  - How to Check PID of Service 
