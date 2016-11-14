FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev
RUN gem install gollum
RUN gem install github-markdown org-ruby

RUN gem install gollum-lib

ENTRYPOINT ["gollum"]
