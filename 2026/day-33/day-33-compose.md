# Day 33 – Docker Compose: Multi-Container Basics


## Challenge Tasks

### Task 1: Install & Verify
1. Check if Docker Compose is available on your machine
2. Verify the version

<img width="753" height="193" alt="Screenshot 2026-06-16 at 10 19 10 PM" src="https://github.com/user-attachments/assets/9d015d50-0a89-4784-bba7-f43fa35428d1" />


---

### Task 2: Your First Compose File
1. Create a folder `compose-basics`
2. Write a `docker-compose.yml` that runs a single **Nginx** container with port mapping
3. Start it with `docker compose up`
4. Access it in your browser
5. Stop it with `docker compose down`


<img width="1440" height="900" alt="Screenshot 2026-06-16 at 10 40 47 PM" src="https://github.com/user-attachments/assets/25668ec7-b0c8-4239-9612-5252caebe8b4" />

<img width="1335" height="828" alt="Screenshot 2026-06-16 at 10 47 11 PM" src="https://github.com/user-attachments/assets/740764b2-2e4e-4e4c-b085-5d9fd5ffe3ba" />

<img width="1275" height="742" alt="Screenshot 2026-06-16 at 10 48 37 PM" src="https://github.com/user-attachments/assets/a12f1529-8c21-4c3e-a524-b4e2a35e40a0" />

<img width="733" height="235" alt="Screenshot 2026-06-16 at 10 48 27 PM" src="https://github.com/user-attachments/assets/573e70db-d76a-47ae-a24c-775b38694192" />


---

### Task 3: Two-Container Setup
Write a `docker-compose.yml` that runs:
- A **WordPress** container
- A **MySQL** container

They should:
- Be on the same network (Compose does this automatically)
- MySQL should have a named volume for data persistence
- WordPress should connect to MySQL using the service name

Start it, access WordPress in your browser, and set it up.

**Verify:** Stop and restart with `docker compose down` and `docker compose up` — is your WordPress data still there?


<img width="1440" height="900" alt="Screenshot 2026-06-16 at 11 31 53 PM" src="https://github.com/user-attachments/assets/9a852ecc-6e89-4ab3-b5e8-7646b9f6d96d" />

<img width="1108" height="139" alt="Screenshot 2026-06-16 at 11 48 09 PM" src="https://github.com/user-attachments/assets/78ff036f-9fda-4489-890f-6b9913590901" />


<img width="1364" height="830" alt="Screenshot 2026-06-16 at 11 54 51 PM" src="https://github.com/user-attachments/assets/31a0228b-f193-4bd1-9202-d0199301a2b4" />

<img width="1317" height="825" alt="Screenshot 2026-06-16 at 11 52 26 PM" src="https://github.com/user-attachments/assets/ac2a4421-1186-47a1-b4ee-eb17a3d6d4a8" />





---

### Task 4: Compose Commands
Practice and document these:
1. Start services in **detached mode**

2. View running services

<img width="1273" height="381" alt="Screenshot 2026-06-17 at 12 54 00 AM" src="https://github.com/user-attachments/assets/8e4d4c1d-a880-4bd6-ba03-fb9491258a96" />


3. View **logs** of all services

<img width="1440" height="900" alt="Screenshot 2026-06-17 at 12 55 29 AM" src="https://github.com/user-attachments/assets/c702407d-3487-4e9b-841d-02534d8fb075" />


4. View logs of a **specific** service

<img width="1440" height="900" alt="Screenshot 2026-06-17 at 1 06 56 AM" src="https://github.com/user-attachments/assets/34a89d5b-50fb-41aa-8d96-469b1f381dfb" />


5. **Stop** services without removing

6. **Remove** everything (containers, networks)

7. **Rebuild** images if you make a change


<img width="1440" height="900" alt="Screenshot 2026-06-17 at 1 09 56 AM" src="https://github.com/user-attachments/assets/8d9e5aee-b528-47ce-8c96-94ed6618fda1" />



---

### Task 5: Environment Variables
1. Add environment variables directly in your `docker-compose.yml`
2. Create a `.env` file and reference variables from it in your compose file
3. Verify the variables are being picked up


<img width="1143" height="376" alt="Screenshot 2026-06-17 at 1 13 45 AM" src="https://github.com/user-attachments/assets/9f184afa-79ac-463e-8490-a124c4659b18" />



---
