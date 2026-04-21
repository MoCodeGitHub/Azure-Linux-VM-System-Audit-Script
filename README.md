
## Azure-Linux-VM-System-Audit-Script

<img width="1909" height="967" alt="Image" src="https://github.com/user-attachments/assets/acac4aa7-b14a-4cfb-b396-b6b2ab536ca8" />
<br>
<img width="1910" height="1023" alt="Image" src="https://github.com/user-attachments/assets/4359664b-4fe7-4634-bdae-d8df9bbdeb92" />
<br>
<img width="1657" height="1011" alt="Image" src="https://github.com/user-attachments/assets/80378e9f-7eca-49c2-ada4-e8d279fd02b3" />
<br>
<img width="1895" height="112" alt="Image" src="https://github.com/user-attachments/assets/fbf1df3c-d3aa-4a79-8fc1-ffab89aa8b45" />

## Overview

This project demonstrates the deployment of a Linux virtual machine in Microsoft Azure and the development of a Bash script to automate system health checks. The script collects key system metrics and generates a structured audit report.

---

## Objectives

- Deploy an Ubuntu Linux virtual machine in Microsoft Azure
- Configure secure SSH access
- Create a Bash script to automate system health checks
- Generate timestamped audit reports

---

## Technologies Used

- Microsoft Azure
- Ubuntu Linux Server
- Bash (Shell Scripting)
- SSH
- Linux system utilities

---

## Script Functionality

The `system_audit.sh` script collects the following system information:

- Logged-in users
- CPU load
- Memory usage
- Disk usage
- Private IP address
- Running services
- System timestamp

Each execution generates a structured system audit report saved with a timestamped filename.
