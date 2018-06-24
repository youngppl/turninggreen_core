FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /turninggreen
WORKDIR /turninggreen
COPY Gemfile /turninggreen/Gemfile
COPY Gemfile.lock /turninggreen/Gemfile.lock
RUN bundle install
COPY . /turninggreen
