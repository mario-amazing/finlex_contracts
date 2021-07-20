FROM ruby:3.0.1-alpine

ARG HISTFILE='/root/bash/.bash_history'
RUN mkdir -p $(dirname $HISTFILE)
RUN touch $HISTFILE

ARG BUNDLE_VERSION='2.2.15'

ARG APP_PATH
ENV APP_PATH=${APP_PATH}

RUN apk add --no-cache build-base nodejs python2 postgresql-dev yarn vim tzdata bash imagemagick less
WORKDIR $APP_PATH

RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc"
RUN gem install --default bundler:$BUNDLE_VERSION

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle check || bundle install --jobs "$(getconf _NPROCESSORS_ONLN)" --retry 5

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]
