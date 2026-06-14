### Task 1: Your First Dockerfile
1. Create a folder called `my-first-image`
2. Inside it, create a `Dockerfile` that:
   - Uses `ubuntu` as the base image
   - Installs `curl`
   - Sets a default command to print `"Hello from my custom image!"`

<img width="364" height="203" alt="WhatsApp Image 2026-06-14 at 10 46 36 PM (1)" src="https://github.com/user-attachments/assets/bf1f5bdb-2534-4ac0-bda8-c3dcae492559" />


3. Build the image and tag it `my-ubuntu:v1`
4. Run a container from your image

<img width="370" height="125" alt="WhatsApp Image 2026-06-14 at 10 46 36 PM (4)" src="https://github.com/user-attachments/assets/3e912dc3-ebeb-442a-b001-b29e33e7807e" />


**Verify:** The message prints on `docker run`

---

### Task 2: Dockerfile Instructions
Create a new Dockerfile that uses **all** of these instructions:
- `FROM` — base image
- `RUN` — execute commands during build
- `COPY` — copy files from host to image
- `WORKDIR` — set working directory
- `EXPOSE` — document the port
- `CMD` — default command

<img width="1600" height="855" alt="WhatsApp Image 2026-06-14 at 10 46 37 PM" src="https://github.com/user-attachments/assets/b89cb8d3-deda-4091-a977-3c68ba0b4893" />

<img width="784" height="482" alt="WhatsApp Image 2026-06-14 at 10 46 36 PM (5)" src="https://github.com/user-attachments/assets/cfbc3345-b695-4a6f-b168-c240ff6af238" />


---

### Task 3: CMD vs ENTRYPOINT
1. Create an image with `CMD ["echo", "hello"]` — run it, then run it with a custom command. What happens?

 <img width="604" height="181" alt="WhatsApp Image 2026-06-14 at 10 46 37 PM (1)" src="https://github.com/user-attachments/assets/f45880df-fcdb-4797-9af0-3fb0154b7c81" />


2. Create an image with `ENTRYPOINT ["echo"]` — run it, then run it with additional arguments. What happens?

<img width="618" height="188" alt="WhatsApp Image 2026-06-14 at 10 46 37 PM (3)" src="https://github.com/user-attachments/assets/c2939333-b3b0-4f9b-b149-d3b568b092af" />
<img width="1307" height="413" alt="WhatsApp Image 2026-06-14 at 10 46 37 PM (2)" src="https://github.com/user-attachments/assets/c576f88a-0d59-480c-89de-be780a3cbccc" />


3. Write in your notes: When would you use CMD vs ENTRYPOINT?

- `CMD` ---> For default arguments that can be easily overridden
- `ENTRYPOINT` --->  To make the container run as a specific executable that should not be changed.

---

### Task 4: Build a Simple Web App Image
1. Create a small static HTML file (`index.html`) with any content
2. Write a Dockerfile that:
   - Uses `nginx:alpine` as base
   - Copies your `index.html` to the Nginx web directory
3. Build and tag it `my-website:v1`
4. Run it with port mapping and access it in your browser

<img width="896" height="477" alt="WhatsApp Image 2026-06-14 at 10 46 37 PM (4)" src="https://github.com/user-attachments/assets/4d4ce9d8-003a-444b-b298-69e2786f49cd" />

<img width="504" height="135" alt="WhatsApp Image 2026-06-14 at 10 46 37 PM (5)" src="https://github.com/user-attachments/assets/03422e7a-a425-4818-b421-22d684bb34d9" />

<img width="1600" height="853" alt="WhatsApp Image 2026-06-14 at 10 46 37 PM (6)" src="https://github.com/user-attachments/assets/318417bc-53f2-4ee3-bc35-069399f60bcd" />

---

### Task 5: .dockerignore
1. Create a `.dockerignore` file in one of your project folders
2. Add entries for: `node_modules`, `.git`, `*.md`, `.env`
3. Build the image — verify that ignored files are not included

<img width="412" height="205" alt="WhatsApp Image 2026-06-14 at 10 46 37 PM (7)" src="https://github.com/user-attachments/assets/36e6a57a-3c09-4b09-be32-8f8fb14e8736" />

<img width="486" height="165" alt="WhatsApp Image 2026-06-14 at 10 46 37 PM (11)" src="https://github.com/user-attachments/assets/3ce1d115-8851-4bd0-b368-459b7779fe28" />



---

### Task 6: Build Optimization
1. Build an image, then change one line and rebuild — notice how Docker uses **cache**
2. Reorder your Dockerfile so that frequently changing lines come **last**
3. Write in your notes: Why does layer order matter for build speed?

---
