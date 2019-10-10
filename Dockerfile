FROM ruby:2.6.3
ENV LANG C.UTF-8

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
                          nodejs \
                          libpq-dev \
                          postgresql-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME

EXPOSE 3000
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]
