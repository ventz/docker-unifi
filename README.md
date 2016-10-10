# Latest Release/Version: 5.2.9

# How to run UniFi Docker Container?
```
docker run --name=unifi -it -d \
    -p 8080:8080 \
    -p 8443:8443 \
    -p 8880:8880 \
    -p 8843:8843 \
    -v /unifi:/var/lib/unifi \
ventz/unifi
```

# Use the controller with your Ubiquity AP:
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
UAP, UAP-AC, UAP-AC-EDU, UAP-AC-LITE, UAP-AC-LR, UAP-AC Outdoor, UAP-AC-PRO, UAP-IW, UAP-LR, UAP-Outdoor, UAP-Outdoor+, UAP-Outdoor5, UAP-PRO, US-16-150W, US-24-250W, US-24-500W, US-48-500W, US-48-750W, US-8-150W, USG, USG-PRO-4


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

Ubiquity ports information: 

https://help.ubnt.com/hc/en-us/articles/204910084-UniFi-Change-Default-Ports-for-Controller-and-UAPs

# Docker Volumes/Overrides
```
Configuration Data (+ other data - work dir, logs, etc.)
/var/lib/unifi
```

```
Log Files:
/var/log/unifi
```

```
Run Files:
/var/run/unifi
```
