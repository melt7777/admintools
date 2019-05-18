# Instructions:

## Installing media server tools and pi-hole on linux mint / ubuntu

First, update system, and then install packages and deps.
This is for Deluge, Sonarr, Couchpotato, Tautulli. Plex runs on another server. Pi-hole runs in its own VM.

```
sudo apt update; sudo apt upgrade -y
sync
reboot
sudo apt install deluged deluge-console deluge-webui
sudo su -
nano 
sudo nano /etc/passwd
sudo su debian-deluged -

# run as debian-deluged:
deluged
deluge-console
# settings -s AllowRemote true or something like that.

sudo nano /var/lib/deluged/.config/deluge/auth
# add melt:password:10

# copy in the service files for deluged and sonarr

sudo systemctl start deluged
sudo su debian-deluged deluged

sudo su debian-deluged deluge-web --fork
# login webui ip:8112 and change the webui password, and then connect it to your deluged server using deluged melt:password and the deluged ip:58846

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xA236C58F409091A18ACA53CBEBFF6B99D9B78493
echo "deb http://apt.sonarr.tv/ master main" | sudo tee /etc/apt/sources.list.d/sonarr.list
sudo apt update
sudo apt install nzbdrone
sudo adduser sonarr
sudo su sonarr -
sudo systemctl enable sonarr.service
sudo systemctl start sonarr.service
# or manual run: screen -d -m -S sonarr mono --debug /opt/NzbDrone/NzbDrone.exe

sudo addgroup tautulli && sudo adduser --system --no-create-home tautulli --ingroup tautulli
sudo apt-get install python python-setuptools tzdata
cd /opt
sudo git clone https://github.com/Tautulli/Tautulli.git
sudo mkdir /opt/Tautulli/mydata
sudo chown tautulli:tautulli -R /opt/Tautulli
cd Tautulli
sudo su tautulli python Tautulli.py
cd /etc/systemd/system
sudo nano tautulli.service
update-rc.d tautulli defaults     
service tautulli start
```

Jackett

Download and extract the latest Jackett.Binaries.LinuxAMDx64.tar.gz release from the releases page and run Jackett with the command ./jackett
(Optional) To install Jackett as a service, open the Terminal and run sudo ./install_service_systemd.sh You need root permissions to install the service. The service will start on each logon. You can always stop it by running systemctl stop jackett.service from Terminal. You can start it again it using systemctl start jackett.service. Logs are stored as usual under ~/.config/Jackett/log.txt and also in journalctl -u jackett.service.


Adding a Jackett indexer in Sonarr or Radarr
Go to Settings > Indexers > Add > Torznab > Custom.
Click on the indexers corresponding  button and paste it into the Sonarr/Radarr URL field.
For the API key use redacted.
Configure the correct category IDs via the (Anime) Categories options. See the Jackett indexer configuration for a list of supported categories.
Adding a Jackett indexer in CouchPotato
Go to Settings > Searchers.
Enable TorrentPotato.
Click on the indexers corresponding  button and paste it into the CouchPotato host field.
For the Passkey use [redacted]. Leave the username field blank.

Ports used

deluged on 58846
vnc on 5900
jackett http://10.0.0.8:9117/UI/Dashboard 
tautulli http://10.0.0.8:8181/home#
cpotato http://10.0.0.8:5050/
sonarr http://10.0.0.8:8989
pi-hole http://10.0.0.140/admin/ in scope in port 80 

