# Day 37 – Docker Revision & Cheat Sheet

## Self-Assessment Checklist
Mark yourself honestly — **can do**, **shaky**, or **haven't done**:

- [Can do] Run a container from Docker Hub (interactive + detached)
- [Can do] List, stop, remove containers and images
- [Can do] Explain image layers and how caching works
- [Can do] Write a Dockerfile from scratch with FROM, RUN, COPY, WORKDIR, CMD
- [shaky] Explain CMD vs ENTRYPOINT
- [Can do] Build and tag a custom image
- [Can do] Create and use named volumes
- [Can do] Use bind mounts
- [Can do] Create custom networks and connect containers
- [Shaky] Write a docker-compose.yml for a multi-container app
- [Can do] Use environment variables and .env files in Compose
- [Can do] Write a multi-stage Dockerfile
- [Can do] Push an image to Docker Hub
- [Can do] Use healthchecks and depends_on

---

## Quick-Fire Questions
Answer from memory, then verify:
1. What is the difference between an image and a container?
- An image is the read-only blueprint or package which contains the application
- container is the live running instance made of image

2. What happens to data inside a container when you remove it?
- When we remove a container any data that is stored in it such as logs, temporary files, or database entries are permanently deleted because that layer is destroyed along with the container

3. How do two containers on the same custom network communicate?
- Containers on the same network communicate by using their container names as hostnames, allowing Docker's built-in DNS to automatically resolve these names to the correct internal IP addresses.

4. What does `docker compose down -v` do differently from `docker compose down`?
- `docker compose down` --->  Stops and removes containers and networks
- `docker compose down -v` ---> It deletes all named volumes defined in configuration and completely remove of any data stored in it

5. Why are multi-stage builds useful?
- Multi-stage builds are useful because they allow us to build separate environment from the runtime environment and give significantly smaller, more secure, and efficient production images

6. What is the difference between `COPY` and `ADD`?
- `COPY` ---> It is used for simple local file transfers
- `ADD` ---> It ADD includes extra features like extracting local tar archives and downloading files from remote URLs

7. What does `-p 8080:80` mean?
- The -p `8080:80` flag maps port 8080 on host machine to port 80 inside the container allowing to access the application http://localhost:8080 in your web browser 

8. How do you check how much disk space Docker is using?
- `docker system df`

---

## Build Your Docker Cheat Sheet
Create `docker-cheatsheet.md` organized by category:
- **Container commands** — run, ps, stop, rm, exec, logs
- **Image commands** — build, pull, push, tag, ls, rm
- **Volume commands** — create, ls, inspect, rm
- **Network commands** — create, ls, inspect, connect
- **Compose commands** — up, down, ps, logs, build
- **Cleanup commands** — prune, system df
- **Dockerfile instructions** — FROM, RUN, COPY, WORKDIR, EXPOSE, CMD, ENTRYPOINT

Keep it short — one line per command, something you'd actually reference on the job.

---

## Revisit Weak Spots
Pick **2 topics** you marked as shaky and redo the hands-on tasks from that day.

* Explain CMD vs ENTRYPOINT
- `CMD`---> provides default arguments that can be overridden at runtime
- `ENTRYPOINT` ---> defines the main executable


---

## Suggested Flow (45–60 minutes)
- 10 min: go through the checklist honestly
- 10 min: answer quick-fire questions
- 20 min: build your cheat sheet
- 10 min: redo one weak area