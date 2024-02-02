FROM ruby:2.6.3-alpine

RUN mkdir /rootup
WORKDIR /rootup

RUN apk update && apk upgrade
RUN apk add nodejs postgresql-client build-base postgresql-dev gcompat

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

COPY . .
RUN gem install bundler -v 2.4.22
RUN bundle config set --local without 'development test'
RUN bundle lock --add-platform x86_64-linux
RUN bundle install

RUN bundle exec rake DATABASE_URL=postgresql:does_not_exist assets:precompile

EXPOSE 3000
CMD bundle exec rails server
