# ruby for the win

### Project setup

Install Ruby: https://www.ruby-lang.org/en/documentation/installation/

Clone Github repo
```
$ git clone https://github.com/EllieHamilton/ruby_for_the_win
$ cd ruby_for_the_win
$ gem install bundler
$ bundle install
```

### Database setup

Install Postgresql: http://www.russbrooks.com/2010/11/25/install-postgresql-9-on-os-x

Create a database user:
```
$ psql
> CREATE ROLE spongebob WITH LOGIN PASSWORD 'password';
> ALTER ROLE spongebob CREATEDB;
> \q
$ bundle exec rake db:setup
```

### Running tests

To run unit and integration tests run:
```
$ bundle exec rspec
```
To run the code linter run:
```
$ bundle exec rubocop
```

### Running the server locally

Run:
```
$ bundle exec shotgun
```
then navigate your web browser to `localhost:9393`
