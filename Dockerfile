FROM ruby:latest
MAINTAINER Gerasim Stanchev gero@tutuf.com

ENV RUBY_USER="ruby" \
    APP_PATH="/ofapp" \
    RAILS_ENV="development"
