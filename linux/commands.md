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

FIX Broken network on WINDEDI:
`netsh interface ip set address "Local Area Connection" dhcp`

FIX net_ratelimit: 37 callbacks suppressed in rescue
`sysctl -w net.core.message_cost=0`

#####################################
# Hard Disk Testing and Mounting/Recovery
#####################################

View Software RAID status:
```bash
cat /proc/mdstat
```

TEST THE DISKS: 
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

# How to mount the disk partitions for a Windows Dedi in linux rescue:

```bash
cd /mnt
mkdir -p c1 && mount -t ntfs-3g -o ro /dev/sda1 c1
mkdir -p d1 && mount -t ntfs-3g -o ro /dev/sda2 d1
mkdir -p c2 && mount -t ntfs-3g -o ro /dev/sdb1 c2
mkdir -p d2 && mount -t ntfs-3g -o ro /dev/sdb2 d2
```

# ARECA RAID Mounting in rescue

```bash
cd /mnt
mkdir sda1 && mount /dev/sda1 sda1
mount /dev/mapper/vg00-home sda1/home
mount /dev/mapper/vg00-var sda1/var
mount /dev/mapper/vg00-usr sda1/usr
```

How to CHROOT into a box [from rescue] and repair the GRUB bootloader:

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

How to CHROOT into a box [from rescue] and mount the data [for password reset or mysql dumps]:
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

#############################################################
# Unpack zip/rar files in deep dir structure
#############################################################
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

#############################################################
# bash script to create playlist files in music subdirectories
#############################################################
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