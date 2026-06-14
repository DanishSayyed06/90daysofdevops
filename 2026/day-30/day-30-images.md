
# Day 30 – Docker Images & Container Lifecycle

### Task 1: Docker Images
1. Pull the `nginx`, `ubuntu`, and `alpine` images from Docker Hub


2. List all images on your machine — note the sizes

<img width="1141" height="202" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM" src="https://github.com/user-attachments/assets/aa1b565d-8d7c-4cfd-9157-1ba66aff53d1" />


3. Compare `ubuntu` vs `alpine` — why is one much smaller?

`Ubuntu` is a linux distribution designed for broad compatibility and ease of use, whereas `Alpine` is a security-oriented, minimalist distribution

4. Inspect an image — what information can you see?

<img width="1003" height="832" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (1)" src="https://github.com/user-attachments/assets/22d865d2-8590-44a7-a6e1-f20080640b09" />

5. Remove an image you no longer need

<img width="914" height="521" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (2)" src="https://github.com/user-attachments/assets/b7a095a2-7aef-44a4-904b-b876e6c8e97e" />


---

### Task 2: Image Layers
1. Run `docker image history nginx` — what do you see?

<img width="1162" height="454" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (3)" src="https://github.com/user-attachments/assets/5bb5f2a2-dc3b-4a06-88e0-a52ead981901" />

2. Each line is a **layer**. Note how some layers show sizes and some show 0B

- Layers with a size (RUN, COPY) physically modify the filesystem by adding or changing actual files.
- Layers showing 0B (ENV, CMD) only update metadata or configuration settings, which require no storage space.
- The <missing> tag appears because those layers were built as part of an intermediate process and do not have a unique identifiable layer ID

3. Write in your notes: What are layers and why does Docker use them?

- Docker layers are read-only file system modifications stacked on each other to enable efficient image reuse, reduced storage usage, and have the fastest build time.

---

### Task 3: Container Lifecycle

1. **Create** a container (without starting it)
<img width="1122" height="181" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (4)" src="https://github.com/user-attachments/assets/136a38e8-a50c-45af-879d-244ddc04f9a0" />

2. **Start** the container
3. **Pause** it and check status
4. **Unpause** it
<img width="1204" height="236" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (5)" src="https://github.com/user-attachments/assets/948e1686-dc57-460b-9484-267023ba844c" />

5. **Stop** it
6. **Restart** it

<img width="1160" height="253" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (7)" src="https://github.com/user-attachments/assets/501dc569-e155-440e-9baf-eebbfc5682ff" />


7. **Kill** it
8. **Remove** it

<img width="1203" height="153" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (8)" src="https://github.com/user-attachments/assets/9017123d-93d9-4020-bf25-1c7e990012bb" />

<img width="768" height="133" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (9)" src="https://github.com/user-attachments/assets/ef807e05-3746-4545-99e6-30605ab3801a" />

---

### Task 4: Working with Running Containers
1. Run an Nginx container in detached mode

<img width="792" height="137" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (11)" src="https://github.com/user-attachments/assets/20a72f2e-965d-43a8-b8d2-b49c2c56436b" />

2. View its **logs**

<img width="1402" height="980" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (12)" src="https://github.com/user-attachments/assets/22ce89f5-32c2-4a93-9664-b1af304bca34" />
3. View **real-time logs** (follow mode)


4. **Exec** into the container and look around the filesystem

<img width="1472" height="987" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (13)" src="https://github.com/user-attachments/assets/6993ebc6-abcb-430a-9c93-4976b2e24c41" />


5. Run a single command inside the container without entering it

<img width="957" height="89" alt="WhatsApp Image 2026-06-13 at 8 41 39 PM (14)" src="https://github.com/user-attachments/assets/02af0455-f633-4376-a143-4b4d0615c64f" />


6. **Inspect** the container — find its IP address, port mappings, and mounts

<img width="1532" height="988" alt="WhatsApp Image 2026-06-13 at 8 41 40 PM" src="https://github.com/user-attachments/assets/bd88817a-038b-4ff2-bded-d6a4bbdfde36" />

<img width="1064" height="573" alt="WhatsApp Image 2026-06-13 at 8 41 40 PM (2)" src="https://github.com/user-attachments/assets/36fc31c9-1e71-4d3a-837a-863bb8b1fa4f" />

<img width="457" height="273" alt="WhatsApp Image 2026-06-13 at 8 41 40 PM (3)" src="https://github.com/user-attachments/assets/b83eec6d-463e-427d-807a-20b6904dac7e" />




---

### Task 5: Cleanup

1. Stop all running containers in one command

<img width="1435" height="139" alt="WhatsApp Image 2026-06-13 at 8 41 40 PM (5)" src="https://github.com/user-attachments/assets/415f76f2-e7bf-4b1e-8b69-46e0584638c6" />

2. Remove all stopped containers in one command

<img width="1426" height="514" alt="WhatsApp Image 2026-06-13 at 8 41 40 PM (6)" src="https://github.com/user-attachments/assets/4043d599-8a63-48d6-af83-7ef7987ad6da" />

3. Remove unused images

<img width="569" height="279" alt="WhatsApp Image 2026-06-13 at 8 41 40 PM (8)" src="https://github.com/user-attachments/assets/70b5845a-7191-4d5d-af98-fbe3ccf6311a" />


4. Check how much disk space Docker is using

<img width="667" height="152" alt="WhatsApp Image 2026-06-13 at 8 41 40 PM (9)" src="https://github.com/user-attachments/assets/0b8e362b-038c-441e-b1bc-eb3e51745094" />

---
