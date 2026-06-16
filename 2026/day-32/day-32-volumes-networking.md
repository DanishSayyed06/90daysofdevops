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


---

### Task 3: Bind Mounts
1. Create a folder on your host machine with an `index.html` file
2. Run an Nginx container and **bind mount** your folder to the Nginx web directory
3. Access the page in your browser
4. Edit the `index.html` on your host — refresh the browser

<img width="698" height="405" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (17)" src="https://github.com/user-attachments/assets/1c108809-4818-4720-85ac-fd9743fd04c7" />

<img width="908" height="191" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (21)" src="https://github.com/user-attachments/assets/a4e72eb9-7b29-4219-80a4-ea4206ac82b6" />

<img width="1130" height="523" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (25)" src="https://github.com/user-attachments/assets/0e803c9f-959b-4049-a01f-1533461c707c" />

<img width="1143" height="532" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (24)" src="https://github.com/user-attachments/assets/3af6ff5f-1f35-4bba-977b-c7d6936cc79a" />



Write in your notes: What is the difference between a named volume and a bind mount?

---

### Task 4: Docker Networking Basics
1. List all Docker networks on your machine
2. Inspect the default `bridge` network
3. Run two containers on the default bridge — can they ping each other by **name**?
4. Run two containers on the default bridge — can they ping each other by **IP**?

<img width="436" height="191" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (26)" src="https://github.com/user-attachments/assets/79069fa8-83c7-4a26-b491-ae75e29bf793" />

<img width="776" height="380" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (27)" src="https://github.com/user-attachments/assets/9abaa24f-23fa-4d30-8015-c03415f57893" />


<img width="692" height="176" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (29)" src="https://github.com/user-attachments/assets/35dd5bf1-f09c-4f70-a74b-14aed47cf8b7" />

<img width="508" height="170" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (31)" src="https://github.com/user-attachments/assets/28632775-f7e6-4b91-ae87-4d543c39fc94" />
<img width="393" height="103" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (30)" src="https://github.com/user-attachments/assets/23c069e5-d679-407b-9379-486b5c1d9037" />



---

### Task 5: Custom Networks
1. Create a custom bridge network called `my-app-net`

<img width="521" height="76" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (32)" src="https://github.com/user-attachments/assets/e133d040-051d-4eb3-ac1b-fb8e0dbd83a4" />


2. Run two containers on `my-app-net`

<img width="619" height="137" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (34)" src="https://github.com/user-attachments/assets/d709665a-97ac-4911-af6c-25e49d3dc9e1" />

<img width="584" height="146" alt="WhatsApp Image 2026-06-16 at 2 44 17 AM (35)" src="https://github.com/user-attachments/assets/dce519e5-796e-46f3-ba89-c200e8a20040" />


3. Can they ping each other by **name** now?
- Yes  as they are connected in a network 

4. Write in your notes: Why does custom networking allow name-based communication but the default bridge doesn't?

---
