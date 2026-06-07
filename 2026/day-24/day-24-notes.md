# Day 24 – Advanced Git: Merge, Rebase, Stash & Cherry Pick

### Task 1: Git Merge — Hands-On
1. Create a new branch `feature-login` from `main`, add a couple of commits to it

<img width="556" height="133" alt="WhatsApp Image 2026-06-07 at 9 39 12 PM (1)" src="https://github.com/user-attachments/assets/052e41fb-0517-4ca5-bfef-1cd687235156" />

2. Switch back to `main` and merge `feature-login` into `main`

<img width="924" height="580" alt="WhatsApp Image 2026-06-07 at 9 39 12 PM (2)" src="https://github.com/user-attachments/assets/5f74f62c-ad86-4937-b5c4-c70c9bea7c1a" />

3. Observe the merge — did Git do a **fast-forward** merge or a **merge commit**?

<img width="501" height="141" alt="WhatsApp Image 2026-06-07 at 9 39 12 PM (3)" src="https://github.com/user-attachments/assets/cb36821d-89f5-4eb2-b471-06a953516e3a" />

4. Now create another branch `feature-signup`, add commits to it — but also add a commit to `main` before merging

<img width="728" height="528" alt="WhatsApp Image 2026-06-07 at 9 39 12 PM (5)" src="https://github.com/user-attachments/assets/7d206e4f-dac3-43d1-92a2-b7774a1c4417" />


5. Merge `feature-signup` into `main` — what happens this time?

<img width="728" height="528" alt="WhatsApp Image 2026-06-07 at 9 39 12 PM (5)" src="https://github.com/user-attachments/assets/58ef1844-4ff0-412a-b301-722a713c134f" />

<img width="505" height="206" alt="WhatsApp Image 2026-06-07 at 9 39 12 PM (6)" src="https://github.com/user-attachments/assets/3d27b138-85d9-459f-902d-d0d4c1045b62" />


6. Answer in your notes:
   1. What is a fast-forward merge?
   - A fast-forward merge occurs when the branch being merged has no new commits since it diverged from the main branch, allowing Git to simply move the branch pointer forward to the latest commit 
   
   2. When does Git create a merge commit instead?
   - Git creates a merge commit when the branches have diverged, meaning both have new, unique commits since they split, requiring Git to combine the histories into a new common commit 
   
   3. What is a merge conflict? 
   - Merge conflicts happen because the same file is edited in two branches.Git can’t figure out which version of a file to keep during a merge

---

### Task 2: Git Rebase — Hands-On
1. Create a branch `feature-dashboard` from `main`, add 2-3 commits

<img width="811" height="331" alt="WhatsApp Image 2026-06-07 at 9 39 12 PM (10)" src="https://github.com/user-attachments/assets/0919d221-065f-4ffb-a79d-a6aa1db9fd23" />

2. While on `main`, add a new commit (so `main` moves ahead)

<img width="706" height="269" alt="WhatsApp Image 2026-06-07 at 9 39 12 PM (11)" src="https://github.com/user-attachments/assets/428f2e01-ee1e-48b9-bad1-83bc3df90d0a" />


3. Switch to `feature-dashboard` and rebase it onto `main`

<img width="811" height="331" alt="WhatsApp Image 2026-06-07 at 9 39 12 PM (10)" src="https://github.com/user-attachments/assets/441745aa-efac-40ee-b14c-fefc98c8c5b2" />



4. Observe your `git log --oneline --graph --all` — how does the history look compared to a merge?

<img width="753" height="565" alt="WhatsApp Image 2026-06-07 at 9 39 13 PM (3)" src="https://github.com/user-attachments/assets/0253a998-d00d-4539-82e5-16f61b9a5216" />



5. Answer in your notes:
   1. What does rebase actually do to your commits?
   - rebase "rewrites history" by taking  branch commits and replaying them one by one on top of the latest version of main 
   
   2. How is the history different from a merge?
   - A merge creates a new "merge commit" that ties two histories together
   - Rebase creates entirely new commits for your work, resulting linear history without merge bubbles 
   
   3.  Why should you **never rebase commits that have been pushed and shared** with others?
   
   - It can cause a mess as its id becomes diffrent 
   
   4.  When would you use rebase vs merge?
   
   -  While working on diffrent branches we can use `merge`

   - `rebse` can be use to maintain a linear history 


---

### Task 3: Squash Commit vs Merge Commit
1. Create a branch `feature-profile`, add 4-5 small commits (typo fix, formatting, etc.)

<img width="818" height="499" alt="WhatsApp Image 2026-06-07 at 9 39 13 PM (4)" src="https://github.com/user-attachments/assets/38724a9c-9fd3-4e84-89ae-3da1a33efde1" />


2. Merge it into `main` using `--squash` — what happens?

<img width="617" height="164" alt="WhatsApp Image 2026-06-07 at 9 39 13 PM (6)" src="https://github.com/user-attachments/assets/96337112-d8dd-4ab9-9cb9-2dfe99932764" />

3. Check `git log` — how many commits were added to `main`?

<img width="881" height="204" alt="WhatsApp Image 2026-06-07 at 9 39 13 PM (7)" src="https://github.com/user-attachments/assets/d5233fe7-e0e6-4bdc-a78c-949d50dd9466" />

4. Now create another branch `feature-settings`, add a few commits
5. Merge it into `main` **without** `--squash` (regular merge) — compare the history

<img width="881" height="204" alt="WhatsApp Image 2026-06-07 at 9 39 13 PM (7)" src="https://github.com/user-attachments/assets/81b36ce3-e6bd-463f-bc9f-71111b1a2b25" />


6. Answer in your notes:
   1. What does squash merging do?
   - squash combines all commit in a single commit in the branch we choose  
   
   2. When would you use squash merge vs regular merge?
   
   - If we have a multiple commit the we can use squash merge or regular merge 
   
   3. What is the trade-off of squashing?
   
   - This keeps the main branch history clean  
---

### Task 4: Git Stash — Hands-On
1. Start making changes to a file but **do not commit**
2. Now imagine you need to urgently switch to another branch — try switching. What happens?

<img width="824" height="147" alt="WhatsApp Image 2026-06-07 at 9 39 13 PM (8)" src="https://github.com/user-attachments/assets/498647b1-0df4-47f2-b796-10c709a6d078" />

3. Use `git stash` to save your work-in-progress
4. Switch to another branch, do some work, switch back
5. Apply your stashed changes using `git stash pop`

<img width="735" height="154" alt="WhatsApp Image 2026-06-07 at 9 39 13 PM (9)" src="https://github.com/user-attachments/assets/3a8c6b4a-3c65-4ada-9f70-ae02d2b6a210" />


6. Try stashing multiple times and list all stashes
7. Try applying a specific stash from the list

<img width="785" height="355" alt="WhatsApp Image 2026-06-07 at 9 38 37 PM" src="https://github.com/user-attachments/assets/710167cc-c5a4-46d4-9332-f81781946ad4" />


8. Answer in your notes:
   1.  What is the difference between `git stash pop` and `git stash apply`?
   
   - `git stash pop` removes the changes from the stash list after applying them
   
   - `git stash apply` keeps the changes in the stash list, allowing you to re-apply them later if needed
   
   2. When would you use stash in a real-world workflow?
   -  When i need to swith to other branch in case of emergency

---

### Task 5: Cherry Picking
1. Create a branch `feature-hotfix`, make 3 commits with different changes
2. Switch to `main`
3. Cherry-pick **only the second commit** from `feature-hotfix` onto `main`

<img width="750" height="643" alt="WhatsApp Image 2026-06-07 at 9 38 38 PM (1)" src="https://github.com/user-attachments/assets/eb3d4960-795e-4215-884f-8ab4d9a5b1ef" />

4. Verify with `git log` that only that one commit was applied

<img width="619" height="665" alt="WhatsApp Image 2026-06-07 at 9 38 38 PM (2)" src="https://github.com/user-attachments/assets/835d908a-c3b2-46ae-a1a2-2eca84ad0aa7" />


5. Answer in your notes:
   1. What does cherry-pick do?
   
   - Cherry-pick pick a particular commit with its id from branch 
   
   2. When would you use cherry-pick in a real project?
   
   - when there is fix in a code I would cherry-pick the commit 
   
   3. What can go wrong with cherry-picking?

   -  Main factor is its Id it changes and can create a confusion 

---
