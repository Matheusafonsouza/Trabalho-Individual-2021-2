FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /code

ADD Gemfile /code/Gemfile
ADD Gemfile.lock /code/Gemfile.lock
RUN bundle install

ADD . /code/
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
