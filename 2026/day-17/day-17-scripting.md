## Challenge Tasks

### Task 1: For Loop
1. Create `for_loop.sh` that:
   - Loops through a list of 5 fruits and prints each one
2. Create `count.sh` that:
   - Prints numbers 1 to 10 using a for loop

<img width="803" height="654" alt="Screenshot 2026-05-31 164506" src="https://github.com/user-attachments/assets/bc38c2fb-5478-48ee-b7cf-6c188a4aef20" />

<img width="856" height="665" alt="Screenshot 2026-05-31 164455" src="https://github.com/user-attachments/assets/e71f2802-7017-4c83-8af6-5153ac61d32a" />


---

### Task 2: While Loop
1. Create `countdown.sh` that:
   - Takes a number from the user
   - Counts down to 0 using a while loop
   - Prints "Done!" at the end

<img width="570" height="675" alt="Screenshot 2026-05-31 165106" src="https://github.com/user-attachments/assets/63635666-d100-4b8d-91da-a4ed9afb46a8" />

<img width="975" height="669" alt="Screenshot 2026-05-31 165055" src="https://github.com/user-attachments/assets/502cbdce-38d6-4aea-8238-4766da3a8822" />


---

### Task 3: Command-Line Arguments
1. Create `greet.sh` that:
   - Accepts a name as `$1`
   - Prints `Hello, <name>!`
   - If no argument is passed, prints "Usage: ./greet.sh <name>"

<img width="889" height="662" alt="Screenshot 2026-05-31 175649" src="https://github.com/user-attachments/assets/5792bce1-6a10-46b4-b1e5-3b7a12b3ec00" />

<img width="668" height="661" alt="Screenshot 2026-05-31 175701" src="https://github.com/user-attachments/assets/be094d51-e9e5-4643-9469-0728068957cc" />


---

2. Create `args_demo.sh` that:
   - Prints total number of arguments (`$#`)
   - Prints all arguments (`$@`)
   - Prints the script name (`$0`)
<img width="848" height="695" alt="Screenshot 2026-05-31 180420" src="https://github.com/user-attachments/assets/4f5c74ba-7a10-44aa-8bb2-fcda5e61574e" />

<img width="841" height="668" alt="Screenshot 2026-05-31 180449" src="https://github.com/user-attachments/assets/5c44670c-2bcd-412a-9bb4-3c609077f108" />


---

### Task 4: Install Packages via Script
1. Create `install_packages.sh` that:
   - Defines a list of packages: `nginx`, `curl`, `wget`
   - Loops through the list
   - Checks if each package is installed (use `dpkg -s` or `rpm -q`)
   - Installs it if missing, skips if already present
   - Prints status for each package

> Run as root: `sudo -i` or `sudo su`

<img width="744" height="706" alt="Screenshot 2026-05-31 at 8 17 16 PM" src="https://github.com/user-attachments/assets/a8ced308-8c02-4f9f-897e-2cdf99e196c1" />

<img width="1138" height="671" alt="Screenshot 2026-05-31 at 8 17 01 PM" src="https://github.com/user-attachments/assets/d6c5a8ae-8f60-4980-bbb3-dad04b604fe4" />

---

### Task 5: Error Handling
1. Create `safe_script.sh` that:
   - Uses `set -e` at the top (exit on error)
   - Tries to create a directory `/tmp/devops-test`
   - Tries to navigate into it
   - Creates a file inside
   - Uses `||` operator to print an error if any step fails

Example:
```bash
mkdir /tmp/devops-test || echo "Directory already exists"
```

<img width="952" height="666" alt="Screenshot 2026-05-31 at 8 42 04 PM" src="https://github.com/user-attachments/assets/23f4d577-b3bb-422d-8aaf-841bc0205249" />

<img width="697" height="690" alt="Screenshot 2026-05-31 at 8 44 21 PM" src="https://github.com/user-attachments/assets/aa781aeb-09de-4070-99e9-c0955f9d62e0" />


2. Modify your `install_packages.sh` to check if the script is being run as root — exit with a message if not.
