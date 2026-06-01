# Day 18 – Shell Scripting: Functions & intermediate Concepts



## Challenge Tasks


### Task 1: Basic Functions
1. Create `functions.sh` with:
   - A function `greet` that takes a name as argument and prints `Hello, <name>!`
   - A function `add` that takes two numbers and prints their sum
   - Call both functions from the script

<img width="573" height="690" alt="Screenshot 2026-06-01 at 5 36 54 PM" src="https://github.com/user-attachments/assets/be52c116-aded-4357-83bd-ee0991015c78" />

<img width="604" height="648" alt="Screenshot 2026-06-01 at 5 36 42 PM" src="https://github.com/user-attachments/assets/667daee7-e62d-481d-a72d-1fcaa5781dc1" />


---

### Task 2: Functions with Return Values
1. Create `disk_check.sh` with:
   - A function `check_disk` that checks disk usage of `/` using `df -h`
   - A function `check_memory` that checks free memory using `free -h`
   - A main section that calls both and prints the results

<img width="694" height="688" alt="Screenshot 2026-06-01 at 5 50 20 PM" src="https://github.com/user-attachments/assets/2ef370cc-1339-40ba-86e3-60460fb830d7" />

<img width="1023" height="657" alt="Screenshot 2026-06-01 at 5 50 50 PM" src="https://github.com/user-attachments/assets/89dc7c0f-1497-49d1-ab7d-6d61b214ee7c" />


---

### Task 3: Strict Mode — `set -euo pipefail`
1. Create `strict_demo.sh` with `set -euo pipefail` at the top
2. Try using an **undefined variable** — what happens with `set -u`?
3. Try a command that **fails** — what happens with `set -e`?
4. Try a **piped command** where one part fails — what happens with `set -o pipefail`?

<img width="827" height="702" alt="Screenshot 2026-06-01 at 6 36 53 PM" src="https://github.com/user-attachments/assets/194005e1-8344-4f09-9bcc-9a9c78b13d69" />

<img width="742" height="680" alt="Screenshot 2026-06-01 at 6 35 13 PM" src="https://github.com/user-attachments/assets/e1355381-588f-45b2-8982-6384ba088764" />



- `set -e` → Exit script immediately if any command fails
- `set -u` → Treat unset variables as errors and exit 
- `set -o pipefail` → Ensures pipeline commands fail if any segment in the pipe fails, not just last

---

### Task 4: Local Variables
1. Create `local_demo.sh` with:
   - A function that uses `local` keyword for variables
   - Show that `local` variables don't leak outside the function
   - Compare with a function that uses regular variables

<img width="645" height="665" alt="Screenshot 2026-06-01 at 10 57 47 PM" src="https://github.com/user-attachments/assets/11ceaeef-1fdb-4275-bb4d-2b38a3d95485" />

<img width="705" height="645" alt="Screenshot 2026-06-01 at 10 58 47 PM" src="https://github.com/user-attachments/assets/e8724883-e4a5-48fb-84a3-5790086ebe06" />

---

### Task 5: Build a Script — System Info Reporter
Create `system_info.sh` that uses functions for everything:
1. A function to print **hostname and OS info**
2. A function to print **uptime**
3. A function to print **disk usage** (top 5 by size)
4. A function to print **memory usage**
5. A function to print **top 5 CPU-consuming processes**
6. A `main` function that calls all of the above with section headers
7. Use `set -euo pipefail` at the top

Output should look clean and readable.

<img width="1435" height="812" alt="Screenshot 2026-06-01 at 11 27 29 PM" src="https://github.com/user-attachments/assets/d3dfe4c0-8cd6-4b00-9a19-070677769938" />

<img width="912" height="805" alt="Screenshot 2026-06-01 at 11 27 46 PM" src="https://github.com/user-attachments/assets/2972dc33-ccb1-45a6-acdf-0cb8e5cea2a1" />

<img width="1247" height="816" alt="Screenshot 2026-06-01 at 11 27 03 PM" src="https://github.com/user-attachments/assets/ec6196a4-cd84-4245-b439-a3f7df1c7b4d" />

---
