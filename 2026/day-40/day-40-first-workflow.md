## Challenge Tasks

### Task 1: Set Up
1. Create a new **public** GitHub repository called `github-actions-practice`
2. Clone it locally
3. Create the folder structure: `.github/workflows/`

<img width="343" height="295" alt="Screenshot 2026-06-27 at 9 05 38 PM" src="https://github.com/user-attachments/assets/7fecf880-e9fc-46c1-b053-a5925e3aae4e" />

<img width="1039" height="693" alt="Screenshot 2026-06-27 at 9 01 53 PM" src="https://github.com/user-attachments/assets/1099a00a-e6ea-4d19-8d96-c27c7e20a9dc" />

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




<img width="1367" height="678" alt="Screenshot 2026-06-27 at 9 18 00 PM" src="https://github.com/user-attachments/assets/1c59ac05-fe74-41a5-8573-32464689c112" />

---

### Task 3: Understand the Anatomy
Look at your workflow file and write in your notes what each key does:
- `on` ---> Defines the triggers for the workflow
- `jobs` ---> A container for all the tasks that make up your workflow    
- `runs-on` ---> Sets the OS/virtual machine environment
- `steps` ---> The sequence of actions or commands to execute
- `uses` ---> Calls a pre-built Action
- `run` ---> Executes a custom script or terminal command
- `name` Provides a descriptive label for a step to help you identify it in the GitHub UI logs

---

### Task 4: Add More Steps
Update `hello.yml` to also:
1. Print the current date and time
2. Print the name of the branch that triggered the run (hint: GitHub provides this as a variable)
3. List the files in the repo
4. Print the runner's operating system

Push again — watch the new run.

<img width="1365" height="723" alt="Screenshot 2026-06-27 at 9 48 39 PM" src="https://github.com/user-attachments/assets/d6672990-5cfc-4374-9b9f-dcca093c6b6a" />


---

### Task 5: Break It On Purpose
1. Add a step that runs a command that will **fail** (e.g., `exit 1` or a misspelled command)
2. Push and observe what happens in the Actions tab
3. Fix it and push again



<img width="1435" height="764" alt="Screenshot 2026-06-27 at 9 53 45 PM" src="https://github.com/user-attachments/assets/ebce84fe-9031-4b6c-8521-1ca8deca4db9" />

<img width="1440" height="745" alt="Screenshot 2026-06-27 at 9 57 25 PM" src="https://github.com/user-attachments/assets/1b0c4fe8-fdc7-40b4-9b49-603b9697be52" />

---
