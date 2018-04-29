FROM ruby:2.3
#docker run -it ruby:2.3 /bin/bash

RUN set -x && \
  cd /usr/local \
  git clone git://github.com/seser1/net-test.git \
  cd net-test \
  bundle install \
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]