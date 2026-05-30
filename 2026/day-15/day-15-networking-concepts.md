# Day 15 – Networking Concepts: DNS, IP, Subnets & Ports

### Task 1: DNS – How Names Become IPs

1. what happens when you type `google.com` in a browser?
- Browser check its cache, Then queries a DNS 
- DNS finds the IP address for google.com
- Then browser connect to that IP and Load the website 

2. What are these record types? Write one line each:
   - `A`, `AAAA`, `CNAME`, `MX`, `NS`

- `A` : Map a domain name to IPV4 address
- `AAAA` : Map adomain name to IPV6 address
- `CNAME` : Known as (Canonical name) aliases one domain name to another
- `MX` : Mail exchange server for Domain 
- `NS` : Authoritative name server for domain 


3. Run: `dig google.com` — identify the A record and TTL from the output


<img width="779" height="491" alt="Screenshot 2026-05-29 200734" src="https://github.com/user-attachments/assets/bf484a8a-8e44-4ecd-81a9-16630a51cad9" />


- Identified A record : 142.251.222.174
- TTL(Time To Live )  : 121 seconds

***TTL means***

- The record is considered valid for min 5 minutes after that resolver fetch afresh copy
- It helps to control quick DNS changes and reduce the load on authoritative servers ***


### Task 2: IP Addressing

1. What is an IPv4 address? How is it structured? (e.g., `192.168.1.10`)

- An IPV4 address is an 32-bit number 
- It is structured as 4 Octets (8-bit each )
- Its range 0 to 255 per Octets 

2. Difference between **public** and **private** IPs — give one example of each

- Public IP : Globally unique and routable on the internet. Example : `8.8.8.8`

- Private IP : It is Reserved for internet network not routable on the public internet 
Example : `192.168.1.10`

4. Run: `ip addr show` — identify which of your IPs are private

<img width="1344" height="819" alt="Screenshot 2026-05-29 210007" src="https://github.com/user-attachments/assets/0d7b10fd-dcde-4c27-ae49-3c615dc7b2ff" />


- Reserved for local host communication `127.0.0.1`

- Private IP 172.21.91.235


### Task 3: CIDR & Subnetting

1. What does `/24` mean in `192.168.1.0/24`?

- /24 in `192.168.1.0/24` is a CIDR notation. It indicates that the first 24 bits of the ip address are the network prefixandremaning 8 bits are host address

2. How many usable hosts in a `/24`? A `/16`? A `/28`?

- /24 --> 254 usable host 
- /16 --> 65,534 usable host 
- /28 --> 14 usable host
- The first address is the network address it identifies the subnet itself, not a device
- The last address is the broadcast address used to send a message to all devices on that subnet

3. Explain in your own words: why do we subnet?

- Subnetting cuts large network in a smaller piece stop trafic noise and boost security  


4. Quick exercise — fill in:

| CIDR | Subnet Mask     | Total IPs | Usable Hosts |
|------|---------------- |-----------|--------------|
| /24  | 255.255.255.0   | 256       | 254          |
| /16  | 255.255.0.0     | 65,536    | 65,534       |
| /28  | 255.255.255.240 | 16        | 14           |

---


### Task 4: Ports – The Doors to Services

1. What is a port? Why do we need them?

- port is a logical endpoint in network connection 
- without ports all trafic would go to  the same application 

2. Document these common ports:

| Port | Service |
|------|---------|
| 22   | SSH     |
| 80   | Nginix  |
| 443  | HTTPS   |
| 53   | DNS     |
| 3306 | MYSQL   |
| 6379 | Redis   |
| 27017| MangoDB |


3. Run `ss -tulpn` — match at least 2 listening ports to their services

<img width="1906" height="454" alt="Screenshot 2026-05-29 215352" src="https://github.com/user-attachments/assets/ce71cdd1-ab10-477a-a6cb-2632329b63f2" />



- SSH   : Port 22 
- Ngnix : Port 80 



### Task 5: Putting It Together

- You run `curl http://myapp.com:8080` — what networking concepts from today are involved?

1. DNS -->    Curl and resolve myapp.com to IP address
2. IP routing -->  the packet routed the internet using the IP address
3. TCP --->     TCP connection on port 8080 of the destination 
4. port 8080 ---->  Then  web server listen on the port 8080 recived HTTP request
5. Application ------>  Then it Fetch the data 


- Your app can't reach a database at `10.0.1.50:3306` — what would you check first?

1. Network connectivity  
- `ping (IP add)`
- To check the connection 
2. Port open 
- `nc -zv (IP add)`
- To  check the response of the port and if the port is open 
3. Firewall     
- `sudo iptables -L`
- are inbound rules allowing port or its block
4. Service Status 
- `systemctl status service`
- To check if the service is Active or Dead 
