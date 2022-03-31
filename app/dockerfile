FROM ruby:3.0.3

RUN mkdir app
WORKDIR /app
EXPOSE 4567

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

COPY . /app

ENTRYPOINT ruby ./app/clinickr_app.rb
