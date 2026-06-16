## Challenge Tasks

### Task 1: The Problem
1. Run a Postgres or MySQL container

<img width="561" height="128" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (1)" src="https://github.com/user-attachments/assets/3e13656c-65a7-41ec-8391-cff2b93ad33b" />


2. Create some data inside it (a table, a few rows — anything)

<img width="544" height="209" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (3)" src="https://github.com/user-attachments/assets/3d473a47-f49e-4093-b4ba-b498a890dfea" />

<img width="909" height="350" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (4)" src="https://github.com/user-attachments/assets/5967f35e-fff1-4863-b32a-b6a9b00675f8" />


3. Stop and remove the container

4. Run a new one — is your data still there?


<img width="890" height="342" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (6)" src="https://github.com/user-attachments/assets/2cbf7d34-1ed3-4249-ae40-a967c1005f2f" />

<img width="916" height="321" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (7)" src="https://github.com/user-attachments/assets/98dc9279-ec57-4397-86a0-16db34fad95f" />


Write what happened and why.

---

### Task 2: Named Volumes
1. Create a named volume

<img width="600" height="275" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (8)" src="https://github.com/user-attachments/assets/bc908bce-697e-4c1e-9ac2-8c968d8cda86" />

2. Run the same database container, but this time **attach the volume** to it


<img width="846" height="187" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (10)" src="https://github.com/user-attachments/assets/16c0011b-ccea-4918-b5c1-5e31b195d63b" />

<img width="883" height="202" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (11)" src="https://github.com/user-attachments/assets/61c13313-7ef4-4a4b-a217-98e25af69b1c" />


3. Add some data, stop and remove the container


<img width="553" height="190" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (12)" src="https://github.com/user-attachments/assets/7a77a6d3-0a68-4f39-b8cb-9ef9f9f9cfa5" />

4. Run a brand new container with the **same volume**



<img width="849" height="205" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (14)" src="https://github.com/user-attachments/assets/05cb6b67-336d-44c1-b197-a796dd1bc011" />

<img width="858" height="188" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (13)" src="https://github.com/user-attachments/assets/ff504f82-a5d7-4f40-94da-768919561723" />

<img width="898" height="200" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (15)" src="https://github.com/user-attachments/assets/e1d4e3b6-96c3-4aba-9fff-95a9ca48dfa7" />


5. Is the data still there?
- yes because volume was attach

**Verify:** `docker volume ls`, `docker volume inspect`

---

### Task 3: Bind Mounts
1. Create a folder on your host machine with an `index.html` file
2. Run an Nginx container and **bind mount** your folder to the Nginx web directory
3. Access the page in your browser
4. Edit the `index.html` on your host — refresh the browser

Write in your notes: What is the difference between a named volume and a bind mount?

---

### Task 4: Docker Networking Basics
1. List all Docker networks on your machine
2. Inspect the default `bridge` network
3. Run two containers on the default bridge — can they ping each other by **name**?
4. Run two containers on the default bridge — can they ping each other by **IP**?

---

### Task 5: Custom Networks
1. Create a custom bridge network called `my-app-net`
2. Run two containers on `my-app-net`
3. Can they ping each other by **name** now?
4. Write in your notes: Why does custom networking allow name-based communication but the default bridge doesn't?

---
