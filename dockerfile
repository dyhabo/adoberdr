FROM ubuntu

RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get -y install sudo \
  && rm -rf /var/lib/apt/lists/*
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
CMD /bin/bash
RUN wget -O ~/adobe.deb ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb
RUN sudo dpkg --add-architecture i386
RUN sudo apt-get update
RUN sudo apt install libxml2:i386 -y \
	&& sudo apt install libcanberra-gtk-module:i386 -y \
	&& sudo apt install gtk2-engines-murrine:i386 -y \
	&& sudo apt install libatk-adaptor:i386 -y
RUN sudo dpkg -i ~/adobe.deb

CMD acroread