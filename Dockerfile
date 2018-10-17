FROM ubuntu:latest

RUN cd /root && apt-get update && apt-get -y install curl unzip && curl -O https://minecraft.azureedge.net/bin-linux/bedrock-server-1.7.0.13.zip && unzip bedrock-server-1.7.0.13.zip -d mc && rm bedrock-server-1.7.0.13.zip
ENV LD_LIBRARY_PATH=/root/mc
WORKDIR /root/mc
CMD ["./bedrock_server"]
