FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /smartcanvas/src 

RUN apt-get update \
        && apt-get install -y -qq --no-install-recommends \ 
		gcc \
		g++ \
		make \
		libssl-dev \
		git \ 
		build-essential \ 
		libavahi-compat-libdnssd-dev \
        wget \
        curl \
        unzip \
        python \
		nodejs \ 
		nodejs-legacy \
		npm \
		ssh-keygen \
		ssh-agent \ 
		ssh-add \
		checkinstall \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

RUN rm -rf ~/.npm

RUN npm config set registry http://registry.npmjs.org/

RUN npm install -g gulp bower		
		
WORKDIR /smartcanvas/src


EXPOSE 3000
EXPOSE 5000
EXPOSE 8080
EXPOSE 9999