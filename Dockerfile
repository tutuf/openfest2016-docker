FROM ruby:latest
MAINTAINER Gerasim Stanchev gero@tutuf.com

ENV RUBY_USER="ruby" \
    APP_PATH="/ofapp" \
    RAILS_ENV="development"

RUN mkdir $APP_PATH
WORKDIR $APP_PATH
RUN apt-get update &&\
    apt-get install -y gcc-4.9 build-essential nodejs vim imagemagick libmagic-dev libmagickwand-dev
ADD Gemfile $APP_PATH/Gemfile
ADD Gemfile.lock $APP_PATH/Gemfile.lock
RUN bundle install

RUN rails new . --force
RUN echo "Rails.application.routes.draw { root('welcome#index') }" > ${APP_PATH}/config/routes.rb
ADD compose.png $APP_PATH/public/compose.png
