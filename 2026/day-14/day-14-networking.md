# Day 14 – Networking Fundamentals & Hands-on Checks


## Quick Concepts 


### OSI Layer 

OSI (7 Layers):
1. Application
2. Presentation 
3. Session 
4. Transport
5. Network
6. Data Link
7. Physical

### TCP/IP
- Pratical impletation of OSI

1. Application 
2. Transport
3. Internet
4. Network Access    

###  Where **IP**, **TCP/UDP**, **HTTP/HTTPS**, **DNS** sit in the stack

- IP          :Internet Layer
- TCP, UDP    :Transport Layer
- HTTP/HTTPS  :Application layer 
- DNS         :Application layer 

- One real example: “curl https://example.com = App layer over TCP over IP”

<img width="856" height="177" alt="WhatsApp Image 2026-05-29 at 9 50 44 AM (8)" src="https://github.com/user-attachments/assets/613dcc49-8c1c-4118-aa01-4a5021888e99" />


## Hands-on 
Identity (ip addr) : hostname -I
- note your IP.

<img width="581" height="79" alt="2" src="https://github.com/user-attachments/assets/d248637e-92c8-49aa-8305-74b1b4c0ba3b" />

# Reachability: ping <target>
- mention latency and packet loss.

<img width="694" height="114" alt="WhatsApp Image 2026-05-29 at 9 50 44 AM (6)" src="https://github.com/user-attachments/assets/f2fd3549-0abe-40d8-9d36-901263a34ff0" />

# Path: traceroute <target> (or tracepath)
- note any long hops/timeouts.

<img width="1589" height="233" alt="WhatsApp Image 2026-05-29 at 9 50 44 AM (4)" src="https://github.com/user-attachments/assets/8c30c423-8667-4315-9819-b82231c4e11e" />

# Ports: ss -tulpn (or netstat -tulpn) 
- list one listening service and its port.
<img width="1600" height="265" alt="WhatsApp Image 2026-05-29 at 9 50 44 AM (2)" src="https://github.com/user-attachments/assets/a2afb905-1681-44a4-9edd-a74931e1f641" />

# Name resolution: dig <domain> or nslookup <domain> 
- record the resolved IP.
<img width="1292" height="629" alt="WhatsApp Image 2026-05-29 at 9 50 44 AM (1)" src="https://github.com/user-attachments/assets/64c7fd02-8003-415e-b6c9-9cacdc90b39c" />

# HTTP check: curl -I <http/https-url> 
- note the HTTP status code.
<img width="973" height="291" alt="WhatsApp Image 2026-05-29 at 9 50 43 AM (3)" src="https://github.com/user-attachments/assets/a3d10dc5-35cb-4ac5-8c77-2916d9df96d1" />

# Connections snapshot: netstat -an | head 
- count ESTABLISHED vs LISTEN (rough).
<img width="806" height="254" alt="WhatsApp Image 2026-05-29 at 9 50 43 AM (2)" src="https://github.com/user-attachments/assets/7944c5e7-9718-443c-9be3-819899a03c42" />

## Mini Task: Port Probe & Interpret

1) Identify one listening port from `ss -tulpn` (e.g., SSH on 22 or a local web app).

<img width="1245" height="103" alt="WhatsApp Image 2026-05-29 at 9 50 43 AM (1)" src="https://github.com/user-attachments/assets/3c239411-ef61-4636-b0e4-64df5f219f79" />

2) From the same machine, test it: `nc -zv localhost <port>` (or `curl -I http://localhost:<port>`).

<img width="738" height="77" alt="WhatsApp Image 2026-05-29 at 9 50 43 AM" src="https://github.com/user-attachments/assets/d2845ff1-ade2-4bb4-a0f4-a3672090d68f" />

3) If not, what’s the next check?
- First check the status of Service `systemctl status <Service>`
- Check the logs of the service `journalctl -u <Service>`
- check firwall permission `sudo uwf status`

## Reflection 

- Which command gives you the fastest signal when something is broken?
-`ping`
- What layer (OSI/TCP-IP) would you inspect next if DNS fails? If HTTP 500 shows up?
- Check DNS resolution
- Check application logs and service status if HTTP 500 shows up 

## Two follow-up checks you’d run in a real incident.

- check Service helth `systemctl status`
- check Connectivity `nc -zv <server-ip> <port>`
- check logs `journalctl -u -n 50`








