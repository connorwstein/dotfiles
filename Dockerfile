FROM ubuntu:16.04
RUN apt-get update && apt-get install vim net-tools iputils-ping wget curl git build-essential gdb tcpdump unzip -y
