FROM ruby:3.2.2-alpine

RUN apk update && apk upgrade && apk add --update --no-cache \
    binutils-gold \
    build-base \
    curl \
    file \
    g++ \
    gcc \
    git \
    less \
    libstdc++ \
    libffi-dev \
    libc-dev \
    linux-headers \
    libxml2-dev \
    libxslt-dev \
    libgcrypt-dev \
    make \
    netcat-openbsd \
    nodejs \
    openssl \
    pkgconfig \
    postgresql-dev \
    tzdata \
    yarn \
    libpq \
    gcompat
RUN gem install bundler -v 2.4.13
RUN gem install rails -v 7.0.5

WORKDIR /app
COPY Gemfile Gemfile.lock ./

RUN bundle check || bundle install

COPY . ./


ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
