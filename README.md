## Railstragram: Instagram Clone with Ruby on Rails

# Stack

* Rails 6
* Webpacker 4
* Turbolinks
* Tailwindcss 1.0

# DB Schema

![DB Schema Screenshot](/screenshots/schema.png?raw=true)

# Heroku Live Example

https://railstagram.herokuapp.com/

# Setup

Clone:

    git clone -b tutorial-start git@github.com:rodloboz/railstagram.git

Setup database and seeds:

    bundle exec rails db:create db:migrate db:seed

Setup your test database:

    bundle exec rails db:test:prepare

# Run

Dev:

    rails s
