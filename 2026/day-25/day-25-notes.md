

### Task 1: Git Reset — Hands-On
1. Make 3 commits in your practice repo (commit A, B, C)
2. Use `git reset --soft` to go back one commit — what happens to the changes?



- HEAD move back one commit and the file come back to stage area again 
- We can still commit  

3. Re-commit, then use `git reset --mixed` to go back one commit — what happens now?

- HEAD move back to unstage area 
- Changes will stayed in working directory

4. Re-commit, then use `git reset --hard` to go back one commit — what happens this time?


- This Discard all changes from the laste commit completly erased from working directory 


5. Answer in your notes:
   1. What is the difference between `--soft`, `--mixed`, and `--hard`?
  
  - `--soft` ---> It removes from Head and sit in stage area 

  - `--mixed` ---> It removes from head and sit in unstage area 

  - `--hard` ---> It completly erased the commit from working directory  
  
   2.  Which one is destructive and why?
  
  - `--hard` ---> Beacuse it permanently erased the commit 
  
   3.  When would you use each one?
   
   - `--hard` ---> Ill use it to erase all changes 
   - `--soft` ---> Ill use to change the commit 
   - `--mixed` ---> Ill use it to modify the changes  
   
   4.  Should you ever use `git reset` on commits that are already pushed?
   
   No. It  will rewrite history and break the workflow 

---

### Task 2: Git Revert — Hands-On
1. Make 3 commits (commit X, Y, Z)
2. Revert commit Y (the middle one) — what happens?
3. Check `git log` — is commit Y still in the history?
4. Answer in your notes:
   - How is `git revert` different from `git reset`?
   * `gitrevert` ---> It create new commit to undo changes and it preserve history 
   * `git reset` ---> It rewrite the history and remove the commit and undo changes 

   - Why is revert considered **safer** than reset for shared branches?
   * `revert` ---> Is safer because it addnew commit without changing existing history 
   
   - When would you use revert vs reset?
   * `reset` ---> To remove the commit 
   * `revert` ---> To undo a commit without the history break 

---

### Task 3: Reset vs Revert — Summary
Create a comparison in your notes:

| | `git reset` | `git revert` |
|---|---|---|
| What it does | It move the current brnch point to a specific commit| It undo changes from previous commit |
| Removes commit from history? | Yes | No |
| Safe for shared/pushed branches? | No | Yes |
| When to use | when we want to remove the commit | It can use to undo commit without breaking history which is already push  |

---

### Task 4: Branching Strategies

1. **GitFlow** — develop, feature, release, hotfix branches

* `develop` ---> Its Development environment the integration branch for new features

* `main` ---> It contain production ready code 

* `feature` ---> It is used to build a new feature and then merge in develop branch

* `realease` ---> Its in a stage og preparing to deploy in production 

* `hotfix` ---> Its use to fix the bug  


```bash
  

(main)
*------*-------*---------------------------------------------*
|       \     /                                             /
|        \   /                                             / 
|         \ /                                             /
|          *  (hotfix)                                   / 
|           \                                (realease) /
|            \                                  *------*
|             \                                /        \
|              \                              /          \
|               \                            /            \
|                \                          /              \
|  (develop)      \                        /                \
*---------*--------*----------------------*------------------*
           \        \                    /  
            \        \                  / 
             \        \ (feature1)     / 
              \        \              /
               \        *------------*
                \
                 \  (feature 2)
                  *------------*

```
 
2. **GitHub Flow** — simple, single main branch + feature branches

```bash

(main branch)                     
*--------------*------------------------------------------*--------*
                \                                        / 
                 \                                      /   
                  \                                    /  
                   \       (pull request reviewed)    /
                    \                  |             /
                     *-----------------*------------*
               (Pull request)                       (merge back)

```


- `cons` ---> It is not suitable for complex release cycles
Less structured for big teams in project

- `Pros` ---> Simple and lightweight and Easy to understand and manage


3. **Trunk-Based Development** — everyone commits to main, short-lived branches

```bash

(main branch)

*---------*---------*-------*---------*-----*---------*---------------*
           \       /         \       /       \       /
            \     /           \     /         \     /
             \   /             \   /           \   /
              \ /               \ /             \ /
               *                 *               *         

```

* It is used for CI/CD

- `Pros` --->  Much better deployment frequency and has faster recovery times
- `cons` --->  The deployment should not done before testing  

4. Answer:
   - Which strategy would you use for a startup shipping fast?
   * Ill definitely go with Trunk Base Development

   - Which strategy would you use for a large team with scheduled releases?
   * Ill use Git-flow strategy
   
   - Which one does your favorite open-source project use? (check any repo on GitHub)
   * https://github.com/temporalio/temporal
   

---


