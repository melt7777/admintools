# 1&1 SERVER FAQ

Linux Servers are administered using a Terminal program, making a secure shell connection to the server and typing commands into the prompt. You may have seen Command Prompt on Windows PCs and it is similar to that. 

## Here is a detailed explanation of SSH (Secure SHell): 

https://help.1and1.com/hosting-c37630/webspace-and-access-c85098/ssh-c37775/explanation-of-ssh-secure-shell-access-a595889.html

How to connect if you are on a Windows PC: https://help.1and1.com/hosting-c37630/webspace-and-access-c85098/ssh-c37775/establish-an-ssh-connection-from-a-pc-a595890.html

How to connect if you are on a Mac: https://help.1and1.com/hosting-c37630/webspace-and-access-c85098/ssh-c37775/establish-an-ssh-connection-from-a-mac-a748749.html

## 1&1 Dedicated Root Servers: Troubleshooting Tools:

Here are some recommended steps to follow to bring your server online. These are the tools that are provided by 1&1 to help you troubleshoot your customer-managed root servers:

1. You can try rebooting:
http://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/rescue-and-recovery-c37690/reboot-your-server-a595707.html

2. You can see what the server is doing by connecting to its Serial Console. This will let you connect like you were sitting right in front of it. 
http://help.1and1.com/servers-c37684/dedicated-server-windows-c39510/rescue-and-recovery-c76208/explanation-of-the-serial-console-sercon-a627374.html

3. More Detailed Serial Console information for Windows Server Customers:
http://help.1and1.com/servers-c37684/dedicated-server-windows-c39510/rescue-and-recovery-c76208/access-your-windows-server-via-the-serial-console-a627375.html
http://help.1and1.com/servers-c37684/dedicated-server-windows-c39510/rescue-and-recovery-c76208/use-the-serial-console-with-a-windows-server-a627376.html

Here is an example of how to disable the Windows Firewall from Serial Console on a Windows Dedicated Server:

(Once connected to the Serial Console):

```
SAC>cmd
The Command Prompt session was successfully launched.
SAC>
EVENT:   A new channel has been created.  Use "ch -?" for channel help.
Channel: Cmd0006
SAC>ch -sn Cmd0006

Name:                  Cmd0006
Description:           Command
Type:                  VT-UTF8
Channel GUID:          2bc31f39-2705-11e8-9101-509a4c7c4926
Application Type GUID: 63d02271-8aa4-11d5-bccf-00b0d014a2d0

Press <esc><tab> for next channel.
Press <esc><tab>0 to return to the SAC channel.
Use any other key to view this channel.

Please enter login credentials.
Username: administrator
Domain  :
Password: ************

Microsoft Windows [Version 10.0.14393]
(c) 2016 Microsoft Corporation. All rights reserved.

C:\Windows\system32>netsh advfirewall set allprofiles state off
Ok.
```
4. You can also learn about the other recovery tools provided to our root-server customers found here: 
http://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/rescue-and-recovery-c37690

## 1&1 Dedicated Root Servers: Backup Options:

Here are the backup options for your server along with brief explanation:

FTP BACKUP: This is where we provide you with a FTP file storage in our datacenter (outside of your server itself) and you can program any FTP-compatible backup software to periodically sync files from the server to the FTP storage server.  Prices are monthly but billed in 3-month (quarterly) intervals by amount of storage:  
  
  FTP 250GB	    --	$19.99/mo  
  FTP 500GB	    --	$29.99/mo  
  FTP 1000GB	--	$39.99/mo  
  
PROFESSIONAL BACKUP: Backup storage is provided similar to FTP but it's managed in the Control Panel and you install the Client software inside your server and it's handled by the software.  
  
  Professional Backup L (10 GB)	    --	$9.99/mo  
  Professional Backup XL (50 GB)	--	$29.99/mo  
  Professional Backup XXL (100 GB)	--	$49.00/mo  

## 1&1 Dedicated Root Servers: Adding IPv4 Addresses:

An additional IPv4 will be $0.99/month billed quarterly. You can add up to 7 to your dedicated server for a total supported of 8 IPv4. Please reply with Phone PIN for verification and we will order 1 additional IPv4 for your server. It takes about 15 minutes for it to be ready to use. Don't forget to add it to your firewall.


--------------

## 1&1 Root Cloud Servers: Getting Started:

**How to find the initial password for your server:**

If you have used a 1&1 Image to image your server and you did not choose the initial password during that process, the Cloud Panel created a new password for you and stored it here so you could get it. 

To change the password you have to do it inside your OS. Note: If you do that, the initial password in the Cloud Panel does not update and is no longer valid. We would not have any knowledge of the new password, so keep it safe.

For details:
http://help.1and1.com/servers-c37684/1and1-cloud-server-c85165/getting-started-c85194/show-initial-password-for-1and1-cloud-server-a792646.html

**How to configure the Cloud Server Firewall:**

Root Cloud Servers and Cloud VPS have an inbound external firewall provided by 1&1. This is in addition to firewalls that you can install and/or use inside your server's Operating System. 

For more details how to set up the firewall in the Cloud Panel:
http://help.1and1.com/servers-c37684/1and1-cloud-server-c85165/getting-started-c85194/set-up-a-firewall-on-1and1-cloud-server-a792659.html

**How to connect a domain to your server:**

You can edit the DNS settings of a domain to direct traffic to your server. To tell your domain that you want to host your website in your server, you can set the A Record of your domain's DNS settings to your Server's IP address.

Here is a guide how to do it when 1&1 is your DNS provider:
http://help.1and1.com/domains-c36931/manage-domains-c79822/dns-c37586/change-your-domain-s-ip-address-a-record-a599296.html

**How to open the FTP port if you cannot FTP to your server:**

> Note: Sometimes you have to open port 20-21 as port 20 is the DATA port for ACTIVE FTP sessions. 

https://help.1and1.com/servers-c37684/1and1-cloud-server-c85165/troubleshooting-c85196/troubleshoot-ftp-issues-with-your-1and1-cloud-server-a792828.html

## 1&1 Root Cloud Servers: Adding Block Storage:

Block Storage appears as a new additional hard disk in your OS.

Cost: Comes out to about ~ 7.2c/GB/month for block storage in the Cloud.)

Block Storage guide: https://whstatic.1and1.com/help/CloudServer/EN-US/index.html

## 1&1 Root Cloud Servers: Backup Options:

For Root Cloud servers, in the Cloud Panel itself you have some other options for Backup and Disaster Recovery.

BACKUP ACCOUNTS -> You can set up automated backup of files/folders from your server to a storage location on the cluster (hosts). It is all setup and managed through the 1&1 Cloud Backup app. 

> * Example: $11.52​/month for 160gb
> * Example: $5.76/month for 80gb
> * (Comes out to about ~ 7.2c/GB/month for backup files and/or images stored in the Cloud.)

IMAGES -> You can take an image of your server as-is and store it in the Cloud Panel Datacenter for future use / reimaging purpose in a disaster.  It depends on the size of your Cloud Server's SSD. 

> Same price per GB as the backup accounts above.

You can also set it to automate this and image Daily or Weekly and how many images total to store, and it will charge you per those choices. Simply create the image at the time you want (the interval is based on the Created Time.) If you want it to run at 3PM every night, Run the first one at 3PM and select Daily Interval.

Users Guide to Cloud Panel Images: https://whstatic.1and1.com/help/CloudServer/EN-US/d849917.html
 
Users Guide to Cloud Panel Usage Costs: please read: https://whstatic.1and1.com/help/CloudServer/EN-US/d849918.html
 
SNAPSHOTS -> These are taken on the Servers -> click a server -> Actions -> Create Snapshot.  These are temporary images you can create just before doing a major change, update, or upgrade. If the action fails you can roll back to when it was working good. These do not cost, but they are only stored for a couple days and not automatic.  Also, they need to be deleted when re-imaging and when upgrading resources. You would create an Image instead if you are going to take these actions.

## 1&1 Root Cloud Servers: Direct Cloudpanel login

For this you have to have a Root Cloud Server (not VPS). You can create users in the Cloud Panel on the left side menu under Users. Then they can login using the direct URL: 

https://cloudpanel.1and1.com/login

## 1&1 Root Cloud Servers and Cloud VPS: What's the difference between Cloud Server and Virtual Server Cloud?

The Full (Root) Cloud Server packages ( Cloud Server M) and the Virtual Cloud Server ( Cloud M) mainly differ in your options through the cloud panel. Overall they are are the same server, however with the Full Cloud server package you have more features:

*Note: May not be complete list of differences. See 1and1.com for details.*

* Have up to 10 IPv4 addresses instead of just 1;
* Create/delete servers without having to order a new package;
* Create a private network and use load balancing;
* Easily upgrade to the next size through the cloud panel itself;
* Clone of servers which allows for quicker deployments of servers that need to be setup similarly;
* Create your own images by uploading a saved image from vmware, so you are able to install operating systems not offered by 1&1 or move directly from a local testing environment to a production server.
* Have unlimited 1and1 webmail basic accounts (instead of only 250 with the Virtual Server Cloud.)

With the Cloud M/ Virtual cloud servers many of these additional features are not available. Instead it operates as a single normal server. You can still perform all the actions you would directly on the server in both packages, but only the Root Cloud Servers have access to the options mentioned above.

**Performance/resource-wise they are the same server.**


## 1&1 Root Cloud Servers and Cloud VPS: How to Increase the LVM Partition following a Cloud server Resize.
This is the process of increasing the LVM Partition to fill use up added disk space after a cloud server is reconfigured.

Overview:
Remove and Recreate physical LVM Partition(/dev/sda2)
Extend LVM Physical Volume(pvresize)
Extend LVM Logical Volume(lvresize)
Extend Filesystem into remaining space(xfs_growfs//resize2fs)

Centos 7:
In this example a cloud server L with Centos 7 was upgraded to an XXL(80GB of disk was added)

Step 0: Make a snapshot using the Cloud panel - ALWAYS. Click server -> Actions -> Create snapshot. 

Step 1: Delete/Recreate the LVM partition using fdisk
`~$ disk /dev/sda`
type "p" to list current partitions

Notice(and verify) that /dev/sda2 is your LVM partition and there`s no partitions behind it.

We will now delete and recreate the physical partition, the command are as follows:

Delete partition:
```
d
2
```
Create partition:
```
n
p
2
>enter
>enter
```

Change partition type to LVM:
```
t
2
8e
```

Save and quit: `*w`

The server can now be rebooted(or you can run `partprobe /dev/sda`) so that the new partition structure is used by the kernel.

Step 2: Resize LVM physical volume
Resize this with `pvresize /dev/sda2`

Verify it worked with `pvs`

Step 3: Resize LVM Logical volume
Because this is a single LVM volume for the entire filesystem you can safely allocate out all the space to it, not this VG changes based on OS:

`lvresize -l +100%FREE /dev/mapper/centos-root`

Step 4: Grow filesystem into remaining space
Check filesystem type with `mount`

Grow the filesystem using the appropriate command
`xfs_growfs /dev/mapper/centos-root`
or `resize2fs /dev/mapper/centos-root` if it`s ext file system.


-----


## 1&1 VPS: How to manage a 1&1 Virtuozzo/Parallels VPS using Parallels Power Panel:

Link to your VPS Power panel: https://YOUR_IP_ADDRESS_OR_DOMAIN:4643/vz/cp

Explanation of the Virtuozzo Power Panel:
http://help.1and1.com/servers-c37684/virtual-private-server-c63343/virtuozzo-power-panel-c63354/explanation-of-the-virtuozzo-power-panel-a686087.html

How to Log In to the Virtuozzo Power Panel:
http://help.1and1.com/servers-c37684/virtual-private-server-c63343/virtuozzo-power-panel-c63354/log-in-to-the-virtuozzo-power-panel-a686142.html

## VNC: For accessing rescue mode, we recommend VNC Viewer for Google Chrome or UltraVNC Viewer Portable:

https://chrome.google.com/webstore/detail/vnc%C2%AE-viewer-for-google-ch

http://www.uvnc.com/component/jdownloads/summary/5/97.html

Here is a video about it: https://www.youtube.com/watch?v=WY8if72eZHc                                                                    

## Managed Cloud Servers: How to mitigate 504 errors on the Managed Cloud Servers:

A feature of the Managed Cloud Panel that we are finding to be helpful with 504 issues: You can change the resources of your server between the web server and the database server. In the Cloud Panel click Servers then click your server in the main Panel. Then look below and you will see the change Resources button. Choose custom and change your allocation as you see fit. Note: This may restart the services on the server which takes a moment. 

Beyond this, it is not possible to change the Managed Server configuration, because they use a highly scaled customized system that has been designed by 1&1 for security and reliability. In this case you would want to hire an admin to manage your own server using root / Administrator access. 

## 1&1 Dedicated Root Server: Steps involved in a Hard Disk Swap:

In a datacenter, Hard disks are "consumables" and are changed out like tires on a car when they wear out. Your dedicated server is designed to have two "twins" or mirror drives. When one goes down, we:
- Have you backup your data just as a precaution: it is the only thing we cannot replace.
- File a ticket with the Datacenter to swap the bad disk with a good disk within 4 hours of the ticket creation.
- You and/or your admin rebuild your software raid, using instructions from the Help.1and1.com or technet.microsoft.com site. 

For Linux:
https://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/rescue-and-recovery-c37690/rebuild-a-software-raid-array-a730894.html

For Windows:
https://social.technet.microsoft.com/Forums/Lync/en-US/e22abc77-fb2a-49eb-bb30-e01c12ea2a4b/can-i-setup-a-software-raid-in-windows-server-2012-r2-using-virtual-hard-disks?forum=winservergen
(or google ```add raid mirror windows 2008``` or similar.)

- As a result, The existing drive mirrors itself to the new drive and then you are in sync again.

At this time we are on the first step. When you reply with the go-ahead and verification PIN, we will file the ticket to swap the bad disk out. 


## 1&1 Dedicated Root Server: 1&1 Professional Backup for Linux

Explanation of 1&1 Professional Backup

1&1 Professional Backup is offered as automated backup solution as an alternative to the FTP Server Backup Space also offered by 1&1.

https://help.1and1.com/servers-c37684/professional-backup-c85126/explanation-of-1and1-professional-backup-a792363.html

Install on linux:

https://help.1and1.com/servers-c37684/professional-backup-c85126/download-and-install-1and1-professional-backup-on-a-linux-system-a792347.html

Back up files and folders on linux:

https://help.1and1.com/servers-c37684/professional-backup-c85126/back-up-linux-files-and-folders-a792348.html

Manage the schedules on linux:

https://help.1and1.com/servers-c37684/professional-backup-c85126/manage-1and1-professional-backup-schedules-on-a-linux-system-a792349.html

## 1&1 Dedicated Root Server: 1&1 Professional Backup for Windows

Explanation of 1&1 Professional Backup

1&1 Professional Backup is offered as automated backup solution as an alternative to the FTP Server Backup Space also offered by 1&1.

https://help.1and1.com/servers-c37684/professional-backup-c85126/explanation-of-1and1-professional-backup-a792363.html

Download and Install 1&1 Professional Backup on a Windows System:

https://help.1and1.com/servers-c37684/professional-backup-c85126/download-and-install-1and1-professional-backup-on-a-windows-system-a792353.html

Manage 1&1 Professional Backup Selections on a Windows System:

https://help.1and1.com/servers-c37684/professional-backup-c85126/manage-1and1-professional-backup-selections-on-a-windows-system-a792358.html


# Web server admin - general FAQ

## How to reduce CPU load on a web server:

You can login to your server using SSH and see that the CPU resources are being loaded with php. This is because you are getting so much traffic that you are using all the resources of the server. You have a few options:

- Scan and be sure that malware or malicious processes are not using your server's resources.
- Move the sites that are getting the most traffic to their own servers.
- Optimize your PHP code so that the resources used per visitor is less. 
- Upgrade your managed server to a larger managed server. 

## Explanation of Self-signed certificate warning

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

## Other htaccess redirects:

301 (Permanent) Redirect: Point an entire site to a different URL on a permanent basis. This is the most common type of redirect and is useful in most situations. In this example, we are redirecting to the "mt-example.com" domain:

```
# This allows you to redirect your entire website to any other domain
Redirect 301 / http://mt-example.com/
```

302 (Temporary) Redirect: Point an entire site to a different temporary URL. This is useful for SEO purposes when you have a temporary landing page and plan to switch back to your main landing page at a later date:

```
# This allows you to redirect your entire website to any other domain
Redirect 302 / http://mt-example.com/

Redirect index.html to a specific subfolder:

# This allows you to redirect index.html to a specific subfolder
Redirect /index.html http://example.com/newdirectory/

Redirect an old file to a new file path:

# Redirect old file path to new file path
Redirect /olddirectory/oldfile.html http://example.com/newdirectory/newfile.html
Redirect to a specific index page:

# Provide Specific Index Page (Set the default handler)
DirectoryIndex index.html
```

## I have installed my SSL, and https:// URL brings up my site, but I am not getting the green padlock. Why not?

You have a mixed content error. You need to update your code to reflect https:// on all URLs.

To see evidence of this, you can right-click on your website and "View Source". Then Control-F to find, and search for "https://"

Please have your developer update your website code to use all secure links https instead of http, and the site will show the padlock.

*For more details about mixed content errors: https://wpengine.com/support/mixed-content-errors-no-green-padlock-page/*


# 1&1 GENERAL FAQ

## 1&1 SSL: How to use with External Domain and External Name Servers:

In order to use our certificates the domain must exist in the 1&1 Domain Center. If you want to use external nameservers, you have to go into Domain Center and set those nameservers to match what is shown on WHOIS. Then, you will have to create an email account at your mail host to do email-based domain validation. Create hostmaster@yourdomain.com email account so you can verify. Then you can setup the cert in 1&1 Manage SSL section. And use the email to confirm the certificate. And then it will let you download the key, cert and intermediate/ca cert files. 


## 1&1 How and why TXT/SPF is becoming more and more required for e-mail:

Many mail servers like Microsoft, Google, and AOL are starting to require DNS verification such as SPF and DKIM records in order to accept emails. This is done in an effort to fight SPAM. It places more responsibility on mail server admins to be compliant. 

Here is some more information that will help you increase the reputation of your mail server so your emails will be delivered:

TXT/SPF Records: Why are they needed?
http://help.1and1.com/domains-c36931/manage-domains-c79822/dns-c37586/explanation-of-an-spf-record-a792807.html

TXT/SPF Records: How to set up.
http://help.1and1.com/domains-c36931/manage-domains-c79822/dns-c37586/add-or-remove-txt-records-a792509.html

For more information how SPF records are built, see this 3rd party tool: http://spfwizard.net

## Examples of CNAME, TXT, DKIM, and Subdomain using 1&1 DNS:

https://help.1and1.com/domains-c36931/manage-domains-c79822/subdomains-c37588/create-a-subdomain-a594923.html

https://help.1and1.com/domains-c36931/manage-domains-c79822/dns-c37586/authenticate-domain-with-mailchimp-create-dns-records-for-dkim-and-spf-a793151.html

https://help.1and1.com/domains-c36931/manage-domains-c79822/dns-c37586/domain-and-e-mail-verification-with-google-apps-a792702.html
https://help.1and1.com/domains-c36931/manage-domains-c79822/dns-c37586/change-your-domain-s-ip-address-a-record-a599296.html


## 1&1 Mail: How to migrate domains and emails from one contract to another:

In 1&1, there are 2 kinds of domains: Domains that you register through 1&1, and Domains registered externally (elsewhere, at another registrar.) 

You can see domain registrar by using WHOIS. (Whois.com or who.is are examples of sites that look up WHOIS information.)

For 1&1 Domains, you transfer the domain from package to package using the My Domains -> the domain -> click the Actions Gear for more options -> Renewal & Transfer -> Transfer domain to another package. For External Domains (not registered at 1&1) you have to delete the X-domain from the old Contract, wait for deletion,  and Create it in the new contract.

1. For 1&1 Domains:

Move the domains from old package to new package (Mail will go down):
If you do not have as a target a hosting or server package, order a new contract / hosting package for email to go to.
http://help.1and1.com/domains-c36931/transfer-domains-c79823/within-1and1-c38670/transfer-a-domain-between-1and1-packages-within-the-same-account-a792490.html

1. For External Domains: 

Remove the X-domain from the old contract (Mail will go down.) https://help.1and1.com/account-and-billing-c65577/cancellation-c85201/remove-an-external-domain-from-a-package-a763809.html

Then Create the domain in the new contract. Select the contract you want at the top of the My Contracts Section to be sure. https://help.1and1.com/domains-c36931/transfer-domains-c79823/to-1and1-c37567/set-up-an-external-domain-with-1and1-a594802.html

2. Create the email accounts again in the new package (they will be empty)
http://help.1and1.com/e-mail-and-office-c37589/1and1-mail-basic-c37590/getting-started-c85087/create-an-e-mail-account-in-your-1and1-package-a616894.html

3. Migrate the mails from old to new mailboxes:
https://help.1and1.com/e-mail-and-office-c37589/1and1-mail-business-c85093/using-the-product-c85138/migrate-e-mail-from-another-account-to-a-1and1-e-mail-account-a792498.html

4. Create the subdomains again (they will be deleted during the transfer)
http://help.1and1.com/search/click/controller/search/url/domains-c36931%252Fmanage-domains-c79822%252Fsubdomains-c37588%252Fcreate-a-subdomain-a594923.html/rank/1/q/create%2Bsubdomain

5. Create the DNS again (it will be reset to defaults during the transfer) (set A record to new server IP address to host sites in that server)
http://help.1and1.com/search/click/controller/search/url/domains-c36931%252Fmanage-domains-c79822%252Fdns-c37586%252Fchange-your-domain-s-ip-address-a-record-a599296.html/rank/1/q/edit%2Bdns

6. Make sure everything functions in new package.
Send and receive email, view the websites.

7. Cancel the old package.
Call us or go to cancel.1and1.com.
http://help.1and1.com/search/click/controller/search/url/account-and-billing-c65577%252Faccount-details-c65578%252Fcancel-an-entire-package-a630738.html/rank/1/q/cancel%2Bpackage


# 1&1 WINDOWS SERVERS FAQ

## Windows Server: How to access your server using RDP (Remote Desktop)

https://help.1and1.com/servers-c37684/dedicated-server-windows-c39510/organization-via-control-panel-c39514/log-in-to-a-windows-server-via-remote-desktop-a749713.html

## Windows Server: RDP CALs

Our Windows Server license provides up to 2 concurrent RDP users at a time and unlimited web clients. 
 
If you need more RDP users to be connected at the same time, you would need them to provide RDP CALs (Remote Desktop Client Access Licenses.)

If you need more you must contact Microsoft, as we are not a license provider for those.

## Windows Server: How to install SSL in IIS using a PFX file: 

https://www.digicert.com/ssl-support/pfx-import-export-iis-7.htm

## Windows Server: How to redirect HTTP to HTTPS:

https://help.1and1.com/ssl-certificates-c85183/administration-c85185/ssl-certificate-managed-by-1and1-c85187/redirect-traffic-to-your-ssl-secured-site-a618201.html

## Windows Server: How to disable password expiration

To disable password expiration, follow these steps:

1. Click Start > Administrative Tools > Computer Management
2. Then expand Computer Management > System Tools > Local Users and Groups > Users.
3. Right click on root
4. Select Properties
5. Click on the checkbox for "Password never expires".


## 1&1 Dedicated Windows Server: How to configure your Software RAID 1 Mirror in Windows Server 2012:

https://blogs.technet.microsoft.com/tip_of_the_day/2014/10/10/tip-of-the-day-configuring-disk-mirroring-for-windows-server-2012/

## 1&1 Dedicated Windows Server: How to get the SMART data from the hard disks.

The output of the drive smart test is preferred.... We need at least the drive serial. If you don't want to reboot into rescue and run the smart tests, or have us do so, you can install the following free tool on windows. This is the quickest way to get the required information without disturbing running processes:

https://sourceforge.net/projects/smartmontools/?source=typ_redirect

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

http://help.1and1.com/servers-c37684/dedicated-server-windows-c39510/administration-c40119/turn-off-internet-explorer-enhanced-security-configuration-a696299.html

## Windows Server: RDP Connections:

Windows Server license provided with 1&1 Servers allows up to two (2) concurrent users to be logged into RDP at the same time.

If you need more than 2 concurrent RDP connections, you must purchase and install additional Client Access Licenses from Microsoft or a Microsoft reseller. We do not support any licenses not provided through 1&1. You would have to install and manage the licenses in your server using the support provided by the license vendor.

An attempt to add connections without licensing may cause issues with connecting to RDP due to Microsoft licensing.  

If you are having trouble getting in, you can temporarily override this by using mstsc /admin flag when running RDP client.

## Windows Server: How to mitigate SMBv1 Vulnerability in Windows Server 2003/2008 to help prevent WannaCry/malware infections:

Disable SMB v1 in Managed Environments with Group Policy
https://blogs.technet.microsoft.com/staysafe/2017/05/17/disable-smb-v1-in-managed-environments-with-ad-group-policy/

How to enable and disable SMBv1, SMBv2, and SMBv3 in Windows and Windows Server:
https://support.microsoft.com/en-us/help/2696547/how-to-enable-and-disable-smbv1,-smbv2,-and-smbv3-in-windows-vista,-windows-server-2008,-windows-7,-windows-server-2008-r2,-windows-8,-and-windows-server-2012

How to disable SMBv1 in Windows 10 and Windows Server:
https://www.saotn.org/disable-smbv1-windows-10-windows-server/

For more information:

The Deprecation of SMB1 – You should be planning to get rid of this old SMB dialect:
https://blogs.technet.microsoft.com/josebda/2015/04/21/the-deprecation-of-smb1-you-should-be-planning-to-get-rid-of-this-old-smb-dialect/
https://blogs.technet.microsoft.com/filecab/2016/09/16/stop-using-smb1/

## How to install OpenVPN on Windows Cloud Servers

Here are some 1&1 Cloud Community posts about configuring and using OpenVPN with 1&1 Cloud Servers running Windows Server OS:

https://www.1and1.com/cloud-community//learn/networking/vpn/installing-and-configuring-openvpn-windows/
https://www.1and1.com/digitalguide/server/configuration/
https://www.1and1.com/cloud-community//nc/tags/vpn/
https://www.1and1.com/cloud-community//nc/tags/networking/8/

## How to install ASP.NET 3.5 on Windows Server if you are getting a Sources error:

*** Please use the export or backup function in the regedit before making these changes. ***

First, we recommend a surgical approach:
https://msdn.microsoft.com/en-us/library/dd939844%28v=ws.10%29.aspx
rename: ```WUServer```  and ```WUStatusServer```
Change ```UseWUServer```  from ```1``` to ```0```

You can also remove the entire thing:
http://aaron-kelley.net/blog/2014/04/remove-wsus-client-settings-and-revert-to-using-the-default-microsoft-update-servers/
https://technet.microsoft.com/en-us/library/cc708545(v=ws.10).aspx

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


## Troubleshooting Remote Desktop Licensing Issues

Support for Microsoft CAL and RDP CAL licensing is provided by Microsoft. 1&1 is not able to provide support for this.

However, To help you get started with Remote Desktop Licensing (RD Licensing) or Terminal Services Licensing (TS Licensing), and to troubleshoot any problems you may be having, see the following guide to see if helps you resolve your issue:

https://technet.microsoft.com/en-us/library/hh553162(v=ws.10).aspx



# 1&1 LINUX SERVERS FAQ

## 1&1 Dedicated Server: How to configure your Software RAID 1 Mirror in Linux:

Rebuild Software RAID on Linux Dedicated Server:
http://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/rescue-and-recovery-c37690/rebuild-a-software-raid-array-a730894.html

Also, to help our customers be proactive about these types of problems, I would like to give you the following optional information on how to get notifications for hard disk problems, please note the information may differ for different OS / Setups:

Advanced: Running Smartmontools as a Daemon
Ubuntu / General: https://help.ubuntu.com/community/sourcetools
CentOS: https://securfox.wordpress.com/2009/08/14/monitoring-hard-disks-with-smart-oncentos/

Getting notifications from Linux Software RAID:
https://ioflood.com/blog/2015/04/21/setting-up-software-raid-mdadm-status-alert-emails-for-failed-drives-in-centos-ubuntu-and-debian/

## 1&1 Linux Servers: Welcome to LVM: Logical Volume Manager in Linux servers.

LVM is used so that you can assign storage easily on the go without partitioning.

Here is the information on how to expand your Logical Volumes from the physical storage in your Cloud Server.

The Why: 
http://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/administration-c37694/explanation-of-logical-volume-management-lvm-a756052.html

The How:
http://help.1and1.com/servers-c37684/dedicated-server-linux-c37687/administration-c37694/increase-the-size-of-the-logical-volume-a756168.html

If you need to partition:
http://help.1and1.com/servers-c37684/dynamic-cloud-server-linux-c73266/increase-the-physical-volume-size-of-a-linux-1and1-dynamic-cloud-server-a771780.html

## 1&1 Root Linux Servers: How to access your server's terminal using SSH:

https://help.1and1.com/hosting-c37630/webspace-and-access-c85098/ssh-c37775/explanation-of-ssh-secure-shell-access-a595889.html
https://help.1and1.com/hosting-c37630/webspace-and-access-c85098/ssh-c37775/establish-an-ssh-connection-from-a-pc-a595890.html

# PLESK FAQ 

Plesk is a Web Server Management Panel system that allows an administrator a web-based GUI to manage their server. This product is made by Plesk.com, a 1&1 software partner. 

Documentation and Help Portal for Plesk Onyx: https://docs.plesk.com/en-US/onyx/

## Scope of support

The administration and management of a root server is the responsibility of the customer. If the server is accessible via SSH and/or RDP, then hosting is being provided. We do know how to troubleshoot basic Plesk issues and are happy to take a quick look or provide guidance and documentation to help you.  However, admin work is not done by 1&1 or by Plesk. If there is a problem with Plesk, or an issue that cannot be resolved using standard techniques, a 1&1 agent may opt to create a ticket to Plesk to get their assistance for you. This does take time to complete. 

## Ports used by Plesk

Here is a list of the ports used by Plesk so you know what services run on what ports. Then you can open the required ports in your firewall:

https://docs.plesk.com/en-US/12.5/administrator-guide/plesk-administration/ports-used-by-plesk.64950/

### Ports Most commonly used:

* TCP 20-21: FTP
* TCP 22: SSH (Linux servers)
* TCP 25: Inbound Mail Servers
* TCP/UDP 53: DNS
* TCP 3389: RDP (Windows servers)
* TCP 2083: WHM/cPanel WHM (Root) Interface
* TCP 2087: WHM/cPanel cPanel (Customer-facing) Interface
* TCP 8443: Plesk Interface
* TCP 8447: Plesk Update/Upgrades


## Plesk Migration

You can use Plesk Migration tools to move Plesk from one server to another including databases, configurations, mailboxes and webspaces.

Plesk Migration Guide:

https://support.plesk.com/hc/en-us/articles/213912645-Plesk-Migration-and-Transfer-Guide

## Troubleshooting Plesk and Reading Log files

To troubleshoot plesk issues, you would look at the logs for the service that has the problem. For example, if you have a problem with the mail server or sending mail, you would check the mail logs. There are ways to do this using Plesk's web UI as well as using the terminal. 

Viewing Log files in Plesk: https://docs.plesk.com/en-US/onyx/customer-guide/customer-account-administration/viewing-statistics/log-files.65210/

Location of Plesk services log files: https://support.plesk.com/hc/en-us/articles/213403509-Plesk-for-Linux-services-logs-and-configuration-files-

Specifically for Plesk Mail servers, you would want to look at /var/log/maillog. You can use the 'less' command to view the text file, or other common methods. 

## Plesk with 1&1 SSL: How to issue, download, and install a root SSL from 1&1 in Plesk:

Step 1: Setup the SSL in 1&1 Manage SSL section.
https://help.1and1.com/ssl-certificates-c85183/administration-c85185/ssl-certificate-managed-by-you-c85188/ssl-certificate-setup-process-using-activation-e-mail-a792728.html

Step 2: Download the 3 files that make up the SSL Cert (the key, the cert, and the Intermediate/CA cert).
https://help.1and1.com/ssl-certificates-c85183/administration-c85185/ssl-certificate-managed-by-you-c85188/download-the-dedicated-ssl-certificate-a627737.html

Step 3: Then, once you have the 3 files, you can install the SSL. Here are some examples:

* https://help.1and1.com/ssl-certificates-c85183/administration-c85185/ssl-certificate-managed-by-you-c85188/install-an-ssl-certificate-managed-by-you-a792810.html

* https://docs.plesk.com/en-US/onyx/administrator-guide/plesk-administration/securing-plesk/securing-plesk-and-the-mail-server-with-ssltls-certificates.59466/

* Videos: https://www.youtube.com/watch?v=Oq6-YViDzoc   and https://youtube.com/watch?v=8z8h8CRQ-Yg

* https://support.plesk.com/hc/en-us/articles/213946825-How-to-install-SSL-certificate-for-a-domain-in-Plesk

* NOTE: I usually just put the name of the certificate  as "domain   timestamp"   e.g.     "example.com 20170727"  but you can name it what you like. THEN, simply go down to the "3 Choose file Buttons".

* Upload those 3 files you got from "Manage SSL" to these 3 buttons:  key is the key, cert is the cert, and  INTERMEDIATE is the same as a CA cert. Then click "Upload" just below there. Then proceed to the Hosting settings and select that SSL from the drop down.

## Plesk: Configuring Backups

Here is the Plesk guide for their Backup Manager. Plesk can automate your backups and ship them out of the server. It is very important to ship the backups outside of the server and/or download them yourself. Always have a backup.

https://docs.plesk.com/en-US/onyx/administrator-guide/backing-up-and-restoration.59256/

You can also back up individual accounts and sites for your users:

https://docs.plesk.com/en-US/onyx/administrator-guide/backing-up-and-restoration/backing-up-individual-accounts-and-sites.59267/

And you can provide them instructions for restoring the backups:

https://docs.plesk.com/en-US/onyx/customer-guide/advanced-backing-up-and-recovering-websites/restoring-backups.65200/

## Plesk: Configuring Plesk for FTP access: 

Try changing the configuration according to these articles: 

https://support.plesk.com/hc/en-us/articles/213936605-Cannot-connect-to-Plesk-FTP-storage-via-FileZilla-3-10-ETIMEDOUT-Connection-attempt-timed-out

https://support.plesk.com/hc/en-us/articles/213391389-It-is-not-possible-to-establish-FTP-connection-using-FileZilla-ENETUNREACH-Network-unreachable

https://support.plesk.com/hc/en-us/articles/115001903793-Cannot-connect-via-FTP-ETIMEDOUT-Connection-attempt-timed-out

Please also double-check that ports for FTP and/or active and passive port ranges are available through your firewall.

To test a port being open: `telnet example.myserver.com 21`

## Plesk: Configuring Plesk as a Mail Server:

Running your own mail server requires more configuration of server and DNS.

Here is the information on configuring Plesk for email:
https://docs.plesk.com/en-US/onyx/administrator-guide/mail/configuring-serverwide-mail-settings.59430/

You may also want to see "Securing your Mail server" here:
https://docs.plesk.com/en-US/onyx/video-tutorials/

You will also want to make sure your server has a Fully Qualified Domain Name (such as mail.mydomain.com) and that the Reverse DNS for the IP address matches that domain/subdomain/FQDN's A record. 

You will also want to make sure you have the mail ports opened in your OS firewall and/or 1&1 Hardware or Cloud firewall.

Then, it is also recommended to create TXT SPF records for each domain that includes your server's IP address. This will let other mail servers know that your server is allowed to send mail for those domains.

## Troubleshooting Email sending issues:

Here are some good lists of the SMTP Error codes that are returned from mail servers. You would see these errors either in a "Mail Undeliverable" bounceback email, or in the server's mail log (example: /var/log/maillog on many linux servers):

http://support.mailhostbox.com/email-administrators-guide-error-codes/   
http://www.iana.org/assignments/smtp-enhanced-status-codes/smtp-enhanced-status-codes.xhtml


## Plesk: How to Manually install a Plesk License key in your root server

The username and passwords do not work. However, I was able to obtain the key from the admins. You can Install it using Plesk -> Tools & Settings -> License Management or by using the command line. Here are guides for both methods.

https://docs.plesk.com/en-US/12.5/deployment-guide/installing-plesk/after-installing-plesk/install-a-license-key.70287/
https://kb.plesk.com/en/121484


## Plesk: How to upgrade system packages the correct way on Plesk for Linux

Since Plesk manages all of the software on your server, you should go through Plesk whenever you make changes to your server.

Here is the guide:
https://docs.plesk.com/en-US/onyx/administrator-guide/server-administration/system-updates-plesk-for-linux-only.75822/

## Plesk: How to upgrade MySQL/MariaDB on Linux

This can be tricky.

> WARNING: This is NOT a Plesk-supported upgrade. 

Please take a backup of all databases and website files before you begin. Then, read the article entirely before you make any changes to your system:

https://support.plesk.com/hc/en-us/articles/213403429-How-to-upgrade-MySQL-MariaDB-on-Linux

Here is an article for going from 5.5 to 5.6-5.7 on Plesk for Linux:

https://support.plesk.com/hc/en-us/articles/213403429-How-to-upgrade-MySQL-5-5-to-5-6-5-7-on-Linux

## Plesk: Checking and repairing databases in Plesk:

Check and repair and optimize your database tables.

Using Plesk Web UI: https://docs.plesk.com/en-US/12.5/administrator-guide/website-management/website-databases/checking-and-repairing-databases.74498/

Using the Plesk repair command: https://docs.plesk.com/en-US/12.5/administrator-guide/plesk-administration/plesk-repair-utility/plesk-repair-utility-mysql.74671/

Using mysql command line: https://dev.mysql.com/doc/refman/5.7/en/rebuilding-tables.html

# WHM/CPANEL FAQ 

## How does 1&1 offer WHM/cPanel on our servers?

* WHM/cPanel is its own management panel available on Cloud VPS and Cloud Servers.

* You can choose to re-image the server using Centos7 with WHM/cPanel for an extra $15/month. This installs basically 2 panels: WHM (the root/administrator/server configs) and cPanel (The webspaces configs). (Plesk, by contrast, has everything in one panel.)  

Many hosts such as inmotion, rackspace, godaddy offer server VPS where the WHM is managed by the hosting company, and the customer only uses cPanel (the customer webspace interface) to manage their server. 

With 1&1 WHM cPanel, You have to configure the entire WHM server using the WHM (root/admin) interface as well as the cPanel (webspace/customer-facing) interface.

For our managed/shared packages, we have a custom panel instead of cPanel called 1&1 Control Panel. That is used instead (to set up emails, domains, etc.)

Q: Can you put that on Virtual Server Cloud M plan?

A: Yes, but a VPS M has only 1 GB of ram. WHM would use most of that overhead. Recommend a L or better if they want a panel like WHM or Plesk.

## WHM: How to do the initial configuration for WHM/cPanel on 1&1 cloud Servers:

Here are the official guides from cPanel:

cPanel Documentation: https://documentation.cpanel.net/
WHM Documentation: https://documentation.cpanel.net/display/66Docs/WebHost+Manager+-+WHM+User+Documentation
Youtube Videos: https://www.youtube.com/user/cpaneltv

As for the DNS Resolvers: 

For simplicity, you can use Google DNS Resolvers, OpenDNS or FreeNOM DNS.

Example: `8.8.8.8` and `8.8.4.4` are Google's Public DNS Servers.

If you want to use 1&1 Resolvers, these depend on your DHCP lease. To find out what resolvers to use, you would have to use SSH to access the server's terminal and get the gateway IP from the DHCP lease using the command  `ifconfig`.

The DNS Resolvers usually follow the format 10.255.255.x.

## WHM: Nameserver configuration on cPanel servers:

This guide shows how to run your own DNS server within WHM.

https://forums.cpanel.net/threads/tutorial-nameserver-configuration-on-cpanel-servers.404841/

## WHM: Manage your PHP versions and extensions using EasyApache:

https://documentation.cpanel.net/display/68Docs/PHP+Extensions+and+Applications+Package
https://documentation.cpanel.net/display/EA4/How+to+Locate+and+Install+a+PHP+Version+or+Extension

https://www.youtube.com/watch?v=NDEHX9Q5UYI

## WHM: How to install Wordpress on cPanel:

https://documentation.cpanel.net/display/CKB/How+to+Install+WordPress+With+cPanel

# Wordpress FAQ

## What is Wordpress? 

Wordpress is a CMS. It is made of files and a database and it is all loaded by index.php in the webroot. The wp-config.php file in the webroot is how the website code knows how to load the database. 

Wordpress.com is a Wordpress Multisite. You can sign up and have your own yourawesomesite.wordpress.com site with some limited features. 

Wordpress.org is the one you want. This is the open-source CMS community. It has all wordpress documentation called the Wordpress Codex. 

http://wpbeginner.com is a fantastic resource with helpful guides.


## What is Wordpress Multi-Site?

Multisite is a WordPress feature which allows users to create a network of sites on a single WordPress installation. 

For more details and how to use it: http://www.wpbeginner.com/glossary/multisite/

## How to increase WP memory limit for PHP:

Increasing WP Memory Limit using .htaccess and/or php.ini:
https://docs.woocommerce.com/document/increasing-the-wordpress-memory-limit/


# Bitnami.com Cloud Applications FAQ

How to use phpmyadmin with Bitnami Apps?

https://docs.bitnami.com/virtual-machine/components/phpmyadmin/ 


----------------------------------------------------

# SUPPORT WRAPPERS AND MACROS

TOP SITES GETTING TRAFFIC: sites getting traffic on a server. run this in /var/log:

```bash
zcat access.log* |awk '{print $11,$7}' | cut -d'?' -f1 | sort -T /kunden/homepages/backup/|uniq -c|sort -r -n -k 1 -T /kunden/homepages/backup/|head -n 15
```

Get password for Plesk v10-12: from root terminal:

```bash
/usr/local/psa/bin/admin --show-password
```
Get password for Plesk Onyx from root terminal:
```bash
/usr/local/psa/bin/admin --get-login-link
```

Fix Broken network route on Windows Dedicated Server:
```
netsh interface ip set address "Local Area Connection" dhcp 
```

Fix ```net_ratelimit: 37 callbacks suppressed``` while in rescue
```bash
sysctl -w net.core.message_cost=0
```

List largest installed package deb/ubuntuAh, 

```bash
dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -n
```

Add Default Routes to Linux servers:

```bash
route add -net 10.255.255.1 netmask 255.255.255.255 dev eth0 
route add default gw 10.255.255.1 
```

Test the outbound smtp server running on the local machine:

```bash
echo "Subject: test" | /usr/sbin/sendmail -v test@example.com
```

Add this to your ~/.ssh/config to auto-accept all host keys for ssh out:

```
Host *
    StrictHostKeyChecking no
```

----------------------------------------------------------------------------

## Hard Disk Testing and Recovery

View Software Raid on Linux Dedicated Servers:
```bash
cat /proc/mdstat
```

Test Hard Disks on Linux Dedicated Servers:
```bash
smartctl -t short /dev/sda && smartctl -t short /dev/sdb
```

> Wait about 3 minutes....

```bash
smartctl -a /dev/sda && smartctl -a /dev/sdb
```

Fix grub bootloader on Linux server using rescue chroot method:
```bash
fdisk -l
cd /mnt
mount /dev/sda1 /mnt
mount -t proc none proc
mount -o bind /dev dev
mount -t sysfs sys sys
chroot /mnt /bin/bash
update-grub
## If using EFI: need to do this: mount /dev/sda1 /boot/efi
/usr/sbin/grub-install --recheck --no-floppy /dev/sda
sync & reboot
```

Mount partitions from Linux Dedi in Linux rescue:

```bash
mount /dev/md1 /mnt
cd /mnt
mount /dev/mapper/vg00-usr usr
mount /dev/mapper/vg00-var var
mount /dev/mapper/vg00-home home
```
Mount partitions from Windows Dedi in Linux rescue:

```bash
cd /mnt
mkdir -p c1 && mount -t ntfs-3g -o ro /dev/sda1 c1
mkdir -p d1 && mount -t ntfs-3g -o ro /dev/sda2 d1
mkdir -p c2 && mount -t ntfs-3g -o ro /dev/sdb1 c2
mkdir -p d2 && mount -t ntfs-3g -o ro /dev/sdb2 d2
mkdir -p sda3 && mount -t ntfs-3g -o ro /dev/sda3 sda3
mkdir -p sdb3 && mount -t ntfs-3g -o ro /dev/sdb3 sdb3
```

Mount partitions from ARECA Hardware raid in Linux rescue:

```bash
cd /mnt
mkdir sda1 && mount /dev/sda1 sda1
mount /dev/mapper/vg00-home sda1/home
mount /dev/mapper/vg00-var sda1/var
mount /dev/mapper/vg00-usr sda1/usr
```

Fix Journal issues on Linux Dedicated Servers:

```bash
tune2fs -O ^has_journal /dev/mapper/vg00-var
e2fsck -f /dev/mapper/vg00-var
resize2fs /dev/mapper/vg00-var
e2fsck -f /dev/mapper/vg00-var
tune2fs -O +has_journal /dev/mapper/vg00-var
```

Software RAID on Linux: Command cheat sheet:

```
mdadm --detail
mdadm --detail --scan --verbose > /etc/mdadm.conf 
mdadm --fail
mdadm --add /dev/md1 /dev/sda1 /dev/sdb1
```


Mount lvm inside Knoppix rescue on a centos cloud server:

`vgchange -ay centos`


# 	 	Market Contact Information
Note: In the US we support all US/CA/WW contracts

United States
Support Number: 1-866-991-2631
Support Email: support@1and1.com

Austria
Support Number: 01 267 6037

Germany
Support Number: 0721/9600

France
Support Number: 0970 808 911
Support Email: support@1and1.fr

Canada
Support Number: 1-844-296-2059
Support Email: support@1and1.com

United Kingdom
Support Number: 0333 336 5691
Support Email: support@1and1.co.uk

Italy
Support Number: 02-218 026 81
Support Email: supporto@1and1.it

Mexico
Support Number: 01 800 123 8394
Support Email: soporte@1and1.mx

Spain
Support Number: 91 136 0000
Support Email: soporte@1and1.es

# 1&1 Nameservers 

Note: Order counts.

US/WW:
- ns-us.1and1-dns.com
- ns-us.1and1-dns.us
- ns-us.1and1-dns.de
- ns-us.1and1-dns.org

CA:
- NS1: ns-ca.1and1-dns.com
- NS2: ns-ca.1and1-dns.biz
- NS3: ns-ca.1and1-dns.ca
- NS4: ns-ca.1and1-dns.org
