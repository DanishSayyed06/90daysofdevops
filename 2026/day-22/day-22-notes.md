# Day 22 – Introduction to Git: Your First Repository

## Challenge Tasks

### Task 1: Install and Configure Git
1. Verify Git is installed on your machine
2. Set up your Git identity — name and email
3. Verify your configuration

<img width="455" height="89" alt="WhatsApp Image 2026-06-05 at 10 24 52 PM (6)" src="https://github.com/user-attachments/assets/1e21e2ff-bac7-40a4-a478-c730e75cd595" />


---

### Task 2: Create Your Git Project
1. Create a new folder called `devops-git-practice`
2. Initialize it as a Git repository
3. Check the status — read and understand what Git is telling you
4. Explore the hidden `.git/` directory — look at what's inside

<img width="1033" height="986" alt="WhatsApp Image 2026-06-05 at 10 24 52 PM" src="https://github.com/user-attachments/assets/3446b0b3-195b-43c4-90d1-a4e53d06aad1" />

## .git

<img width="1600" height="894" alt="WhatsApp Image 2026-06-05 at 10 24 52 PM (2)" src="https://github.com/user-attachments/assets/e4787711-16aa-4be9-b752-35c732be84f6" />


---

### Task 3: Create Your Git Commands Reference
1. Create a file called `git-commands.md` inside the repo
2. Add the Git commands you've used so far, organized by category:
   - **Setup & Config**
   - **Basic Workflow**
   - **Viewing Changes**
3. For each command, write:
   - What it does (1 line)
   - An example of how to use it

---

### Task 4: Stage and Commit
1. Stage your file
2. Check what's staged
3. Commit with a meaningful message
4. View your commit history

<img width="648" height="224" alt="WhatsApp Image 2026-06-05 at 10 24 52 PM (3)" src="https://github.com/user-attachments/assets/93877dea-1e4c-420f-979d-6a99a94e9133" />

<img width="684" height="239" alt="WhatsApp Image 2026-06-05 at 10 41 56 PM" src="https://github.com/user-attachments/assets/d3d3cec3-b7d6-4973-adb9-60fb39f374b5" />


---

### Task 5: Make More Changes and Build History
1. Edit `git-commands.md` — add more commands as you discover them
2. Check what changed since your last commit
3. Stage and commit again with a different, descriptive message
4. Repeat this process at least **3 times** so you have multiple commits in your history
5. View the full history in a compact format

<img width="493" height="141" alt="WhatsApp Image 2026-06-05 at 10 24 52 PM (5)" src="https://github.com/user-attachments/assets/960006eb-09aa-4e05-bb78-54d41de52362" />



---


### Task 6: Understand the Git Workflow
Answer these questions in your own words (add them to a `day-22-notes.md` file):
1. What is the difference between `git add` and `git commit`?
- `git add`  It  stages the changes for next commit 
- `git commit` Permanently save staged changes to repo history  

2. What does the **staging area** do? Why doesn't Git just commit directly?
- Staging area organiz specific changes before permanently recording them in your project history 
- Git separates staging from committing to allow you to selectively curate specific changes into logical, atomic snapshots rather than saving every disorganized modification at once

3. What information does `git log` show you?

- `git log`  Shows history of commit

4. What is the `.git/` folder and what happens if you delete it?

- `.git` contains the config file it store complete history of repo
- If it get delete nothing can be track 

5. What is the difference between a **working directory**, **staging area**, and **repository**?

- Working directory is where you edit file
- Staging area is where you prepare selected changes for next commit
- Repository is where those are permanently stored
   
---

