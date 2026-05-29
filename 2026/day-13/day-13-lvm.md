# Day 13 – Linux Volume Management (LVM)


## Task
- Learn LVM to manage storage flexibly – create, extend, and mount volumes.

### Task 1: Check Current Storage

<img width="1440" height="900" alt="2" src="https://github.com/user-attachments/assets/edab1109-d426-4619-aa06-e8e9ec46aa6b" />

Switch to root user:
```bash
sudo -i
```

Run: `lsblk`, `pvs`, `vgs`, `lvs`, `df -h`



### Task 2: Create Physical Volume


<img width="1440" height="900" alt="03" src="https://github.com/user-attachments/assets/8bc84c33-b0a2-4d38-be96-87c3f3348ba5" />

Run: `lsblk`, `lvm`

```bash
lvm> pvcreate /dev/nvme1n1 /dev/nvme2n1 /dev/nvme3n1
```



### Task 3: Create Volume Group

<img width="678" height="185" alt="05" src="https://github.com/user-attachments/assets/9ecbc705-a6bd-471a-b4d2-a1dc6d98175a" />

```bash
lvm> vgcreate devops-vg /dev/nvme1n1 /dev/nvme2n1 /dev/nvme3n1
lvm> vgs
```



### Task 4: Create Logical Volume

<img width="1230" height="168" alt="6" src="https://github.com/user-attachments/assets/a0bcef79-79c0-4275-8963-7200bf08a6bd" />

```bash
lvm> lvcreate -L 500M -n app-data devops-vg
lvm> lvs
```


### Task 5: Format and Mount


<img width="1440" height="900" alt="mount 09" src="https://github.com/user-attachments/assets/a23dcf6b-1fbf-4e72-95f3-4924b5fc9d91" />

```bash
mkdir -p /mnt/app-data
mkfs.ext4 /dev/devops-vg/app-data
mount /dev/devops-vg/app-data /mnt/app-data
df -h /mnt/app-data
```


### Task 6: Extend the Volume

<img width="1440" height="900" alt="11" src="https://github.com/user-attachments/assets/6efdd823-f4df-4986-b486-a1baa49600b9" />

```bash
lvextend -L +200M /dev/devops-vg/app-data
resize2fs /dev/devops-vg/app-data
df -h /mnt/app-data
```


### Task 7: Mount  Physical Volume Directly 

<img width="987" height="456" alt="12" src="https://github.com/user-attachments/assets/a580f862-e9a9-49cb-a989-1a13a33f7cce" />

```bash
mkdir -p /mnt/tws_extra_disk_mount
cd /mnt
ls
mkfs -t ext4 /dev/nvme3n1
```

<img width="1406" height="524" alt="13" src="https://github.com/user-attachments/assets/f03f9995-03b0-4dff-9ff1-801b33ebad00" />

```bash
mount dev/nvme3n1 /mnt/tws_extra_disk_mount
df -h 
```

### What you learned 

-  How to add storage to instance
-  How to create Physical  Logical and Volume Group
-  How to mount the volume
-  How to Format the Volume 
