# Day 34 – Docker Compose: Real-World Multi-Container Apps

## Challenge Tasks

### Task 1: Build Your Own App Stack
Create a `docker-compose.yml` for a 3-service stack:
- A **web app** (use Python Flask, Node.js, or any language you know)
- A **database** (Postgres or MySQL)
- A **cache** (Redis)

Write a simple Dockerfile for the web app. The app doesn't need to be complex — even a "Hello World" that connects to the database is enough.

<img width="1440" height="900" alt="Screenshot 2026-06-17 at 9 28 02 PM" src="https://github.com/user-attachments/assets/1cb89bf0-ece8-4c5e-8a02-4d31d7afd8a2" />


## Done 
---

### Task 2: depends_on & Healthchecks
1. Add `depends_on` to your compose file so the app starts **after** the database
2. Add a **healthcheck** on the database service
3. Use `depends_on` with `condition: service_healthy` so the app waits for the database to be truly ready, not just started


<img width="613" height="124" alt="Screenshot 2026-06-17 at 10 12 01 PM" src="https://github.com/user-attachments/assets/b1e5c048-50e9-41cb-806c-8f8301ec3cc6" />





---

### Task 3: Restart Policies
1. Add `restart: always` to your database service
2. Manually kill the database container — does it come back?
3. Try `restart: on-failure` — how is it different?
4. Write in your notes: When would you use each restart policy?

<img width="1440" height="900" alt="Screenshot 2026-06-17 at 9 25 28 PM" src="https://github.com/user-attachments/assets/231dcb6a-5fdd-4fa9-960a-6aa913372317" />



---

### Task 4: Custom Dockerfiles in Compose
1. Instead of using a pre-built image for your app, use `build:` in your compose file to build from a Dockerfile
2. Make a code change in your app
3. Rebuild and restart with one command

## Done 

---

### Task 5: Named Networks & Volumes
1. Define **explicit networks** in your compose file instead of relying on the default
2. Define **named volumes** for database data
3. Add **labels** to your services for better organization

## Done
---

### Task 6: Scaling (Bonus)
1. Try scaling your web app to 3 replicas using `docker compose up --scale`
2. What happens? What breaks?
3. Write in your notes: Why doesn't simple scaling work with port mapping?

<img width="1440" height="900" alt="Screenshot 2026-06-17 at 9 44 50 PM" src="https://github.com/user-attachments/assets/6a4ce6ca-6099-4355-b51e-9194293aa43e" />



--- 
