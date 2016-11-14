FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev
RUN gem install gollum
RUN gem install github-markdown org-ruby

RUN gem install gollum-lib github-markdown

VOLUME /wiki
WORKDIR /wiki
CMD ["gollum", "--port", "4567", "--config", "/wiki/config.rb", "--css", "--js"]
EXPOSE 4567
