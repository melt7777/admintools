#!/bin/sh
#
# Place this in /conf/base/etc/
# Call: sh esmart.sh

echo "To: melt@getpimp.org" > /var/cover
echo "Subject: [uzi] SMART Drive Results for all drives" >> /var/cover
echo "    " >> /var/cover

echo " --------------------------- DETAIL ------------------------------ " >> /var/cover
echo " ******* drive: da0 *******" >> /var/cover
smartctl -i -H -A -n standby -l error /dev/da0 >> /var/cover
echo " ******* drive: da1 *******" >> /var/cover
smartctl -i -H -A -n standby -l error /dev/da1 >> /var/cover
echo " ******* drive: da2 *******" >> /var/cover
smartctl -i -H -A -n standby -l error /dev/da2 >> /var/cover
echo " ******* drive: da3 *******" >> /var/cover
smartctl -i -H -A -n standby -l error /dev/da3 >> /var/cover
echo " ******* drive: da4 *******" >> /var/cover
smartctl -i -H -A -n standby -l error /dev/da4 >> /var/cover
echo " ******* drive: da5 *******" >> /var/cover
smartctl -i -H -A -n standby -l error /dev/da5 >> /var/cover
echo " ******* drive: da6 *******" >> /var/cover
smartctl -i -H -A -n standby -l error /dev/da6 >> /var/cover

sendmail -t < /var/cover
exit 0
 
# Set idle mode to so it doesn't spin up.
# Options -n standby
# -i = Device Info
# -H = Device Health
# -A = Only Vendor specific SMART attributes
# -l error = SMART Error Log
 
