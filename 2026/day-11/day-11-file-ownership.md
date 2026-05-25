# Day 11 – File Ownership Challenge (chown & chgrp)

## Task
Master file and directory ownership in Linux.

- Understand file ownership (user and group)
- Change file owner using `chown`
- Change file group using `chgrp`
- Apply ownership changes recursively



### Task 1: Understanding Ownership 

- command : `ls -l`

`-rw-r--r-- 1 owner group size date filename`

Document: What's the difference between owner and group?

* Owner : Has right to change permission of files
* Group : Where users have access to shared files 

### Task 2: Basic chown Operations



<img width="641" height="92" alt="WhatsApp Image 2026-05-25 at 8 12 34 PM (15)" src="https://github.com/user-attachments/assets/a7f71521-6984-44e5-8e00-32a6a5ceb41c" />


<img width="592" height="65" alt="WhatsApp Image 2026-05-25 at 8 12 34 PM (14)" src="https://github.com/user-attachments/assets/65b43be0-a70a-439d-a28e-7d6bff2c24a2" />


<img width="653" height="173" alt="WhatsApp Image 2026-05-25 at 8 12 34 PM (12)" src="https://github.com/user-attachments/assets/86e6c2ec-0899-4b38-bc67-a589a0334bc9" />

1. Create file `devops-file.txt`
2. Check current owner: `ls -l devops-file.txt`
3. Change owner to `tokyo` (create user if needed)
4. Change owner to `berlin`



### Task 3: Basic chgrp Operations



<img width="596" height="116" alt="WhatsApp Image 2026-05-25 at 8 12 34 PM (11)" src="https://github.com/user-attachments/assets/ee7f6020-771c-42ce-94eb-8c8b99086778" />

<img width="737" height="196" alt="WhatsApp Image 2026-05-25 at 8 12 34 PM (8)" src="https://github.com/user-attachments/assets/96790f3e-958f-481e-8efc-54d9011afebc" />


1. Create file `team-notes.txt`
2. Check current group: `ls -l team-notes.txt`
3. Create group: `sudo groupadd heist-team`
4. Change file group to `heist-team`

### Task 4: Combined Owner & Group Change


<img width="795" height="98" alt="WhatsApp Image 2026-05-25 at 8 12 34 PM (7)" src="https://github.com/user-attachments/assets/4795282e-673d-401b-9f49-7997ca609c91" />

 <img width="743" height="168" alt="WhatsApp Image 2026-05-25 at 8 12 34 PM (6)" src="https://github.com/user-attachments/assets/6c975363-ba9e-48d6-b2fc-e6a9280d66e5" />

1. Create file `project-config.yaml`
2. Change owner to `professor` AND group to `heist-team` (one command)
3. Create directory `app-logs/`
4. Change its owner to `berlin` and group to `heist-team`

### Task 5: Recursive Ownership


<img width="777" height="412" alt="WhatsApp Image 2026-05-25 at 8 12 34 PM (3)" src="https://github.com/user-attachments/assets/3ce6ee13-c868-4596-8d65-55cbe9d06a5e" />


1. Create directory structure:
   ```
   mkdir -p heist-project/vault
   mkdir -p heist-project/plans
   touch heist-project/vault/gold.txt
   touch heist-project/plans/strategy.conf
   ```

2. Create group `planners`: `sudo groupadd planners`

3. Change ownership of entire `heist-project/` directory:
   - Owner: `professor`
   - Group: `planners`
   - Use recursive flag (`-R`)

4. Verify all files and subdirectories changed: `ls -lR heist-project/`


### Task 6: Practice Challenge


<img width="847" height="290" alt="WhatsApp Image 2026-05-25 at 8 12 34 PM" src="https://github.com/user-attachments/assets/ee834a60-dac4-48c9-befc-fdde6523f5bf" />

1. Create users: `tokyo`, `berlin`, `nairobi` (if not already created)
2. Create groups: `vault-team`, `tech-team`
3. Create directory: `bank-heist/`
4. Create 3 files inside:
   ```
   touch bank-heist/access-codes.txt
   touch bank-heist/blueprints.pdf
   touch bank-heist/escape-plan.txt
   ```

5. Set different ownership:
   - `access-codes.txt` → owner: `tokyo`, group: `vault-team`
   - `blueprints.pdf` → owner: `berlin`, group: `tech-team`
   - `escape-plan.txt` → owner: `nairobi`, group: `vault-team`



## Why This Matters for DevOps

In real DevOps scenarios, you need proper file ownership for:

- Application deployments
- Shared team directories
- Container file permissions
- CI/CD pipeline artifacts
- Log file management


## What I Learned
* Difference between file owner and file group
* How chown and chgrp work
