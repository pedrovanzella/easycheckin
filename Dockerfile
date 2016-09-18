FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /opt/easycheckin
WORKDIR /opt/easycheckin
ADD Gemfile /opt/easycheckin/Gemfile
ADD Gemfile.lock /opt/easycheckin/Gemfile
RUN bundle install
ADD . /opt/easycheckin