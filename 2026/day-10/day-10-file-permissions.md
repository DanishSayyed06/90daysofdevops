# Day 10 – File Permissions & File Operations Challenge

## Task
Master file permissions and basic file operations in Linux.

- Create and read files using `touch`, `cat`, `vim`
- Understand and modify permissions using `chmod`


### Task 1: Create Files 

<img width="943" height="89" alt="WhatsApp Image 2026-05-24 at 7 51 22 PM (11)" src="https://github.com/user-attachments/assets/417b4dae-b480-48fd-905e-b98142cc09d5" />

* 1. Create empty file `devops.txt` using `touch`
* 2. Create `notes.txt` with some content using `cat` or `echo`


<img width="646" height="118" alt="WhatsApp Image 2026-05-24 at 7 51 22 PM (10)" src="https://github.com/user-attachments/assets/57d195a9-9c85-447e-97f2-9be69cc99d33" />

* 3. Create `script.sh` using `vim` with content: `echo "Hello DevOps"`



<img width="625" height="223" alt="WhatsApp Image 2026-05-24 at 7 51 22 PM (9)" src="https://github.com/user-attachments/assets/1e281942-8b10-47b6-9e21-202dbf89550d" />

**Verify:** `ls -l` to see permissions

## Commands Used




### Task 2: Read 

<img width="557" height="75" alt="WhatsApp Image 2026-05-24 at 7 51 22 PM (8)" src="https://github.com/user-attachments/assets/e0d17e7f-b2b9-4b9b-98d7-f7673fd59e97" />

* 1. Read `notes.txt` using `cat`


<img width="913" height="994" alt="WhatsApp Image 2026-05-24 at 7 51 22 PM (6)" src="https://github.com/user-attachments/assets/3deba099-ade3-4bb0-9313-044901a0ec6a" />

* 2. View `script.sh` in vim read-only mode


<img width="619" height="272" alt="WhatsApp Image 2026-05-24 at 7 51 22 PM (4)" src="https://github.com/user-attachments/assets/94a8d788-70f7-406b-81d7-17f3f132b1f4" />


* 3. Display first 5 lines of `/etc/passwd` using `head`

* 4. Display last 5 lines of `/etc/passwd` using `tail`




### Task 3: Understand Permissions 




<img width="574" height="134" alt="WhatsApp Image 2026-05-24 at 7 51 22 PM (3)" src="https://github.com/user-attachments/assets/157fb780-0be0-4d82-be12-189ab83cb379" />

* Format: `rwxrwxrwx` (owner-group-others)
- `r` = read (4), `w` = write (2), `x` = execute (1)

* Check your files: `ls -l devops.txt notes.txt script.sh`

* Answer: What are current permissions? Who can read/write/execute?










### Task 4: Modify Permissions 


<img width="487" height="135" alt="WhatsApp Image 2026-05-24 at 7 51 22 PM (2)" src="https://github.com/user-attachments/assets/af3f38a7-d58f-49a8-806b-5c5f402f603a" />

* 1. Make `script.sh` executable → run it with `./script.sh`


<img width="590" height="157" alt="WhatsApp Image 2026-05-24 at 7 51 22 PM (1)" src="https://github.com/user-attachments/assets/ed4a11ba-d870-4a2f-afbb-418fbdc4c246" />

* 2. Set `devops.txt` to read-only (remove write for all)


* 3. Set `notes.txt` to `640` (owner: rw, group: r, others: none)


* 4. Create directory `project/` with permissions `755`

**Verify:** `ls -l` after each change












### Task 5: Test Permissions 


   <img width="739" height="73" alt="WhatsApp Image 2026-05-24 at 7 51 21 PM (1)" src="https://github.com/user-attachments/assets/79cb6384-07ea-4ce1-a267-904669db2d30" />

* 1. Try writing to a read-only file - what happens?
 
     <img width="540" height="126" alt="WhatsApp Image 2026-05-24 at 7 51 21 PM" src="https://github.com/user-attachments/assets/3273b58e-69aa-4927-a8a1-554a1d9acc08" />

* 2. Try executing a file without execute permission





## What I Learned
