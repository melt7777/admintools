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
sudo su debian-deluged deluged

sudo su debian-deluged deluge-web --fork
# login webui ip:8112 and change the webui password, and then connect it to your deluged server using deluged username:password and the deluged ip:58846
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

#### Accessing these apps

the above installation using default ports would result in the following. 

In the example, the host is 10.0.0.108. Yours will be different. 

- deluged on 58846
- jackett http://10.0.0.108:9117/UI/Dashboard 
- tautulli http://10.0.0.108:8181/home#
- cpotato http://10.0.0.108:5050/
- sonarr http://10.0.0.108:8989

