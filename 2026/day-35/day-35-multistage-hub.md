# Day 35 – Multi-Stage Builds & Docker Hub

### Task 1: The Problem with Large Images
1. Write a simple Go, Java, or Node.js app (even a "Hello World" is fine)
2. Create a Dockerfile that builds and runs it in a **single stage**
3. Build the image and check its **size**

<img width="1440" height="900" alt="Screenshot 2026-06-18 at 7 58 43 PM" src="https://github.com/user-attachments/assets/b53ec4ae-1c64-4cf7-8f7d-2fbb2c4a3767" />



Note down the size — you'll compare it later.

- 1.25 GB

---

### Task 2: Multi-Stage Build
1. Rewrite the Dockerfile using **multi-stage build**:
   - Stage 1: Build the app (install dependencies, compile)
   - Stage 2: Copy only the built artifact into a minimal base image (`alpine`, `distroless`, or `scratch`)
2. Build the image and check its size again
3. Compare the two sizes

   <img width="1440" height="900" alt="Screenshot 2026-06-18 at 8 12 05 PM" src="https://github.com/user-attachments/assets/0f58cef4-eb3b-4625-a703-75dc4d1b0adf" />


Write in your notes: Why is the multi-stage image so much smaller?

---

### Task 3: Push to Docker Hub
1. Create a free account on [Docker Hub](https://hub.docker.com) (if you don't have one)
2. Log in from your terminal
3. Tag your image properly: `yourusername/image-name:tag`
4. Push it to Docker Hub
5. Pull it on a different machine (or after removing locally) to verify


<img width="1440" height="900" alt="Screenshot 2026-06-18 at 8 40 44 PM" src="https://github.com/user-attachments/assets/6c835538-ce34-4e05-bd5d-c5497c4f7204" />


<img width="1440" height="900" alt="Screenshot 2026-06-18 at 8 42 19 PM" src="https://github.com/user-attachments/assets/3fe8a9ec-ac11-4971-af6c-dfe0f0c432e8" />

<img width="1440" height="900" alt="Screenshot 2026-06-18 at 8 52 58 PM" src="https://github.com/user-attachments/assets/c7b60149-3212-47d5-88e9-daebfa6262c9" />




---

### Task 4: Docker Hub Repository
1. Go to Docker Hub and check your pushed image
2. Add a **description** to the repository
3. Explore the **tags** tab — understand how versioning works
4. Pull a specific tag vs `latest` — what happens?

<img width="1440" height="900" alt="Screenshot 2026-06-18 at 9 13 13 PM" src="https://github.com/user-attachments/assets/8385f2c6-e38f-491e-a593-fe5086a93d58" />



---

### Task 5: Image Best Practices
Apply these to one of your images and rebuild:
1. Use a **minimal base image** (alpine vs ubuntu — compare sizes)
2. **Don't run as root** — add a non-root USER in your Dockerfile
3. Combine `RUN` commands to **reduce layers**
4. Use **specific tags** for base images (not `latest`)

<img width="1440" height="900" alt="Screenshot 2026-06-19 at 1 10 39 AM" src="https://github.com/user-attachments/assets/3b992b79-3d19-44ef-ab3c-c4dae598fbdd" />

<img width="1357" height="489" alt="Screenshot 2026-06-19 at 1 20 28 AM" src="https://github.com/user-attachments/assets/9e628ada-123e-4741-9de1-0da197c6d925" />



---
