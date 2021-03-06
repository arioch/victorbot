FROM phusion/passenger-ruby24

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app
COPY Gemfile.lock /usr/src/app
RUN bundle install

COPY . /usr/src/app

CMD ["bundle", "exec", "foreman", "start"]
