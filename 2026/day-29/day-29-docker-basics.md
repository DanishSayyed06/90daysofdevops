### Task 1: What is Docker?

Research and write short notes on:

- What is a container and why do we need them?
* A container is a lightweight image of software that package and bundles an application with all its dependencies, ensuring it runs reliably and consistently in any environment

- Containers vs Virtual Machines — what's the real difference?
* Virtual machines virtualize the hardware to run operating systems, while containers virtualize the operating system to share the host's kernel, making them significantly faster and more lightweight as compare to virtual machines

- What is the Docker architecture? (daemon, client, images, containers, registry)
* Docker Client → sends commands
* Docker Daemon → manages containers
* Docker Images → templates
* Docker Containers → running instances
* Docker Registry (Docker Hub) → stores images



---

### Task 2: Install Docker
1. Install Docker on your machine (or use a cloud instance)

- https://docs.docker.com/engine/install/ubuntu/

2. Verify the installation

- <img width="619" height="606" alt="1" src="https://github.com/user-attachments/assets/b7d67e3e-0f27-45d4-a00c-6ada609a3fd9" />

3. Run the `hello-world` container

<img width="844" height="638" alt="WhatsApp Image 2026-06-12 at 8 02 50 PM (2)" src="https://github.com/user-attachments/assets/ca38af39-b046-4f51-ac78-8478c892117f" />

4. Read the output carefully — it explains what just happened



---

### Task 3: Run Real Containers
1. Run an **Nginx** container and access it in your browser

<img width="1600" height="668" alt="WhatsApp Image 2026-06-12 at 8 02 50 PM (4)" src="https://github.com/user-attachments/assets/3a79c9f1-dd0d-4d81-a194-c7cc491d24e1" />

2. Run an **Ubuntu** container in interactive mode — explore it like a mini Linux machine

<img width="818" height="211" alt="WhatsApp Image 2026-06-12 at 8 02 50 PM (5)" src="https://github.com/user-attachments/assets/943a98dc-7c0f-4a3e-b4e8-38f486bc303b" />

3. List all running containers

4. List all containers (including stopped ones)

<img width="1600" height="156" alt="WhatsApp Image 2026-06-12 at 8 02 50 PM (8)" src="https://github.com/user-attachments/assets/ccc63366-7b09-49c0-9e9d-7e859f80c6ab" />


6. Stop and remove a container

- To stop a container `docker stop < Name of container or container ID >`
- To remove a container `docker remove < Name of container or container ID >`
- First we have to stop the container and then remove the container 

---

### Task 4: Explore
1. Run a container in **detached mode** — what's different?
2. Give a container a custom **name**
3. Map a **port** from the container to your host
<img width="1600" height="466" alt="WhatsApp Image 2026-06-12 at 8 02 50 PM (9)" src="https://github.com/user-attachments/assets/1f81e727-37a1-485c-9a5b-b8c24c5a8b8b" />


4. Check **logs** of a running container
<img width="1507" height="982" alt="WhatsApp Image 2026-06-12 at 8 02 50 PM (10)" src="https://github.com/user-attachments/assets/c0bf801c-6d28-4d6c-8a8c-c67c98be7af2" />


5. Run a command **inside** a running container

<img width="1051" height="161" alt="WhatsApp Image 2026-06-12 at 8 02 50 PM (12)" src="https://github.com/user-attachments/assets/e9f5bdf8-5d66-48fe-9b95-cc5de3b40ad4" />

<img width="1432" height="769" alt="Screenshot 2026-06-12 at 10 22 51 PM" src="https://github.com/user-attachments/assets/3da93979-5e07-47bb-8150-1ea6daea1aa0" />



---
