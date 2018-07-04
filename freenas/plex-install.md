


## install plex via portsnap

```
pkg install pkg
pkg update
portsnap fetch extract
pkg update
pkg upgrade
cd /usr/ports/multimedia/plexmediaserver
make install clean
echo plexmediaserver_enable="YES" >> /etc/rc.conf
service plexmediaserver start
```

## install plexpy via git clone and manual install

```    
pkg install python2 databases/py-sqlite3 security/py-openssl security/ca_root_nss git
cd usr/local/share
git clone https://github.com/Jonnywong16/plexpy.git
cp /usr/local/share/plexpy/init-scripts/init.freenas /etc/rc.d/plexpy
chmod 777 /etc/rc.d/plexpy
edit /etc/rc.d/plexpy
sysrc plexpy_enable="YES"
service plexpy start
edit /etc/rc.d/plexpy
sysrc root_enable="YES"
service plexpy start
set sysctl net.inet6.ip6.v6only=0
nano /etc/rc.conf
```

## how to manually exit plex preferences file

```
cd /var/db/plex
cd usr/local/plexdata/
cd Plex\ Media\ Server/
cp Preferences.xml Preferences.xml.back
nano Preferences.xml
service plexmediaserver start
```
