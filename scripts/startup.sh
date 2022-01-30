#!/bin/bash
if [ -z "$(ls -A /minecraft_server)" ]
then
  echo "zweig 1"
  /bin/sh -c "cd /minecraft_server
  /usr/bin/java -Xmx1G -jar /server_binary/server.jar --nogui --universe /minecraft_server && \
  sed -i 's/false/true/g' /minecraft_server/eula.txt && \
  /usr/bin/java -Xmx1G -jar /server_binary/server.jar --nogui --universe /minecraft_server"
else
  echo "zweig 2"
  /bin/sh -c "/usr/bin/java -Xmx1G -jar /server_binary/server.jar --nogui --universe /minecraft_server"
fi

