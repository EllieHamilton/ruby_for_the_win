FROM ruby:2.4.1

RUN gem install bundler

WORKDIR /var/app/
COPY Gemfile ./

RUN bundle install
COPY / ./

EXPOSE 9393

CMD echo $(pwd) && bundle exec shotgun
