
# Day 26 – GitHub CLI: Manage GitHub from Your Terminal

--- 

### Task 1: Install and Authenticate
1. Install the GitHub CLI on your machine
2. Authenticate with your GitHub account
3. Verify you're logged in and check which account is active

<img width="885" height="420" alt="Screenshot 2026-06-09 at 7 24 05 PM" src="https://github.com/user-attachments/assets/ce1439af-e2b4-4126-b162-5183c4f6d276" />

<img width="861" height="210" alt="Screenshot 2026-06-09 at 7 26 48 PM" src="https://github.com/user-attachments/assets/445a448b-f4f2-4aa3-8b65-d547d4a8aab9" />


4. Answer in your notes: What authentication methods does `gh` support?
- Personal Access Token
- SSH Key-based
- Browser-based login

---

### Task 2: Working with Repositories
1. Create a **new GitHub repo** directly from the terminal — make it public with a README

<img width="809" height="432" alt="Screenshot 2026-06-09 at 7 31 09 PM" src="https://github.com/user-attachments/assets/d14de3df-094a-4f09-bbca-9f2945d2d524" />



2. Clone a repo using `gh` instead of `git clone`

<img width="721" height="291" alt="Screenshot 2026-06-09 at 7 34 18 PM" src="https://github.com/user-attachments/assets/ae7b0e50-9a7a-45dd-93be-1b2f97b66940" />


3. View details of one of your repos from the terminal
4. List all your repositories
5. Open a repo in your browser directly from the terminal
6. Delete the test repo you created (be careful!)


<img width="800" height="421" alt="Screenshot 2026-06-09 at 7 35 06 PM" src="https://github.com/user-attachments/assets/d5f52b5d-ad98-4ce8-be5a-572660b4e228" />


<img width="808" height="84" alt="Screenshot 2026-06-09 at 7 41 15 PM" src="https://github.com/user-attachments/assets/1fd67ba7-4fbc-4a59-bc25-ab916b0157e3" />



---

### Task 3: Issues
1. Create an issue on one of your repos from the terminal — give it a title, body, and a label
2. List all open issues on that repo
3. View a specific issue by its number
4. Close an issue from the terminal

<img width="1181" height="500" alt="Screenshot 2026-06-09 at 8 02 57 PM" src="https://github.com/user-attachments/assets/7747ff4a-fa78-401f-89c7-de8d20485509" />

<img width="638" height="87" alt="Screenshot 2026-06-09 at 8 08 15 PM" src="https://github.com/user-attachments/assets/ffdf5748-3744-4557-9e9a-2a6e35790c78" />

5. Answer in your notes: How could you use `gh issue` in a script or automation?

- I can use `gh issue` in script as to lable the issue
- create a new issue and consistent data entry

---

### Task 4: Pull Requests
1. Create a branch, make a change, push it, and create a **pull request** entirely from the terminal
2. List all open PRs on a repo
3. View the details of your PR — check its status, reviewers, and checks
4. Merge your PR from the terminal
5. Answer in your notes:
   - What merge methods does `gh pr merge` support?
   - How would you review someone else's PR using `gh`?

<img width="683" height="398" alt="Screenshot 2026-06-09 at 8 39 17 PM" src="https://github.com/user-attachments/assets/9863ad38-2ad7-4479-b19a-313b3ca83550" />

5. Answer in your notes:
   - What merge methods does `gh pr merge` support?

   * Merge Commit

   * Squash and Merge

   * Rebase and Merge

   - How would you review someone else's PR using `gh`?
   * `gh pr review <PR-number>`

---

### Task 5: GitHub Actions & Workflows (Preview)
1. List the workflow runs on any public repo that uses GitHub Actions
2. View the status of a specific workflow run





3. Answer in your notes: How could `gh run` and `gh workflow` be useful in a CI/CD pipeline?

- `gh run` and `gh workflow` are useful in CI/CD pipelines as they allow automation of workflows without interactive sessions. They enable triggering, monitoring, and managing GitHub Actions directly from scripts or automation tools

---

### Task 6: Useful `gh` Tricks

1. `gh api` — make raw GitHub API calls from the terminal
2. `gh gist` — create and manage GitHub Gists
3. `gh release` — create and manage releases
4. `gh alias` — create shortcuts for commands you use often
5. `gh search repos` — search GitHub repos from the terminal

---
