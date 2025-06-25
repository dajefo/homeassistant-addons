#!/bin/bash
echo "Starte OpenEMS Edge…"
exec java -jar /opt/openems/edge/openems-edge.jar \
  -Dfelix.cm.dir=/etc/openems.d \
  -Dopenems.data.dir=/var/lib/openems
