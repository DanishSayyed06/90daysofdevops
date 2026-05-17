## Day 02 Linux Architecture Notes


<img width="2752" height="1536" alt="Gemini_Generated_Image_oh6r7roh6r7roh6r" src="https://github.com/user-attachments/assets/24a5bb36-26e4-45cf-8e01-ca1168c28629" />

- **Hardware**
    - The physical component where OS is installed.
- **Kernal**
    - Heart of Linux OS
    - The central core that directly controls hardware, processes, memory. Interface between hardware and software.
- **User Space**
    - Where normal application software and services run in background
    - where applications and the shell execute
- **Init / systemd**
    -  First process started by the kernel 
    -  manage hardware, network connections, user authentication, and system performance

## systemd Overview
- systemd is the init system used by most modern Linux systems
  - Its PID is 01
  - Starting services at boot
  - Restarting failed services
     

## Whats Process in Linux 
- A running program in instance is a Process
- Every Process can recognize by its PID

### Process States
- Running   : Active Process
- Sleeping  : process is waiting for input  
- Stopped   : suspended  process
- Zombie    :  Process finished but parent process hasn't read its exit status yet

# 5 Commands used daily 
- `ps`   : View running processes
- `top`  : Monitor CPU and memory usage
- `journalctl`  : View system logs
- `systemctl`   : Manage services
- `kill`    : To kill process

## Why This Matters
- For troubleshooting Linux
- Helps debug crashed services
- To identify CPU or memory issues
