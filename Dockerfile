FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /micro-log
WORKDIR /micro-log

COPY Gemfile /micro-log/Gemfile
COPY Gemfile.lock /micro-log/Gemfile.lock

RUN bundle install

COPY . /micro-log