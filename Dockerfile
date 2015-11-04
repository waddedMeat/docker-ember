FROM node:4.2.1

MAINTAINER waddedmeat@gmail.com

# install npm packages
RUN npm install -g gulp
RUN npm install -g bower
RUN npm install -g ember-cli
RUN npm install -g phantomjs

RUN cd /usr/local/src; \
    git clone --depth 1 --branch v3.0.0 https://github.com/facebook/watchman.git; \
    cd watchman; \
    ./autogen.sh; \
    ./configure; \
    make; \
    make install; \
	cd ..; \
	rm -rf watchman;

EXPOSE 4200
EXPOSE 35729
