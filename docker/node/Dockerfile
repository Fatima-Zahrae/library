FROM node

RUN npm install -g npm@latest
RUN npm install react-scripts@3.4.1 -g --silent

RUN mkdir -p /usr/src/cache
WORKDIR /usr/src/cache

COPY package.json ./
COPY package-lock.json ./

RUN apt update
RUN apt install git
RUN npm install


RUN mkdir -p /var/www/html/
ADD . /var/www/html/
WORKDIR /var/www/html/

ENTRYPOINT ["/var/www/html/docker/node/entrypoint.sh"]
