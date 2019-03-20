# Latest Release/Version: 5.10.19
## Last Updated: 3-19-2019

# How to run UniFi Docker Container?
```
# Assuming you have created an empty dir: /docker/unifi
docker run --name=unifi -it -d \
    -p 8080:8080 \
    -p 8443:8443 \
    -p 8880:8880 \
    -p 8843:8843 \
    -v /docker/unifi:/usr/lib/unifi/data \
ventz/unifi
```

# Use the controller with your Ubiquiti AP:
SSH to your AP, and set the controller inform URL:
```
set-inform http://IP-or-FQDN:8080/inform
```

Alternative ways to configure Layer 3 adoption/management:

https://help.ubnt.com/hc/en-us/articles/204909754-UniFi-Layer-3-methods-for-UAP-adoption-and-management

# What is this?
* Simple and Updated Docker container of the UniFi Controller for Ubiquiti APs/devices.


# What is the Ubiquiti UniFi Controller

* The UniFi Controller enables the administrator to instantly provision and configure thousands of UniFi APs, allowing for quick, simple management of system traffic.

* The UniFi Controller can be accessed through any device using a web browser.

* A single UniFi Controller running in the cloud can manage multiple sites: multiple, distributed deployments and multi-tenancy for managed service providers.


# Supported Products
UAP, UAP-AC-EDU, UAP–AC–IW, UAP-AC-LITE, UAP-AC-LR, UAP-AC-M, UAP-AC-M-PRO, UAP-AC-PRO, UAP-HD, UAP-IW, UAP-IW-HD, UAP-LR, UAP-nanoHD, UAP-Outdoor, UAP-Outdoor+, UAP-Outdoor5, UAP-PRO, UAP-SHD, UAP‑XG, UC-CK, UCK-G2, UCK-G2-PLUS, US-16-150W, US‑16‑XG, US-24, US-24-250W, US-24-500W, US-48, US-48-500W, US-48-750W, US-8, US-8-150W, US-8-60W, USG, USG-PRO-4, USG-XG-8, US-L2-24-POE, US-L2-48-POE, US-XG-6POE, UWB‑XG, UWB‑XG‑BK

# Important Notice
Starting with UniFi Network version 5.10, the required minimum firmware for UAP/USW will be 4.0.9 and for USG will be 4.4.34

# Docker Ports/Firewall

```
Required Ports:
tcp/8080 = UAP to inform controller
tcp/8443 = (SECURE) Controller GUI / API - web browser
tcp/8880 = HTTP portal redirect (NON-Secure)
tcp/8843 = HTTPS portal redirect (Secure)
```

```
Other Ports:
tcp/8081 = Redirector for Wireless clients
tcp/8082 = Redirector for Wired clients
tcp/27117 = (INTERNAL) MongoDB service
udp/3478 = STUN Service
```

Ubiquiti ports information: 

https://help.ubnt.com/hc/en-us/articles/204910084-UniFi-Change-Default-Ports-for-Controller-and-UAPs

# Docker Volumes/Overrides
```
Configuration Data (+ other data - work dir, logs, etc.)
/usr/lib/unifi/data
```
