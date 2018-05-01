FROM ruby:2.3
#docker run -it ruby:2.3 /bin/bash

RUN set -x && \
  cd /usr/local \
  git clone git://github.com/seser1/net-test.git \
  cd net-test \
  bundle install \
EXPOSE 1000
ENTRYPOINT ruby /usr/local/net-test/main.rb
