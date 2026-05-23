# Day 09 – Linux User & Group Management Challenge

## Task

Today's goal is to **practice user and group management** by completing hands-on challenges.

Figure out how to:
- Create users and set passwords
- Create groups and assign users
- Set up shared directories with group permissions


### Task 1: Create Users
# Add User

<img width="603" height="151" alt="1" src="https://github.com/user-attachments/assets/c5075c7b-82d9-44de-9bf7-1925868b9583" />

# Set passward
<img width="1252" height="243" alt="WhatsApp Image 2026-05-23 at 6 31 32 PM (9)" src="https://github.com/user-attachments/assets/0708b3bf-18bc-46bb-ba0e-65e9b8ce5934" />




- `tokyo`
- `berlin`
- `professor`

# Command used 
- To create user : `useradd -m tokyo `
- To set passward for user : `sudo passwd tokyo`
- To check the user : `cat /etc/passwd | tail -n 4`
- To change the shell of user to bash : `sudo usermod -s /bin/bash tokyo`
  

### Task 2: Create Groups

<img width="652" height="112" alt="2" src="https://github.com/user-attachments/assets/6ee633c9-e2ed-400e-99fc-072c051c445c" />


Create two groups:
- `developers`
- `admins`
# Command used :
- To create a group : `sudo groupadd  developers`
-  To create a group : `sudo groupadd  admins`
  


### Task 3: Assign to Groups

<img width="656" height="47" alt="Screenshot 2026-05-23 at 7 49 34 PM" src="https://github.com/user-attachments/assets/c2cc06f8-a79a-483f-94e6-83a3a437b907" />


<img width="767" height="123" alt="3" src="https://github.com/user-attachments/assets/d54e3277-1168-4fc6-958c-ef40b1419f55" />

Assign users:
- `tokyo` → `developers`
- `berlin` → `developers` + `admins` (both groups)
- `professor` → `admins`
# Command used :
- To add existing user in a group : `sudo usermod -aG developer tokyo`
- Command use for particular Group search :  `getent group developer`


### Task 4: Shared Directory 

<img width="1113" height="245" alt="WhatsApp Image 2026-05-23 at 6 31 32 PM (10)" src="https://github.com/user-attachments/assets/a861385a-f8b9-44da-9f25-8a9a401c15a9" />

- Tokyo creating file

<img width="979" height="119" alt="WhatsApp Image 2026-05-23 at 6 31 32 PM (7)" src="https://github.com/user-attachments/assets/6222c7f5-d536-4b64-8c50-dca1ef1e6e8a" />

<img width="788" height="82" alt="WhatsApp Image 2026-05-23 at 6 31 32 PM (5)" src="https://github.com/user-attachments/assets/2334760d-eb2a-4970-bd46-d9f4f11ecb65" />



1. Create directory: `/opt/dev-project`
2. Set group owner to `developers`
3. Set permissions to `775` (rwxrwxr-x)
4. Test by creating files as `tokyo` and `berlin`

# Command used :
- To create directory : `mkdir -p /opt/dev-project`
- To change group owner :`sudo chwon :developers /opt/dev-project`
- To set permission to 775 : `sudo chmod 775 /opt/dev-project`
- To create file : `sudo -u tokyo touch /opt/dev-project  tokyo.txt`  

### Task 5: Team Workspace

1. Create user `nairobi` with home directory
2. Create group `project-team`
3. Add `nairobi` and `tokyo` to `project-team`
4. Create `/opt/team-workspace` directory
5. Set group to `project-team`, permissions to `775`
6. Test by creating file as `nairobi`

# Command used :
- To creat user : `useradd -m nairobi`
- To create group :  `sudo groupadd project-team`
- To add user in group : `sudo usermod -aG project-team nairobi`
- To create directory ; `mkdir -p /opt/team-workspace`
- To set group `project-team` to `/opt/team-workspace` : `sudo chgrp project-team /opt/team-workspace`
- To set permission `775` : `sudo chmod 775 /opt/team-workspace`
- To create file `nairobi` : `sudo -u nairobi touch /opt/team-workspace  nairobi.txt`

## What I Learned

- How to manage users
- Importance of 775 permissions in shared environments
- How group ownership controls access 
