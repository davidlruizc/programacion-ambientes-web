FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /taller_tres
WORKDIR /taller_tres
COPY Gemfile /taller_tres/Gemfile
COPY Gemfile.lock /taller_tres/Gemfile.lock
RUN bundle install
COPY . /taller_tres

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]