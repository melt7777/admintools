# Github FAQ

Git Password Cache:

`git config --global credential.helper cache`

Making a Fork:
https://help.github.com/articles/configuring-a-remote-for-a-fork

Pushing a Branch:
https://help.github.com/articles/pushing-to-a-remote#pushing-a-branch

```
git remote set-url upstream  <THEIR_REMOTE_URL> 
git fetch upstream branch
# Grab the upstream remote's branches
```


# Download files from a web server using wget
```
#!/bin/bash
DLURL="http://path/to/files"
FW="amdgpu-pro-fw.tgz"
KHEAD="linux-headers-4.13.0-xmos+_1_amd64.deb"
KIMG="linux-image-4.13.0-xmos+_1_amd64.deb"
mkdir -p /usr/src/updates
wget $DLURL/$FW -O /usr/src/updates/$FW
wget $DLURL/$KHEAD -O /usr/src/updates/$KHEAD
wget $DLURL/$KIMG -O /usr/src/updates/$KIMG
```


# Plesk Troubleshooting


Get the Plesk Admin password from root SSH:

Plesk 11/12.x: `/usr/local/psa/bin/admin --show-password`

Plesk Onyx: `/usr/local/psa/bin/admin --get-login-link`

Stop the "net_ratelimit: 37 callbacks suppressed in rescue" messages
`sysctl -w net.core.message_cost=0`



# Hard Disk Testing and Mounting/Recovery

## How to view Software RAID status:

```bash
cat /proc/mdstat
```

## How to SMART Test disks:


```bash
smartctl -t short /dev/sda && smartctl -t short /dev/sdb
Wait about 3 minutes....
smartctl -a /dev/sda && smartctl -a /dev/sdb
```
Run the tests:
```bash
smartctl -t short /dev/sda && smartctl -t short /dev/sdb
```
Wait 2 minutes then view:

```bash
smartctl -a /dev/sda
smartctl -a /dev/sdb
```
Mount the data:

```bash
mkdir sda1 && mount /dev/sda1 sda1
mkdir sda2 && mount /dev/sda2 sda2
mkdir sda3 && mount /dev/sda3 sda3
mkdir sdb1 && mount /dev/sdb1 sdb1
mkdir sdb2 && mount /dev/sdb2 sdb2
mkdir sdb3 && mount /dev/sdb3 sdb3
mkdir sdb4 && mount /dev/sdb4 sdb4
mkdir sdb5 && mount /dev/sdb5 sdb5
mkdir sdb6 && mount /dev/sdb6 sdb6
mkdir sdb7 && mount /dev/sdb7 sdb7
```

## How to mount the disk partitions for a Windows Dedi in linux rescue:

```bash
cd /mnt
mkdir -p c1 && mount -t ntfs-3g -o ro /dev/sda1 c1
mkdir -p d1 && mount -t ntfs-3g -o ro /dev/sda2 d1
mkdir -p c2 && mount -t ntfs-3g -o ro /dev/sdb1 c2
mkdir -p d2 && mount -t ntfs-3g -o ro /dev/sdb2 d2
```

## ARECA RAID Mounting in rescue

```bash
cd /mnt
mkdir sda1 && mount /dev/sda1 sda1
mount /dev/mapper/vg00-home sda1/home
mount /dev/mapper/vg00-var sda1/var
mount /dev/mapper/vg00-usr sda1/usr
```

## How to CHROOT into a box [from rescue] and repair the GRUB bootloader:

```bash
fdisk -l
mount /dev/sda1 /mnt/
mount -t proc none /mnt/proc
mount -o bind /dev /mnt/dev
mount -t sysfs sys /mnt/sys
chroot /mnt/ /bin/bash
update-grub
/usr/sbin/grub-install --recheck --no-floppy /dev/sda
sync & reboot
```

## How to CHROOT into a box [from rescue] and mount the data [for password reset or mysql dumps]:

```bash
mount /dev/md1 /mnt
cd /mnt
mount -t proc none proc/
mount -o bind /dev dev/
mount -o bind /sys sys/
mount /dev/mapper/vg00-usr usr/
mount dev/mapper/vg00-var var/
mount /dev/mapper/vg00-home home/
chroot /mnt
```

## bash scripts/commands to unpack zip/rar files recursively

Have you ever had zip or rar files buried deep into a directory structure that you need to unpack? Instead of swearing and shaking your fist at the problem, try out this simple solution.

### Using Linux:

to unrar all .rar in current linux directory:

One or both of these should work:
```
find . -name "*.rar" -exec unrar x -o+ {} \;
```
OR 
```
find . -type d -exec sh -c '(cd {} && unrar e -r -o- *.rar)' ';'
```
Ok, now we have unpacked the zip and/or rar files, but they are all unpacked deep into the directory structure. How to gather, for example, all the mkv video files all into the current directory? 

```
find . -name '*.mkv' -exec mv {} . \;
```

### Another unrar script: 

```bash
#!/bin/bash
# unrarall
# Usage: cd to parent-dir and invoke command
function unrarall() {
    local MYDIR=""
    local MYFILE=""
    local CWD=$(pwd)

    find . -iname '*.rar' | while read FILE
    do
        MYDIR=$(dirname "$FILE")
        MYFILE=$(basename "$FILE")

        # Only unrar part01.rar or .rar
        echo $MYFILE | grep -q 'part[0-9]*.rar$' 2>&1 > /dev/null
        if [ "$?" == "0" ]; then
                echo $MYFILE | grep -q 'part01.rar$' 2>&1 > /dev/null
                if [ "$?" == "1" ]; then
                        continue
                fi
        fi

            cd "$MYDIR"
            echo "Unrar $MYFILE"
            unrar x -o+ "$MYFILE"
            cd "$CWD"
    done
}
```


## bash script to create playlist files in music subdirectories

```
#!/bin/bash
#


find . -type d |
while read subdir
do
 rm -f *.m3u

  for filename in "$subdir"/*.mp3
  do
        echo "${filename##*/}" >> ./"$subdir"/"${subdir##*/}.m3u"
  done

done
```

# Commands for detecting an attack or for estimating traffic to a domain

We shouldn't have to be doing this for customers since, as we all know, security of a rootserver is the customer's responsibility, however, if you suspect a customer may be getting DDoS'ed you can use this information to investigate or verify the legitimacy. The commands can also be altered a little if you suspect the customer's traffic may be more than the server can handle.

So. What do we work with? We can do some analysis based on the Apache access log data. Assuming you have a standard Apache access log, or the website is hosted with Plesk. Let's now get the total number of requests per day:

## Get number of requests per day: 
 
```bash
awk '{print $4}' access.log | cut -d: -f1 | uniq -c
```

This will display you a list the total number of HTTP requests per day. See if you have any unusual increses comparing to other days. Now see the total number of requests per hour for a specific date (April 25th in this example):

## Get number of requests per hour: 

```bash
grep "25/Apr" access.log | cut -d[ -f2 | cut -d] -f1 | awk -F: '{print $2":00"}' | sort -n | uniq -c
```
See when was the peak of requests to determine the time of attack. You can also get number of requests per minute (replace XX with the hour in hh format ):

## Get number of requests per minute: 

```bash 
grep "25/Apr/2014:XX" access.log | cut -d[ -f2 | cut -d] -f1 | awk -F: '{print $2":"$3}' | sort -nk1 -nk2 | uniq -c | awk '{ if ($1 > 10) print $0}'
```

Finally, let's try to determine the source of attack grabbing the list of IPs with number of requests from them:

## Get list of IPs: 

```bash  
awk '{!a[$1]++}END{for(i in a) if ( a[i] >10 ) print a[i],i }' access.log
```

List could be pretty long, so you might need to redirect the output to a file:

## Get list of IPs to a file 
 
```bash 
awk '{!a[$1]++}END{for(i in a) if ( a[i] >10 ) print a[i],i }' access.log > list_of_ips.txt
```

Now, when you have the list of unique IP addresses and number of requests from them, you can see the most "active" IP(s) that are sending requests the most. Make sure that this IP address does not belong to a search engine bot such as Google or Bing. You can do it by using one of those IP lookup services such as ip-lookup.net.

If you are dealing with a minor DoS (denial-of-service) when someone is just scraping the website or trying to scan it, then you can simply block the IP using .htaccess file:

```bash
order deny,allow 
deny from XXX.XXX.XXX.XXX
```

Or you can obviously firewall the IP(s).

Keep in mind that these are just a few pretty basic commands that would give you an idea about HTTP requests that the server has gotten.

## To copy a disk to a smaller disk (example: copy /dev/sda to a smaller disk /dev/sdb):

```bash
apt -y install pv
pv -tpreb /dev/sda | dd of=/dev/sdb bs=4K conv=notrunc,noerror,sync
```
### test openvpn server?

`echo -e "\x38\x01\x00\x00\x00\x00\x00\x00\x00" | timeout 10 nc -u 192.168.1.4 19999 | cat -v`


## backup/restore plex data in a freebsd jail 

### backup-plex.sh

```bash
#!/bin/sh
#takes a compressed backup of the plexdata directory via having tar run the dir
tar -cvjf /mnt/volume/jails/backups/plexdataBKUP.tar.bz2 /mnt/clip/jails/plexmediaserver_2/usr/pbi/plexmediaserver-amd64

### restore-plex.sh

`tar -xjvf /mnt/clip/jails/backups/plexdataBKUP.tar.bz2 /mnt/clip/jails/plexmediaserver_2/usr/pbi/plexmediaserver-amd64/`