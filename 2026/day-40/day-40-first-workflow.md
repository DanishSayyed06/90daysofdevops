## Challenge Tasks

### Task 1: Set Up
1. Create a new **public** GitHub repository called `github-actions-practice`
2. Clone it locally
3. Create the folder structure: `.github/workflows/`

---

### Task 2: Hello Workflow
Create `.github/workflows/hello.yml` with a workflow that:
1. Triggers on every `push`
2. Has one job called `greet`
3. Runs on `ubuntu-latest`
4. Has two steps:
   - Step 1: Check out the code using `actions/checkout`
   - Step 2: Print `Hello from GitHub Actions!`

Push it. Go to the **Actions** tab on GitHub and watch it run.

**Verify:** Is it green? Click into the job and read every step.


<img width="1039" height="693" alt="Screenshot 2026-06-27 at 9 01 53 PM" src="https://github.com/user-attachments/assets/3d5320cd-d0c7-44a9-aa13-d1a04ce08a22" />

<img width="1367" height="678" alt="Screenshot 2026-06-27 at 9 18 00 PM" src="https://github.com/user-attachments/assets/1c59ac05-fe74-41a5-8573-32464689c112" />

---

### Task 3: Understand the Anatomy
Look at your workflow file and write in your notes what each key does:
`on` ---> Defines the triggers for the workflow
`jobs` ---> A container for all the tasks that make up your workflow    
`runs-on` ---> Sets the OS/virtual machine environment
`steps` ---> The sequence of actions or commands to execute
`uses` ---> Calls a pre-built Action
`run` ---> Executes a custom script or terminal command
`name` Provides a descriptive label for a step to help you identify it in the GitHub UI logs

---

### Task 4: Add More Steps
Update `hello.yml` to also:
1. Print the current date and time
2. Print the name of the branch that triggered the run (hint: GitHub provides this as a variable)
3. List the files in the repo
4. Print the runner's operating system

Push again — watch the new run.

<img width="343" height="295" alt="Screenshot 2026-06-27 at 9 05 38 PM" src="https://github.com/user-attachments/assets/d4c0abd5-3e8c-4a6e-acce-ff5f75d5fd5f" />

<img width="1367" height="678" alt="Screenshot 2026-06-27 at 9 18 00 PM" src="https://github.com/user-attachments/assets/fdeffa92-9cfc-4621-b985-84eb1d0b26e0" />

---

### Task 5: Break It On Purpose
1. Add a step that runs a command that will **fail** (e.g., `exit 1` or a misspelled command)
2. Push and observe what happens in the Actions tab
3. Fix it and push again


<img width="1360" height="618" alt="Screenshot 2026-06-27 at 9 57 08 PM" src="https://github.com/user-attachments/assets/ba2ee568-fe35-4a8c-8ae3-84e7776f7276" />
<img width="1435" height="764" alt="Screenshot 2026-06-27 at 9 53 45 PM" src="https://github.com/user-attachments/assets/ebce84fe-9031-4b6c-8521-1ca8deca4db9" />


---
