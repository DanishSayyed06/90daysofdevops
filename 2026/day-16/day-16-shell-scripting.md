
# Day 16 – Shell Scripting Basics

### Task 1: Your First Script

1. Create a file `hello.sh`
2. Add the shebang line `#!/bin/bash` at the top
3. Print `Hello, DevOps!` using `echo`
4. Make it executable and run it

<img width="887" height="654" alt="Screenshot 2026-05-30 at 7 56 29 PM" src="https://github.com/user-attachments/assets/06d98620-d5b6-4bc4-8cdb-56a3f394a495" />

-

<img width="656" height="707" alt="Screenshot 2026-05-30 at 7 56 47 PM" src="https://github.com/user-attachments/assets/86d5d657-e2f4-4b71-948d-b77541c72333" />


**Document:** What happens if you remove the shebang line?
-  System may not use bash interpreter properly.



--- 
### Task 2: Variables

1. Create `variables.sh` with:
   - A variable for your `NAME`
   - A variable for your `ROLE` (e.g., "DevOps Engineer")
   - Print: `Hello, I am <NAME> and I am a <ROLE>`

<img width="727" height="679" alt="Screenshot 2026-05-30 at 8 07 03 PM" src="https://github.com/user-attachments/assets/9cc0e5a2-7cfd-4f4a-9cc1-16ea05559966" />

- 
<img width="864" height="737" alt="Screenshot 2026-05-30 at 8 07 25 PM" src="https://github.com/user-attachments/assets/a6745be6-12cf-40d6-a951-683e1a948be5" />

- 

2. Try using single quotes vs double quotes — what's the difference?

<img width="693" height="683" alt="Screenshot 2026-05-30 at 8 09 27 PM" src="https://github.com/user-attachments/assets/85508629-4181-4be5-aa96-292c8d3facf4" />

<img width="701" height="724" alt="Screenshot 2026-05-30 at 8 09 41 PM" src="https://github.com/user-attachments/assets/1db014ec-5fcc-4ad5-a6a9-952617591bf9" />

--- 

### Task 3: User Input with read

1. Create `greet.sh` that:
   - Asks the user for their name using `read`
   - Asks for their favourite tool
   - Prints: `Hello <name>, your favourite tool is <tool>`

<img width="1159" height="712" alt="Screenshot 2026-05-30 at 8 20 36 PM" src="https://github.com/user-attachments/assets/ab9922bf-560a-48f4-99d6-76314870da85" />

<img width="1224" height="735" alt="Screenshot 2026-05-30 at 8 20 21 PM" src="https://github.com/user-attachments/assets/f9ee9b03-6a4e-4b13-99ba-0abec8346b98" />

---

### Task 4: If-Else Conditions
1. Create `check_number.sh` that:
   - Takes a number using `read`
   - Prints whether it is **positive**, **negative**, or **zero**
  
   <img width="950" height="676" alt="Screenshot 2026-05-30 at 8 29 25 PM" src="https://github.com/user-attachments/assets/8df02a49-14cd-4283-bcec-055475ed8b14" />

<img width="752" height="724" alt="Screenshot 2026-05-30 at 8 29 08 PM" src="https://github.com/user-attachments/assets/baeefcfb-64bb-4eb3-8076-1eae0025f83f" />

-

2. Create `file_check.sh` that:
   - Asks for a filename
   - Checks if the file **exists** using `-f`
   - Prints appropriate message

<img width="992" height="595" alt="Screenshot 2026-05-30 at 8 33 20 PM" src="https://github.com/user-attachments/assets/a3c84217-0288-4a27-b257-7bb89b20af7f" />

<img width="1289" height="697" alt="Screenshot 2026-05-30 at 8 35 04 PM" src="https://github.com/user-attachments/assets/ffb17cab-bea9-4935-98f8-5e09b576b90d" />

---

### Task 5: Combine It All

Create `server_check.sh` that:
1. Stores a service name in a variable (e.g., `nginx`, `sshd`)
2. Asks the user: "Do you want to check the status? (y/n)"
3. If `y` — runs `systemctl status <service>` and prints whether it's **active** or **not**
4. If `n` — prints "Skipped."

<img width="955" height="344" alt="Screenshot 2026-05-31 at 12 03 07 AM" src="https://github.com/user-attachments/assets/760de3cf-3581-4c3e-90a4-247526fd5ff5" />




