# Day 23 – Git Branching & Working with GitHub

### Task 1: Understanding Branches

1. What is a branch in Git?
- It is an  independent parallel workspace for code
 
2. Why do we use branches instead of committing everything to `main`?
- We use branches  to protect the code from getting messy or broken
  
3. What is `HEAD` in Git?
- `HEAD` It points to the latest commit on the branch you are working on.

4. What happens to your files when you switch branches?
- Switching the branches instantly updates your folder to match the switch branch
- The previous branch code will remain the same until we merge it

---

### Task 2: Branching Commands — Hands-On
In your `devops-git-practice` repo, perform the following:
1. List all branches in your repo
2. Create a new branch called `feature-1`
3. Switch to `feature-1`
4. Create a new branch and switch to it in a single command — call it `feature-2`
5. Try using `git switch` to move between branches — how is it different from `git checkout`?
6. Make a commit on `feature-1` that does **not** exist on `main`
7. Switch back to `main` — verify that the commit from `feature-1` is not there
8. Delete a branch you no longer need
9. Add all branching commands to your `git-commands.md`

<img width="857" height="849" alt="Screenshot 2026-06-06 185830" src="https://github.com/user-attachments/assets/cd54e001-f57b-483f-98dd-46cdb1e7edd3" />


---

### Task 3: Push to GitHub
1. Create a **new repository** on GitHub (do NOT initialize it with a README)
2. Connect your local `devops-git-practice` repo to the GitHub remote
3. Push your `main` branch to GitHub
4. Push `feature-1` branch to GitHub
5. Verify both branches are visible on GitHub


<img width="1894" height="893" alt="Screenshot 2026-06-06 191317" src="https://github.com/user-attachments/assets/be3c045b-b779-4fd0-9fb7-7d17b9003bfb" />



<img width="1228" height="396" alt="Screenshot 2026-06-06 195921" src="https://github.com/user-attachments/assets/3346015a-ee53-4cb0-be9c-d3d545970851" />

<img width="951" height="541" alt="Screenshot 2026-06-06 200121" src="https://github.com/user-attachments/assets/d2c63ce4-6a4c-43bd-be00-080cdfa46436" />



6. Answer in your notes: What is the difference between `origin` and `upstream`?

- `origin` ---> Is the personal repository on the server with full permission
- `upstream` ---> Is the repository created by someone else that we can clone and fork
  
---

### Task 4: Pull from GitHub
1. Make a change to a file **directly on GitHub** (use the GitHub editor)
2. Pull that change to your local repo

<img width="1882" height="747" alt="Screenshot 2026-06-06 200451" src="https://github.com/user-attachments/assets/ec5e40fe-8115-48ce-8d63-0d4c43c616a3" />

<img width="1349" height="174" alt="Screenshot 2026-06-06 201438" src="https://github.com/user-attachments/assets/dbe63e0d-714b-4efa-ae69-5de5ab7d56d9" />


<img width="887" height="519" alt="Screenshot 2026-06-06 202458" src="https://github.com/user-attachments/assets/b679d03d-4e83-4376-8c4e-ef78c2e94e98" />


3. Answer in your notes: What is the difference between `git fetch` and `git pull`?
- `gitfetch` ---> Downloads changes from remote only does not change your branch just updates remote info
- `gitpull` ---> Downloads changes from remote and merges them into your current branch, updating your local branch immediately

---

### Task 5: Clone vs Fork
1. **Clone** any public repository from GitHub to your local machine
2. **Fork** the same repository on GitHub, then clone your fork

<img width="907" height="272" alt="Screenshot 2026-06-06 203119" src="https://github.com/user-attachments/assets/a0aa79d2-5d60-4ceb-b7cf-f174c91aecda" />

<img width="1396" height="746" alt="Screenshot 2026-06-06 203324" src="https://github.com/user-attachments/assets/fc9ef540-2b13-4e79-8340-7819ef0732da" />



3. Answer in your notes:
   - What is the difference between clone and fork?
   * `clone` ---> Is to make a copy in computer where we can read study or edit but it’s just a local copy on our computer
   * `fork` --->  Is also create a copy in our personal git-hub repository under our name we have full ownership and permission to change it however we like
   - When would you clone vs fork?
   *
   - After forking, how do you keep your fork in sync with the original repo?
     

---
