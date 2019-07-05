#!/bin/sh
# Work & Data directory
DIR="/opt/awsdns"

cd ${DIR}

# Hosted Zone ID or the Domain to manage in AWS
ZONEID="zoneIDBLABLA"

# The CNAME you want to update e.g. hello.example.com
RECORDSET="your.domain.com."
TTL=300
COMMENT="Auto updating @ `date`"
# Change to AAAA if using an IPv6 address
TYPE="A"

# Get WAN IP
IP="`ifconfig eth0 | awk '/inet addr/{split($2,tary,":");print tary[2];}'`"

LOGFILE="$DIR/update-route53.log"
IPFILE="$DIR/update-route53.ip"

# Check if the IP has changed
if [ ! -f "$IPFILE" ]
then
    touch "$IPFILE"
fi

if grep -Fxq "$IP" "$IPFILE"
then
    echo "IP is still $IP. Exiting" >> "$LOGFILE"
    exit 0
else
    echo "IP has changed to $IP" >> "$LOGFILE"
    # Fill a temp file with valid JSON
    TMPFILE=${DIR}/awsdns.json
    cat > ${TMPFILE} << EOF
    {
      "Comment":"$COMMENT",
      "Changes":[
        {
          "Action":"UPSERT",
          "ResourceRecordSet":{
            "ResourceRecords":[
              {
                "Value":"$IP"
              }
            ],
            "Name":"$RECORDSET",
            "Type":"$TYPE",
            "TTL":300
          }
        }
      ]
    }
EOF

    # Update the Hosted Zone record
    aws route53 change-resource-record-sets \
        --hosted-zone-id $ZONEID \
        --change-batch file://"$TMPFILE" >> "$LOGFILE"
    echo "" >> "$LOGFILE"

fi

# All Done - cache the IP address for next time
echo "$IP" > "$IPFILE"
