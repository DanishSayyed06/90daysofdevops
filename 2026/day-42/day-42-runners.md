# Day 42 – Runners: GitHub-Hosted & Self-Hosted


### Task 1: GitHub-Hosted Runners
1. Create a workflow with 3 jobs, each on a different OS:
   - `ubuntu-latest`
   - `windows-latest`
   - `macos-latest`
2. In each job, print:
   - The OS name
   - The runner's hostname
   - The current user running the job
3. Watch all 3 run in parallel

Write in your notes: What is a GitHub-hosted runner? Who manages it?

<img width="1436" height="745" alt="Screenshot 2026-06-29 at 11 39 17 PM" src="https://github.com/user-attachments/assets/7ad74f79-b910-45c4-9d0a-34d4dda6340b" />


---

### Task 2: Explore What's Pre-installed
1. On the `ubuntu-latest` runner, run a step that prints:
   - Docker version
   - Python version
   - Node version
   - Git version
2. Look up the GitHub docs for the full list of pre-installed software on `ubuntu-latest`

Write in your notes: Why does it matter that runners come with tools pre-installed?


<img width="1440" height="731" alt="Screenshot 2026-06-29 at 11 44 59 PM" src="https://github.com/user-attachments/assets/40a2b4f5-813e-47c5-9e27-dc64a95d926b" />


---

### Task 3: Set Up a Self-Hosted Runner
1. Go to your GitHub repo → Settings → Actions → Runners → **New self-hosted runner**
2. Choose Linux as the OS
3. Follow the instructions to download and configure the runner on:
   - Your local machine, OR
   - A cloud VM (EC2, Utho, or any VPS)
4. Start the runner — verify it shows as **Idle** in GitHub

**Verify:** Your runner appears in the Runners list with a green dot.

<img width="1402" height="516" alt="Screenshot 2026-07-02 at 5 50 37 PM" src="https://github.com/user-attachments/assets/9e0db4ac-8bab-4f89-8dd8-2b34d26a87e4" />
<img width="1440" height="896" alt="Screenshot 2026-07-02 at 5 38 47 PM" src="https://github.com/user-attachments/assets/ef9eb4ef-2d35-4f9e-820e-6d0c13fafd32" />



---

### Task 4: Use Your Self-Hosted Runner
1. Create `.github/workflows/self-hosted.yml`
2. Set `runs-on: self-hosted`
3. Add steps that:
   - Print the hostname of the machine (it should be YOUR machine/VM)
   - Print the working directory
   - Create a file and verify it exists on your machine after the run
4. Trigger it and watch it run on your own hardware

**Verify:** Check your machine — is the file there?


<img width="1392" height="739" alt="Screenshot 2026-07-02 at 6 11 00 PM" src="https://github.com/user-attachments/assets/2ceb885f-d6b2-41a0-a654-04a1c03d35f9" />


---

### Task 5: Labels
1. Add a **label** to your self-hosted runner (e.g., `my-linux-runner`)
2. Update your workflow to use `runs-on: [self-hosted, my-linux-runner]`
3. Trigger it — does it still pick up the job?

Write in your notes: Why are labels useful when you have multiple self-hosted runners?


<img width="1392" height="696" alt="Screenshot 2026-07-02 at 6 22 10 PM" src="https://github.com/user-attachments/assets/3d5f8490-2068-42f3-a66d-0a6a38cdd69d" />


---

### Task 6: GitHub-Hosted vs Self-Hosted
Fill this in your notes:

| | GitHub-Hosted | Self-Hosted |
|---|---|---|
| Who manages it? | ? | ? |
| Cost | ? | ? |
| Pre-installed tools | ? | ? |
| Good for | ? | ? |
| Security concern | ? | ? |

---
