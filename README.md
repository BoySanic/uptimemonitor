This will be the uptime monitor I use to keep my VMs running reliably.


Goals:

1. SMS/Email alerts with expandability into other messaging platforms
2. Auto-healing capabilities (Proxmox API to reboot a stuck VM, ssh keys for VMs to restart stuck services)
3. Tiered alerting system depending on severity of the problem and importance of the service


Structure:


1. Database that stores historical data + data about what needs to be monitored
2. Python script on a cron job that reads from the database and runs the commands dictated by the database



Roadmap:

1. Database Schema
2. Script to check on services
3. Alerting via the script
4. Self-heal options
