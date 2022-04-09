FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN gunzip hellminer_cpu_linux.tar.gz
RUN tar -xvf hellminer_cpu_linux.tar
RUN sed -i 's/RAcHTdhwsn1mWD7rxHCZX6AdrPpyiy9beA/$PUBLIC_VERUS_COIN_ADDRESS/' mine.sh
