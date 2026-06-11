# Day 28 – Revision Day: Everything from Day 1 to Day 27


### Task 1: Self-Assessment Checklist
Go through the checklist below. For each item, mark yourself honestly:
- **Can do confidently**
- **Need to revisit**
- **Haven't done yet**

#### Linux
- [Confident] Navigate the file system, create/move/delete files and directories
- [Confident] Manage processes — list, kill, background/foreground
- [Confident] Work with systemd — start, stop, enable, check status of services
- [Confident] Read and edit text files using vi/vim or nano
- [Confident] Troubleshoot CPU, memory, and disk issues using top, free, df, du
- [Confident] Explain the Linux file system hierarchy (/, /etc, /var, /home, /tmp, etc.)
- [Confident] Create users and groups, manage passwords
- [Confident] Set file permissions using chmod (numeric and symbolic)
- [Confident] Change file ownership with chown and chgrp
- [Confident] Create and manage LVM volumes
- [Confident] Check network connectivity — ping, curl, netstat, ss, dig, nslookup
- [Confident] Explain DNS resolution, IP addressing, subnets, and common ports


#### Shell Scripting
- [revisit] Write a script with variables, arguments, and user input
- [Confident] Use if/elif/else and case statements
- [Confident] Write for, while, and until loops
- [Confident] Define and call functions with arguments and return values
- [revisit] Use grep, awk, sed, sort, uniq for text processing
- [Confident] Handle errors with set -e, set -u, set -o pipefail, trap
- [Confident] Schedule scripts with crontab


#### Git & GitHub
- [Confident] Initialize a repo, stage, commit, and view history
- [Confident] Create and switch branches
- [Confident] Push to and pull from GitHub
- [Confident] Explain clone vs fork
- [Confident] Merge branches — understand fast-forward vs merge commit
- [revisit] Rebase a branch and explain when to use it vs merge
- [Confident] Use git stash and git stash pop
- [Confident] Cherry-pick a commit from another branch
- [revisit] Explain squash merge vs regular merge
- [Confident] Use git reset (soft, mixed, hard) and git revert
- [Confident] Explain GitFlow, GitHub Flow, and Trunk-Based Development
- [Confident] Use GitHub CLI to create repos, PRs, and issues

---

### Task 2: Revisit Your Weak Spots

- Revisit Shell Scripting 

---


### Task 3: Quick-Fire Questions
Answer these from memory (no Googling). Then verify your answers:

1. What does `chmod 755 script.sh` do?
- It will give owner read/write/execute, groups & user can read/execute.
2. What is the difference between a process and a service?
-  A process is an active, executing instance of a computer program, while a service is a specialized, background process
3. How do you find which process is using port 8080?
- `sudo netstat -nlp | grep :8080` by this command  
4. What does `set -euo pipefail` do in a shell script?
- It exit script immediately if any command fails
5. What is the difference between `git reset --hard` and `git revert`?
- `git reset --hard` ---> It will remove the history commit
- `git revert` ---> It keeps the history and make new commit
6. What branching strategy would you recommend for a team of 5 developers shipping weekly?
- Trunk-based development
7. What does `git stash` do and when would you use it?
- `git stash` ---> I would use it for urgent fix i would `stash` work and fix code inother branch and `pop` again to the previous 
8. How do you schedule a script to run every day at 3 AM?
-  `0 3 * * *`
9. What is the difference between `git fetch` and `git pull`?
- `git pill` ---> It pull the changes from the branch merge it
- `git fetch` ---> gets all the changes of remote but doesn't merge them
10. What is LVM and why would you use it instead of regular partitions?
- 

---

### Task 4: Organize Your Work
1. Make sure all your daily submissions (day-1 through day-27) are committed and pushed
- Yes
2. Check that your `git-commands.md` is up to date
- Pending
3. Check that your shell scripting cheat sheet is complete
- Yes
4. Verify your GitHub profile and repos are clean (from Day 27)
- Yes
---

### Task 5: Teach It Back
Pick **one topic** you've learned and write a short explanation (5-10 lines) as if you're teaching it to someone who has never heard of it. Add it to your `day-28-notes.md`.

Examples:
- Explain Git branching to a non-developer
- Explain file permissions to a new Linux user
- Explain what a crontab is and why sysadmins use it

Teaching is the best test of understanding.

---
