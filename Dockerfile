FROM ruby:3.0.2

RUN apt-get update && apt-get install -y nodejs

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install