# GENERAL

## 1&1 Dedicated Root Servers: Troubleshooting Tools:

Here are some recommended steps to follow to bring your server online. These are the tools that are provided by 1&1 to help you troubleshoot your customer-managed root servers:

1. You can try rebooting:
[http://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/rescue-and-recovery-c37690/reboot-your-server-a595707.html]

2. You can see what the server is doing by connecting to its Serial Console. This will let you connect like you were sitting right in front of it. 
[http://help.1and1.com/servers-c37684/dedicated-server-windows-c39510/rescue-and-recovery-c76208/explanation-of-the-serial-console-sercon-a627374.html]

3. More Detailed Serial Console information for Windows Server Customers:
[http://help.1and1.com/servers-c37684/dedicated-server-windows-c39510/rescue-and-recovery-c76208/access-your-windows-server-via-the-serial-console-a627375.html]
[http://help.1and1.com/servers-c37684/dedicated-server-windows-c39510/rescue-and-recovery-c76208/use-the-serial-console-with-a-windows-server-a627376.html]

4. You can also learn about the other recovery tools provided to our root-server customers found here: 
[http://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/rescue-and-recovery-c37690]

## 1&1 Dedicated Root Server Backup Options:

Here are the backup options for your server along with brief explanation:

FTP BACKUP: This is where we provide you with a FTP file storage in our datacenter (outside of your server itself) and you can program any FTP-compatible backup software to periodically sync files from the server to the FTP storage server.  Prices are monthly but billed in 3-month (quarterly) intervals by amount of storage:

  *FTP 250GB	--	$19.99/mo
  *FTP 500GB	--	$29.99/mo
  *FTP 1000GB	--	$39.99/mo

PROFESSIONAL BACKUP: Backup storage is provided similar to FTP but it's managed in the Control Panel and you install the Client software inside your server and it's handled by the software.

  *Professional Backup L (10 GB)	--	$9.99/mo
  *Professional Backup XL (50 GB)	--	$29.99/mo
  *Professional Backup XXL (100 GB)	--	$49.00/mo

## 1&1 Dedicated Root Servers IPv4 Addresses:

An additional IPv4 will be $0.99/month billed quarterly. You can add up to 7 to your dedicated server for a total supported of 8 IPv4. Please reply with Phone PIN for verification and we will order 1 additional IPv4 for your server. It takes about 15 minutes for it to be ready to use. Don't forget to add it to your firewall.

## 1&1 Root Cloud Server Backup Options:

For Root Cloud servers, in the Cloud Panel itself you have some other options for Backup and Disaster Recovery.

BACKUP ACCOUNTS -> You can set up automated backup of files/folders from your server to a storage location on the cluster (hosts). It is all setup and managed through the 1&1 Cloud Backup app. 

IMAGES -> You can take an image of your server as-is and store it in the Cloud Panel Datacenter for future use / reimaging purpose in a disaster.  It depends on the size of your Cloud Server's SSD. 

> Example: 80 GB $5.76/month 

You can also set it to automate this and image Daily or Weekly and how many images total to store, and it will charge you per those choices.

SNAPSHOTS -> These are taken on the Servers -> click a server -> Actions -> Create Snapshot.  These are temporary images you can create just before doing a major change, update, or upgrade. If the action fails you can roll back to when it was working good. These do not cost, but they are only stored for a couple days and not automatic.  Price per image. It includes the operating system and all SSDs.

## 1&1 Cloud Servers and VPS: What's the difference between Cloud Server and Virtual Server Cloud?

The Full Cloud Server packages ( Cloud Server M) and the Virtual Cloud
Server ( Cloud M) mainly differ in your options through the cloud
panel. Overall they are are the same server, however with the Full
Cloud server package you have options to spin up new servers without
having to order a new package, The full cloud server offers the
ability to create a private network and use load balancing and can be
easily upgraded to the next size through the cloud panel itself.
Additionally, the Full Cloud server allows for Cloning of servers
which allows for quicker deployments of servers that need to be setup
similarly. You may also create your own images by uploading a saved
image from vmware, so you are able to install operating systems not
offered by 1&1 or move directly from a local testing environment to a
production server.

With the Cloud M/ Virtual cloud servers many of these additional
features are not available. Instead it operates as a normal server you
can still perform all the actions you would directly on the server in
both packages but will not have access to the options mentioned above.
Performance and resource wise they are the same server.

## 1&1 SSL: How to use with External Domain and External Name Servers:

In order to use our certificates the domain must exist in the 1&1 Domain Center. If you want to use external nameservers, you have to go into Domain Center and set those nameservers to match what is shown on WHOIS. Then, you will have to create an email account at your mail host to do email-based domain validation. Create hostmaster@yourdomain.com email account so you can verify. Then you can setup the cert in 1&1 Manage SSL section. And use the email to confirm the certificate. And then it will let you download the key, cert and intermediate/ca cert files. 

## 1&1 VPS: How to manage a 1&1 Virtuozzo/Parallels VPS using Parallels Power Panel:

Link to your VPS Power panel: https://YOUR_IP_ADDRESS_OR_DOMAIN:4643/vz/cp

Explanation of the Virtuozzo Power Panel:
[http://help.1and1.com/servers-c37684/virtual-private-server-c63343/virtuozzo-power-panel-c63354/explanation-of-the-virtuozzo-power-panel-a686087.html]

How to Log In to the Virtuozzo Power Panel:
[http://help.1and1.com/servers-c37684/virtual-private-server-c63343/virtuozzo-power-panel-c63354/log-in-to-the-virtuozzo-power-panel-a686142.html]

## VNC: For accessing rescue mode, we recommend UltraVNC Viewer Portable: 
[http://www.uvnc.com/component/jdownloads/summary/5/97.html]                                                                    
## How to mitigate 504 errors on the Managed Cloud Servers:

A feature of the Managed Cloud Panel that we are finding to be helpful with 504 issues: You can change the resources of your server between the web server and the database server. In the Cloud Panel click Servers then click your server in the main Panel. Then look below and you will see the change Resources button. Choose custom and change your allocation as you see fit. Note: This may restart the services on the server which takes a moment. 

Beyond this, it is not possible to change the Managed Server configuration, because they use a highly scaled customized system that has been designed by 1&1 for security and reliability. In this case you would want to hire an admin to manage your own server using root / Administrator access. 


## 1&1 How and why TXT/SPF is becoming more and more required for e-mail:

Many mail servers like Microsoft, Google, and AOL are starting to require DNS verification such as SPF and DKIM records in order to accept emails. This is done in an effort to fight SPAM. It places more responsibility on mail server admins to be compliant. 

Here is some more information that will help you increase the reputation of your mail server so your emails will be delivered:

TXT/SPF Records: Why are they needed?
[http://help.1and1.com/domains-c36931/manage-domains-c79822/dns-c37586/explanation-of-an-spf-record-a792807.html]

TXT/SPF Records: How to set up.
[http://help.1and1.com/domains-c36931/manage-domains-c79822/dns-c37586/add-or-remove-txt-records-a792509.html]

For more information how SPF records are built, see this 3rd party tool: [http://spfwizard.net]

# 1&1 Mail: How to migrate domains and emails from one contract to another:

1. Move the domains from old package to new package (Mail will go down):
If you do not have as a target a hosting or server package, order a new contract / hosting package for email to go to.
[http://help.1and1.com/domains-c36931/transfer-domains-c79823/within-1and1-c38670/transfer-a-domain-between-1and1-packages-within-the-same-account-a792490.html]

2. Create the email accounts again in the new package (they will be empty)
[http://help.1and1.com/e-mail-and-office-c37589/1and1-mail-basic-c37590/getting-started-c85087/create-an-e-mail-account-in-your-1and1-package-a616894.html]

3. Migrate the mails from old to new mailboxes:
[https://help.1and1.com/e-mail-and-office-c37589/1and1-mail-business-c85093/using-the-product-c85138/migrate-e-mail-from-another-account-to-a-1and1-e-mail-account-a792498.html]

4. Create the subdomains again (they will be deleted during the transfer)
[http://help.1and1.com/search/click/controller/search/url/domains-c36931%252Fmanage-domains-c79822%252Fsubdomains-c37588%252Fcreate-a-subdomain-a594923.html/rank/1/q/create%2Bsubdomain]

5. Create the DNS again (it will be reset to defaults during the transfer) (set A record to new server IP address to host sites in that server)
[http://help.1and1.com/search/click/controller/search/url/domains-c36931%252Fmanage-domains-c79822%252Fdns-c37586%252Fchange-your-domain-s-ip-address-a-record-a599296.html/rank/1/q/edit%2Bdns]

6. Make sure everything functions in new package.
Send and receive email, view the websites.

7. Cancel the old package.
Call us or go to cancel.1and1.com.
[http://help.1and1.com/search/click/controller/search/url/account-and-billing-c65577%252Faccount-details-c65578%252Fcancel-an-entire-package-a630738.html/rank/1/q/cancel%2Bpackage]

# 1&1 Dedicated Root Server: Steps involved in a Hard Disk Swap:

In a datacenter, Hard disks are "consumables" and are changed out like tires on a car when they wear out. Your dedicated server is designed to have two "twins" or mirror drives. When one goes down, we:
- Have you backup your data just as a precaution: it is the only thing we cannot replace.
- File a ticket with the Datacenter to swap the bad disk with a good disk within 4 hours of the ticket creation.
- You and/or your admin rebuild your software raid, using instructions from the [Help.1and1.com] or [technet.microsoft.com] site. 

For Linux:
[https://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/rescue-and-recovery-c37690/rebuild-a-software-raid-array-a730894.html]

For Windows:
[https://social.technet.microsoft.com/Forums/Lync/en-US/e22abc77-fb2a-49eb-bb30-e01c12ea2a4b/can-i-setup-a-software-raid-in-windows-server-2012-r2-using-virtual-hard-disks?forum=winservergen]
(or google ```add raid mirror windows 2008``` or similar.)

- As a result, The existing drive mirrors itself to the new drive and then you are in sync again.

At this time we are on the first step. When you reply with the go-ahead and verification PIN, we will file the ticket to swap the bad disk out. 

## How to reduce CPU load on a web server:

You can login to your server using SSH and see that the CPU resources are being loaded with php. This is because you are getting so much traffic that you are using all the resources of the server. You have a few options:

- Scan and be sure that malware or malicious processes are not using your server's resources.
- Move the sites that are getting the most traffic to their own servers.
- Optimize your PHP code so that the resources used per visitor is less. 
- Upgrade your managed server to a larger managed server. 

# Explanation of Self-signed certificate warning

The error you are getting while accessing your Plesk/cPanel is because the certificate installed in the the server is open ssl.
The server certificate is installed with open ssl to keep your connection secure when you are using the panel.
Please ignore this warning and confirm this security exception, so that you will never face such warning again.
Please note that the SSL alert that you get [ Untrusted Connection ] is due to the fact that the server uses Open SSL certificate for SSL.
Please note that Open SSL is used in the server side for your protection only.
This does no harm to you. You can just ignore it and proceed further or you can install the certificate in your browser so that such an alert will not come in future.

## How to redirect http:// to https:// using .htaccess mod_rewrite on apache:

```
### BEGIN SSL ------------------------------------
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteCond %{SERVER_PORT} 80
RewriteRule ^(.*)$ https://domainnamehere.com/$1 [R,L]
</IfModule>
### END SSL --------------------------------------
```

# WINDOWS

## 1&1 Dedicated Server: How to configure your Software RAID 1 Mirror in Windows Server 2012:

[https://blogs.technet.microsoft.com/tip_of_the_day/2014/10/10/tip-of-the-day-configuring-disk-mirroring-for-windows-server-2012/]

## Windows Dedicated Server: How to get the SMART data from the hard disks.

The output of the drive smart test is preferred.... We need at least the drive serial. If you don't want to reboot into rescue and run the smart tests, or have us do so, you can install the following free tool on windows. This is the quickest way to get the required information without disturbing running processes:

[https://sourceforge.net/projects/smartmontools/?source=typ_redirect]

Then launch a Command Prompt as administrator, and run the following 2 commands:
```bash
smartctl -t short /dev/sda
smartctl -t short /dev/sdb
```

Wait about 2 minutes, then run the following commands:

```
smartctl -a /dev/sda > C:\text.txt
smartctl -a /dev/sdb >> C:\text.txt
notepad C:\text.txt
```

copy and paste all of what appears in notepad into a reply to this email. Then we can put in the ticket right away, and the drive will be changed within 4 hours of the ticket entry.

## Windows Server: Turn Off Internet Explorer Enhanced Security Configuration

[http://help.1and1.com/servers-c37684/dedicated-server-windows-c39510/administration-c40119/turn-off-internet-explorer-enhanced-security-configuration-a696299.html]


## Windows Server: How to mitigate SMBv1 Vulnerability in Windows Server 2003/2008 to help prevent WannaCry/malware infections:

Disable SMB v1 in Managed Environments with Group Policy
[https://blogs.technet.microsoft.com/staysafe/2017/05/17/disable-smb-v1-in-managed-environments-with-ad-group-policy/]

How to enable and disable SMBv1, SMBv2, and SMBv3 in Windows and Windows Server:
[https://support.microsoft.com/en-us/help/2696547/how-to-enable-and-disable-smbv1,-smbv2,-and-smbv3-in-windows-vista,-windows-server-2008,-windows-7,-windows-server-2008-r2,-windows-8,-and-windows-server-2012]

How to disable SMBv1 in Windows 10 and Windows Server:
[https://www.saotn.org/disable-smbv1-windows-10-windows-server/]

For more information:

The Deprecation of SMB1 – You should be planning to get rid of this old SMB dialect:
[https://blogs.technet.microsoft.com/josebda/2015/04/21/the-deprecation-of-smb1-you-should-be-planning-to-get-rid-of-this-old-smb-dialect/]
[https://blogs.technet.microsoft.com/filecab/2016/09/16/stop-using-smb1/]


## How to install OpenVPN on Windows Cloud Servers

Here are some 1&1 Cloud Community posts about configuring and using OpenVPN with 1&1 Cloud Servers running Windows Server OS:

[https://www.1and1.com/cloud-community//learn/networking/vpn/installing-and-configuring-openvpn-windows/]
[https://www.1and1.com/digitalguide/server/configuration/]
[https://www.1and1.com/cloud-community//nc/tags/vpn/]
[https://www.1and1.com/cloud-community//nc/tags/networking/8/]

## How to install ASP.NET 3.5 on Windows Server if you are getting a Sources error:

*** Please use the export or backup function in the regedit before making these changes. ***

First, we recommend a surgical approach:
[https://msdn.microsoft.com/en-us/library/dd939844%28v=ws.10%29.aspx]
rename: ```WUServer```  and ```WUStatusServer```
Change ```UseWUServer```  from ```1``` to ```0```

You can also remove the entire thing:
[http://aaron-kelley.net/blog/2014/04/remove-wsus-client-settings-and-revert-to-using-the-default-microsoft-update-servers/]
[https://technet.microsoft.com/en-us/library/cc708545(v=ws.10).aspx]

Now, you can install the ASP.NET.
To enable .NET 3.5 SP1 on  Windows Server 2012 operating system:

    Open Control Panel, Program and Features (or Control Panel, Uninstall a program depending on your view setting).
    Click Turn Windows features on or off.
    The Add Roles and Features Wizard window should appear. Review this information first.
    After reviewing the information, click Next.
    From the Select installation type screen, select Role-based or feature-based installation and click [Next]
    From the Select Server Selection screen verify the correct server is selected.
    Click [Next] on the Select Server Roles screen.
    In the Select Features screen, click the triangle icon next to .NET Framework 3.5 Features to expand it. Checkmark the following options below. If the Add Roles and Features Window appears, click Add Features.
        NET Framework 3.5 (includes .NET 2.0 and 3.0) 
    After checking the above selections, click [Next].
    Click [Next] until you reach the Confirm installation selections screen.
    On the Confirm installation selections page, verify .NET 3.5 features are on the list. You have two options:
        If the source files for Windows Server 2012 are on the local computer, or if you are unsure, click Install.
        If source files for Windows Server 2012 installation are not on the local computer, click Specify an alternate source path near the bottom of the screen and installation files and then click Install.
    If the .NET 3.5 features were installed successfully, you should see a message confirming the installation was successful.
    Close out of Control Panel.

# LINUX



## 1&1 Dedicated Server: How to configure your Software RAID 1 Mirror in Linux:

Rebuild Software RAID on Linux Dedicated Server:
[http://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/rescue-and-recovery-c37690/rebuild-a-software-raid-array-a730894.html]

Also, to help our customers be proactive about these types of problems, I would like to give you the following optional information on how to get notifications for hard disk problems, please note the information may differ for different OS / Setups:

Advanced: Running Smartmontools as a Daemon
Ubuntu / General: [https://help.ubuntu.com/community/sourcetools]
CentOS: [https://securfox.wordpress.com/2009/08/14/monitoring-hard-disks-with-smart-oncentos/]

Getting notifications from Linux Software RAID:
[https://ioflood.com/blog/2015/04/21/setting-up-software-raid-mdadm-status-alert-emails-for-failed-drives-in-centos-ubuntu-and-debian/]

## 1&1 Linux Servers: Welcome to LVM: Logical Volume Manager in Linux servers.

LVM is used so that you can assign storage easily on the go without partitioning.

Here is the information on how to expand your Logical Volumes from the physical stoage in your Cloud Server.

The Why: 
[http://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/administration-c37694/explanation-of-logical-volume-management-lvm-a756052.html]

The How:
[http://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/administration-c37694/increase-the-size-of-the-logical-volume-a756168.html]

If you need to partition:
[http://help.1and1.com/servers-c37684/dynamic-cloud-server-linux-c73266/increase-the-physical-volume-size-of-a-linux-1and1-dynamic-cloud-server-a771780.html]

## 1&1 Root Linux Servers: How to access your server's terminal using SSH:

[https://help.1and1.com/hosting-c37630/webspace-and-access-c85098/ssh-c37775/explanation-of-ssh-secure-shell-access-a595889.html]
[https://help.1and1.com/hosting-c37630/webspace-and-access-c85098/ssh-c37775/establish-an-ssh-connection-from-a-pc-a595890.html]


# PLESK

## 1&1 Plesk / SSL: How to issue, download, and install a root SSL in Plesk:

Step 1: Setup the SSL in 1&1 Manage SSL section.
https://help.1and1.com/ssl-certificates-c85183/administration-c85185/ssl-certificate-managed-by-you-c85188/ssl-certificate-setup-process-using-activation-e-mail-a792728.html

Step 2: Download the 3 files that make up the SSL Cert (the key, the cert, and the Intermediate/CA cert).
https://help.1and1.com/ssl-certificates-c85183/administration-c85185/ssl-certificate-managed-by-you-c85188/download-the-dedicated-ssl-certificate-a627737.html

Step 3: Then, once you have the 3 files, you can install the SSL. Here are some examples:

https://help.1and1.com/ssl-certificates-c85183/administration-c85185/ssl-certificate-managed-by-you-c85188/install-an-ssl-certificate-managed-by-you-a792810.html

https://docs.plesk.com/en-US/onyx/administrator-guide/plesk-administration/securing-plesk/securing-plesk-and-the-mail-server-with-ssltls-certificates.59466/
Videos: https://www.youtube.com/watch?v=Oq6-YViDzoc   and https://youtube.com/watch?v=8z8h8CRQ-Yg
https://support.plesk.com/hc/en-us/articles/213946825-How-to-install-SSL-certificate-for-a-domain-in-Plesk
NOTE: I usually just put the name of the certificate  as "domain   timestamp"   e.g.     "example.com 20170727"  but you can name it what you like. THEN, simply go down to the "3 Choose file Buttons".
Upload those 3 files you got from "Manage SSL" to these 3 buttons:  key is the key, cert is the cert, and  INTERMEDIATE is the same as a CA cert. Then click "Upload" just below there. Then proceed to the Hosting settings and select that SSL from the drop down.

## Plesk: Configuring Plesk as a Mail Server:

https://docs.plesk.com/en-US/onyx/administrator-guide/mail/configuring-serverwide-mail-settings.59430/

You may also want to see "Securing your Mail server" here:
https://docs.plesk.com/en-US/onyx/video-tutorials/

## Plesk: How to Manually install a Plesk License key in your root server

The username and passwords do not work. However, I was able to obtain the key from the admins. You can Install it using Plesk -> Tools & Settings -> License Management or by using the command line. Here are guides for both methods.

https://docs.plesk.com/en-US/12.5/deployment-guide/installing-plesk/after-installing-plesk/install-a-license-key.70287/
https://kb.plesk.com/en/121484

----------------------------------------------------------------------------

# SUPPORT WRAPPERS AND MACROS

## SERCON with NO PASSWORD REQUIRED
```bash
ssh -t techsupp@sercon-us.schlund.de  techid
```

## TOP SITES GETTING TRAFFIC: sites getting traffic on a server. run this in /var/log:

```bash
zcat access.log* |awk '{print $11,$7}' | cut -d'?' -f1 | sort -T /kunden/homepages/backup/|uniq -c|sort -r -n -k 1 -T /kunden/homepages/backup/|head -n 15
```

## PLESK 12 PASSWORD FROM ROOT TERM:
10-12:

```bash
/usr/local/psa/bin/admin --show-password
```
Onyx:
```bash
/usr/local/psa/bin/admin --get-login-link
```

## FIX Broken network on WINDEDI:
```
netsh interface ip set address "Local Area Connection" dhcp 
```

## FIX net_ratelimit: 37 callbacks suppressed in rescue
```bash
sysctl -w net.core.message_cost=0
```

## VIEW the RAID:
```bash
cat /proc/mdstat
```

## TEST THE DISKS: 
```bash
smartctl -t short /dev/sda && smartctl -t short /dev/sdb
```

Wait about 3 minutes....

```bash
smartctl -a /dev/sda && smartctl -a /dev/sdb
```

## GRUB FIX CHROOT:
```bash
fdisk -l
cd /mnt
mount /dev/sda1 /mnt
mount -t proc none proc
mount -o bind /dev dev
mount -t sysfs sys sys
chroot /mnt /bin/bash
update-grub
/usr/sbin/grub-install --recheck --no-floppy /dev/sda
sync & reboot
```

## List largest installed package deb/ubuntuAh, 

```bash
dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -n
```
## Mount partitions from Linux Dedi in Linux rescue:

```bash
mount /dev/md1 /mnt
cd /mnt
mount /dev/mapper/vg00-usr usr
mount /dev/mapper/vg00-var var
mount /dev/mapper/vg00-home home
```
## Mount partitions from Windows Dedi in Linux rescue:

```bash
cd /mnt
mkdir -p c1 && mount -t ntfs-3g -o ro /dev/sda1 c1
mkdir -p d1 && mount -t ntfs-3g -o ro /dev/sda2 d1
mkdir -p c2 && mount -t ntfs-3g -o ro /dev/sdb1 c2
mkdir -p d2 && mount -t ntfs-3g -o ro /dev/sdb2 d2
mkdir -p sda3 && mount -t ntfs-3g -o ro /dev/sda3 sda3
mkdir -p sdb3 && mount -t ntfs-3g -o ro /dev/sdb3 sdb3
```

## Mount partitions from ARECA Hardware raid in Linux rescue:

```bash
cd /mnt
mkdir sda1 && mount /dev/sda1 sda1
mount /dev/mapper/vg00-home sda1/home
mount /dev/mapper/vg00-var sda1/var
mount /dev/mapper/vg00-usr sda1/usr
```

## Fix JOURNAL:

```bash
tune2fs -O ^has_journal /dev/mapper/vg00-var
e2fsck -f /dev/mapper/vg00-var
resize2fs /dev/mapper/vg00-var
e2fsck -f /dev/mapper/vg00-var
tune2fs -O +has_journal /dev/mapper/vg00-var
```

## ADD DEFAULT ROUTES

```bash
route add -net 10.255.255.1 netmask 255.255.255.255 dev eth0 
route add default gw 10.255.255.1 
```

## TEST OUTBOUND SMTP LOCALLY:

```bash
echo "Subject: test" | /usr/sbin/sendmail -v test@example.com
```

## Add this to your ~/.ssh/config to auto-accept all host keys.

```
Host *
    StrictHostKeyChecking no
```
