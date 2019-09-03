# Instructions:

## Installing media server tools and pi-hole on linux mint / ubuntu

First, update system, and then install packages and deps.
This is for Deluge, Sonarr, Couchpotato, Tautulli. Plex runs on another server. Pi-hole runs in its own VM.

### Deluge

```
sudo apt update; sudo apt upgrade -y
sync
reboot
sudo apt install deluged deluge-console deluge-webui
sudo su -
nano 
sudo nano /etc/passwd # change debian-deluged's shell to /bin/bash
sudo su debian-deluged -

# run as debian-deluged:
deluged
deluge-console
# in the console, it's like an irc client. enter this command: 

config -s allow_remote true

# we will configure the rest later. enter this command:

quit

sudo nano /var/lib/deluged/.config/deluge/auth
# add username:password:10

# go back to root/sudoer user
exit

# (copy in the service files for deluged and sonarr - from this repo) 
git clone https://github.com/melt7777/admintools
cp admintools/linux/mediaserver/*.service /etc/systemd/system
systemctl daemon-reload

sudo systemctl start deluged

sudo su debian-deluged -
# as debian-deluged user:

# load webui on 8112 to configure the server with (to turn on 58846)
deluge-web --fork  

# point a brower at this box's ip:8112
# default pass is **deluge** , change it when it prompts you to
# connect it to your deluged server using connect button
# in preferences, click Daemon tab, click Allow Remote connections

```

### Sonarr 
```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xA236C58F409091A18ACA53CBEBFF6B99D9B78493
echo "deb http://apt.sonarr.tv/ master main" | sudo tee /etc/apt/sources.list.d/sonarr.list
sudo apt update
sudo apt install nzbdrone
sudo adduser sonarr
sudo su sonarr -
sudo systemctl enable sonarr.service
sudo systemctl start sonarr.service
# or manual run: screen -d -m -S sonarr mono --debug /opt/NzbDrone/NzbDrone.exe
```

### Tautulli (PlexPy)

Note: Plex Server is already installed and running on another host. 
```
sudo addgroup tautulli && sudo adduser --system --no-create-home tautulli --ingroup tautulli
sudo apt-get install python python-setuptools tzdata
cd /opt
sudo git clone https://github.com/Tautulli/Tautulli.git
sudo mkdir /opt/Tautulli/mydata
sudo chown tautulli:tautulli -R /opt/Tautulli
cd Tautulli
# nano /etc/passwd and change tautulli's shell to /bin/bash
sudo su tautulli python Tautulli.py
# copy in the /etc/systemd/system/tautulli.service file
systemctl enable tautulli
systemctl start tautulli
```

### Pi-hole

`curl -sSL https://install.pi-hole.net | bash`

### Jackett

#### To install Jackett as a service

From instructions: https://github.com/Jackett/Jackett

```
# become root.

cd /opt

# Download and extract the latest Jackett.Binaries.LinuxAMDx64.tar.gz release from the releases page and run Jackett with the command `./jackett`

wget https://github.com/Jackett/Jackett/releases/download/v0.11.473/Jackett.Binaries.LinuxAMDx64.tar.gz
tar xvf Jackett.Binaries.LinuxAMDx64.tar.gz
cd Jackett
sudo ./install_service_systemd.sh

You need root permissions to install the service. The service will start on each logon. You can always stop it by running `systemctl stop jackett.service` from Terminal. You can start it again it using `systemctl start jackett.service`. Logs are stored as usual under ~/.config/Jackett/log.txt and also in `journalctl -u jackett.service`.
```

#### Adding a Jackett indexer in Sonarr or Radarr

- Go to Settings > Indexers > Add > Torznab > Custom.
- Click on the indexers corresponding  button and paste it into the Sonarr/Radarr URL field.
- For the API key use (redacted).
- Configure the correct category IDs via the (Anime) Categories options. See the Jackett indexer configuration for a list of supported categories.
- Adding a Jackett indexer in CouchPotato
- Go to Settings > Searchers.
- Enable TorrentPotato.
- Click on the indexers corresponding  button and paste it into the CouchPotato host field.
- For the Passkey use (redacted). Leave the username field blank.

#### Jackett auto-update 

otherwise it just dies every few days.

Add to crontab:

```
0 1 * * * root /root/upjackett.sh
```

/root/upjackett.sh:

```bash
#!/bin/bash
# update Jackett.


cd /opt
rm -rf Jackett.old
mv Jackett Jackett.old
curl -s https://api.github.com/repos/Jackett/Jackett/releases/latest \
| grep "Jackett.Binaries.LinuxAMDx64.tar.gz" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
tar xvf Jackett.Binaries.LinuxAMDx64.tar.gz
chown -R sonarr:sonarr Jackett
systemctl start jackett
systemctl restart sonarr
```



#### Couch Potato

installation guide: https://vitux.com/how-to-install-couchpotato-on-ubuntu/

```
# become root 
cd /opt
mkdir couchpotato
cd couchpotato/
git clone https://github.com/RuudBurger/CouchPotatoServer.git
cd CouchPotatoServer/
mv * ..
cd ..
rm -r CouchPotatoServer/
cp init/ubuntu /etc/init.d/couchpotato
chmod +x /etc/init.d/couchpotato
nano /etc/default/couchpotato

# paste in: 
 CP_USER=sonarr
 CP_HOME=/opt/couchpotato
 CP_DATA=/home/sonarr/couchpotato

update-rc.d couchpotato defaults
service couchpotato start
```

#### Lidarr

install mono by guide https://www.mono-project.com/download/stable/#download-lin

```
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-devel
```

install lidarr by guide https://github.com/lidarr/Lidarr/wiki/Installation

```
cd /opt
wget https://github.com/lidarr/Lidarr/releases/download/v0.6.2.883/Lidarr.develop.0.6.2.883.linux.tar.gz
sudo tar -xzvf Lidarr.develop.0.6.2.883.linux.tar.gz
useradd -s /bin/false -d /var/lib/lidarr/ -r -m -U lidarr
chown -R lidarr:lidarr   /opt/Lidarr
chmod -R a=,a+X,u+rw,g+r /opt/Lidarr
```

Create the file /etc/systemd/system/lidarr.service with the content:

```
[Unit]
Description=Lidarr Daemon
After=network.target

[Service]
User=lidarr
Group=lidarr
Type=simple
ExecStart=/usr/bin/mono /opt/Lidarr/Lidarr.exe -nobrowser
TimeoutStopSec=20
KillMode=process
Restart=on-failure
[Install]
WantedBy=multi-user.target
```

enable the service and start. 
```
systemctl enable lidarr.service
systemctl start lidarr.service
systemctl status lidarr.service
```

Lidarr should be available on port 8686

#### Accessing these apps

the above installation using default ports would result in the following. 

In the example, the host is 10.0.0.108. Yours will be different. 

- deluged on 58846
- jackett http://10.0.0.108:9117/UI/Dashboard 
- tautulli http://10.0.0.108:8181/home#
- cpotato http://10.0.0.108:5050/
- sonarr http://10.0.0.108:8989

