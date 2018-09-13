    ### How to install Sickrage the fastest and easiest way
    ### Starting with a fresh jail on freenas 11.1-U2
    
    Notes: Using FreeNAS GUI Plugin installs results in broken, non-updateable jails. Always build from source where possible, it will save you heartache in the long run. 
    
    # Update system
    pkg lock sqlite3
    pkg upgrade
    
    # Install deps
    pkg install py27-sqlite3 node
    
    # These were not needed
    # portsnap fetch
    # portsnap extract
    
    # Install Sickrage
    cd /usr/local
    git clone https://github.com/SickRage/SickRage.git sickrage
    chown -R media:media sickrage/
    cp /usr/local/sickrage/runscripts/init.freebsd /usr/local/etc/rc.d/sickrage
    sysrc sickrage_enable=YES
    sysrc sickrage_user=media
    sysrc sickrage_group=media
    
    # Restore backup 
    scp root@10.0.0.8:~/sickrage-20180912152554.zip /tmp
    chown media:media /tmp/sickrage-20180912152554.zip
    
    # Start it
    service sickrage start
