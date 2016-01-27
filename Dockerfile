FROM debian:jessie

ADD http://www.mersenne.org/ftp_root/gimps/p95v287.linux64.tar.gz p95v287.linux32.tar.gz 


RUN mkdir -p /gimps
RUN tar -zxvf p95v287.linux32.tar.gz -C /gimps

ADD local.txt /gimps/local.txt

ENTRYPOINT ./gimps/mprime


#    docker build -t gimps_mprime .
#    docker run -it gimps_mprime
