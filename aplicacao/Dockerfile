FROM --platform=linux/amd64 ruby:3.0.0 

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /code 

COPY Gemfile /code/Gemfile 
COPY Gemfile.lock /code/Gemfile.lock 
RUN bundle install 

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
