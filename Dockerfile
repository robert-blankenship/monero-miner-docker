FROM ubuntu:14.04.5

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y autotools-dev
RUN apt-get install -y automake
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y make
RUN git clone https://github.com/OhGodAPet/cpuminer-multi /root/cpuminer-multi
WORKDIR /root/cpuminer-multi
RUN ./autogen.sh
RUN ./configure CFLAGS="-march=native"
RUN make

WORKDIR /root
ADD monero.sh .
RUN chmod +x monero.sh

