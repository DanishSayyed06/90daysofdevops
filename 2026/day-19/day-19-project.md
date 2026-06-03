# Day 19 – Shell Scripting Project: Log Rotation, Backup & Crontab

### Task 1: Log Rotation Script

Create `log_rotate.sh` that:
1. Takes a log directory as an argument (e.g., `/var/log/myapp`)
2. Compresses `.log` files older than 7 days using `gzip`
3. Deletes `.gz` files older than 30 days
4. Prints how many files were compressed and deleted
5. Exits with an error if the directory doesn't exist

<img width="894" height="530" alt="WhatsApp Image 2026-06-03 at 10 11 27 AM (1)" src="https://github.com/user-attachments/assets/c879b1d1-04cb-47b2-a873-5b8bbe4a2cc0" />

<img width="639" height="88" alt="WhatsApp Image 2026-06-03 at 10 21 42 AM" src="https://github.com/user-attachments/assets/4e95570d-444f-4fe0-931e-2cf6c093462e" />




---

### Task 2: Server Backup Script
Create `backup.sh` that:
1. Takes a source directory and backup destination as arguments
2. Creates a timestamped `.tar.gz` archive (e.g., `backup-2026-02-08.tar.gz`)
3. Verifies the archive was created successfully
4. Prints archive name and size
5. Deletes backups older than 14 days from the destination
6. Handles errors — exit if source doesn't exist


<img width="616" height="912" alt="WhatsApp Image 2026-06-03 at 10 11 27 AM (6)" src="https://github.com/user-attachments/assets/dc18d514-bc6b-4d24-bf5b-bf4717570ee8" />

<img width="882" height="202" alt="WhatsApp Image 2026-06-03 at 10 11 27 AM (5)" src="https://github.com/user-attachments/assets/0890b26e-100f-4e87-a67b-cd8c4bc54717" />


---


### Task 3: Crontab
1. Read: `crontab -l` — what's currently scheduled?
2. Understand cron syntax:
   ```
   * * * * *  command
   │ │ │ │ │
   │ │ │ │ └── Day of week (0-7)
   │ │ │ └──── Month (1-12)
   │ │ └────── Day of month (1-31)
   │ └──────── Hour (0-23)
   └────────── Minute (0-59)


- Run `log_rotate.sh` every day at 2 AM ---> `0 2 * * *`
- Run `backup.sh` every Sunday at 3 AM ---> `0 3 * * 7`
- Run a health check script every 5 minutes ---> `*/5 * * * *`


### Task 4: Combine — Scheduled Maintenance Script
Create `maintenance.sh` that:
1. Calls your log rotation function
2. Calls your backup function
3. Logs all output to `/var/log/maintenance.log` with timestamps
4. Write the cron entry to run it daily at 1 AM
- `0 1 * * *`

<img width="798" height="883" alt="WhatsApp Image 2026-06-03 at 10 11 28 AM (1)" src="https://github.com/user-attachments/assets/a3c5bc78-1849-48d5-be1d-3180176931a7" />

<img width="734" height="128" alt="WhatsApp Image 2026-06-03 at 10 11 28 AM" src="https://github.com/user-attachments/assets/12c2d182-1e11-4bcc-9d76-e94ca5306cfa" />

---
