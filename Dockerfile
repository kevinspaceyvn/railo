FROM ubuntu:trusty

MAINTAINER Setadev03 <seta.dev03@gmail.com>

RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get install build-essential apache2 sun-java6-jdk apache2-threaded-dev

ADD 
RUN cd /opt
RUN sudo tar -xf ~/railo-3.0.2.001-resin-3.1.2-without-jre.tar.gz








RUN wget www.getrailo.org/down.cfm?item=/railo/remote/download42/4.2.1.000/tomcat/linux/railo-4.2.1.000-pl2-linux-installer.run -O install-railo.run
RUN sudo chmod 744 install-railo.run
RUN sudo ./install-railo.run

# get the railo tomcat installer
RUN wget http://www.getrailo.org/down.cfm?item=/railo/remote/download/3.3.1.000/tomcat/linux/railo-3.3.1.000-pl1-linux-x64-installer.run -O railo-3.3.1.000-pl1-linux-x64-installer.run
# make it executable
RUN sudo chmod +x railo-3.3.1.000-pl1-linux-x64-installer.run
#run the installer
RUN sudo ./railo-3.3.1.000-pl1-linux-x64-installer.run
