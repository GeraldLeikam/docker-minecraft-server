FROM drezael/ubuntu:20.04
RUN apt install -y openjdk-17-jre-headless
RUN mkdir /minecraft_server
RUN mkdir /server_binary
RUN wget https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar -O /server_binary/server.jar
COPY ./scripts/startup.sh /run
CMD /bin/bash /run/startup.sh