FROM node:0.12.2

MAINTAINER waddedmeat@gmail.com

# install npm packages
RUN npm install -g gulp
RUN npm install -g bower
RUN npm install -g ember-cli
RUN npm install -g phantomjs

RUN cd /usr/local/src; \
    git clone --depth 1 https://github.com/facebook/watchman.git; \
    cd watchman; \
    ./autogen.sh; \
    ./configure; \
    make; \
    make install

EXPOSE 4200
EXPOSE 35729
