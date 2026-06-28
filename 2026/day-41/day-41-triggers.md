# Day 41 – Triggers & Matrix Builds

### Task 1: Trigger on Pull Request
1. Create `.github/workflows/pr-check.yml`
2. Trigger it only when a pull request is **opened or updated** against `main`
3. Add a step that prints: `PR check running for branch: <branch name>`
4. Create a new branch, push a commit, and open a PR
5. Watch the workflow run automatically


<img width="1376" height="687" alt="Screenshot 2026-06-28 at 10 13 49 PM" src="https://github.com/user-attachments/assets/dd9791d1-5fd0-4686-88d7-fd8cc07a1036" />
<img width="1360" height="741" alt="Screenshot 2026-06-28 at 10 12 50 PM" src="https://github.com/user-attachments/assets/849ebd6e-5dcb-4d23-aa17-f4fa2f4894c0" />
<img width="1367" height="672" alt="Screenshot 2026-06-28 at 10 12 11 PM" src="https://github.com/user-attachments/assets/b27ab91f-11ff-4fb7-9231-3872b02d8129" />
<img width="1372" height="711" alt="Screenshot 2026-06-28 at 10 09 06 PM" src="https://github.com/user-attachments/assets/631140d1-4308-4b2e-a7ea-725794c07934" />



---

### Task 2: Scheduled Trigger
1. Add a `schedule:` trigger to any workflow using cron syntax
2. Set it to run every day at midnight UTC
3. Write in your notes: What is the cron expression for every Monday at 9 AM?

- `Done`

---

### Task 3: Manual Trigger
1. Create `.github/workflows/manual.yml` with a `workflow_dispatch:` trigger
2. Add an **input** that asks for an `environment` name (staging/production)
3. Print the input value in a step
4. Go to the **Actions** tab → find the workflow → click **Run workflow**

<img width="1377" height="695" alt="Screenshot 2026-06-28 at 10 52 33 PM" src="https://github.com/user-attachments/assets/67c738c5-3843-40c1-96c5-590df7f9aef3" />

<img width="1367" height="581" alt="Screenshot 2026-06-28 at 10 53 36 PM" src="https://github.com/user-attachments/assets/277e1618-20d7-4a4b-9d29-934814b8adc6" />



---

### Task 4: Matrix Builds
Create `.github/workflows/matrix.yml` that:
1. Uses a matrix strategy to run the same job across:
   - Python versions: `3.10`, `3.11`, `3.12`
2. Each job installs Python and prints the version
3. Watch all 3 run in parallel


<img width="1363" height="732" alt="Screenshot 2026-06-28 at 11 01 48 PM" src="https://github.com/user-attachments/assets/af8b541d-63ec-4a2c-8427-3563d247317b" />




---

### Task 5: Exclude & Fail-Fast
1. In your matrix, **exclude** one specific combination (e.g., Python 3.10 on Windows)
2. Set `fail-fast: false` — trigger a failure in one job and observe what happens to the rest
3. Write in your notes: What does `fail-fast: true` (the default) do vs `false`?

<img width="1368" height="734" alt="Screenshot 2026-06-28 at 11 11 03 PM" src="https://github.com/user-attachments/assets/8923e0f8-3beb-4845-b39d-b2eabcb7b114" />


---
