FROM ruby:2.5.7
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    yarn
WORKDIR /joycamp
COPY Gemfile Gemfile.lock /joycamp/
RUN bundle install
